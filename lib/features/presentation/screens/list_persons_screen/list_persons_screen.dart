import 'package:flutter/material.dart';
import 'package:rick_test/core/constants/text_consts.dart';
import 'package:rick_test/features/data/models/info/info.dart';
import 'package:rick_test/features/data/models/list_persons_model/result_preson.dart';
import 'package:rick_test/features/data/usecase/persons_usecase.dart';
import 'package:rick_test/features/presentation/bloc/persons_cubit/persons_cubit.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/widgets/filter_button.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/widgets/filter_info_funcs.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/widgets/info_persons_widget.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/widgets/scroll_persons_widget.dart';
import 'package:rick_test/features/presentation/widgets/circule_avatar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_test/theme/colors.dart';
import 'package:rick_test/theme/text_styles.dart';

class PersonsScreen extends StatefulWidget {
  const PersonsScreen({Key? key}) : super(key: key);

  @override
  State<PersonsScreen> createState() => _PersonsScreenState();
}

class _PersonsScreenState extends State<PersonsScreen> {
  ScrollController _scrollController = ScrollController();
  TextEditingController textController = TextEditingController();
  int currentPage = 1;
  List<ResultPerson> resultPersons = [];
  Info info = Info();
  final bloc = PersonsCubit(PersonsUseCase());

  ValueNotifier<bool> changeScreen = ValueNotifier(true);
  ValueNotifier<bool> isLoadingPersons = ValueNotifier(false);

  bool getAllPersons = false;
  bool _expanded = false;

  ValueNotifier<bool> isAlive = ValueNotifier(false);
  ValueNotifier<bool> dead = ValueNotifier(false);
  ValueNotifier<bool> unknownStatus = ValueNotifier(false);

  ValueNotifier<bool> female = ValueNotifier(false);
  ValueNotifier<bool> male = ValueNotifier(false);
  ValueNotifier<bool> genderless = ValueNotifier(false);
  ValueNotifier<bool> unknownGender = ValueNotifier(false);

  String name = "";

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      currentPage = currentPage + 1;
      isLoadingPersons.value = true;
      getAllPersons == false
          ? bloc.getPersons(
              page: currentPage,
              name: name,
              status:
                  statusInfo(isAlive.value, dead.value, unknownStatus.value),
              gender: genderInfo(female.value, male.value, genderless.value,
                  unknownGender.value),
            )
          : () {};
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
    bloc.getPersons(
      page: currentPage,
      name: "",
      status: "",
      gender: "",
    );

    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(TextConsts.persons),
        ),
        body: BlocListener<PersonsCubit, PersonsState>(
          listener: (context, state) {
            state.maybeWhen(
                errorPersonsState: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(message.message),
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {},
                    ),
                  ));
                  changeScreen.value = false;
                },
                loadedPersonsState: (data) {
                  if (data.results!.length < 20) {
                    getAllPersons = true;
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text(TextConsts.allPersonsLoaded),
                      duration: const Duration(seconds: 3),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    ));
                  } else {
                    () {};
                  }
                  resultPersons.addAll(data.results ?? [ResultPerson()]);
                  info = data.info ?? Info(count: 0, pages: 0);
                  changeScreen.value = false;
                  isLoadingPersons.value = false;
                },
                orElse: () {});
          },
          child: ValueListenableBuilder(
            valueListenable: changeScreen,
            builder: (context, value, child) => changeScreen.value
                ? const CurcularAvatar()
                : resultPersons.isNotEmpty
                    ? ValueListenableBuilder(
                        valueListenable: isLoadingPersons,
                        builder: (context, value, child) => Column(
                          children: [
                            ExpansionPanelList.radio(
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              children: [
                                ExpansionPanelRadio(
                                  value: 1,
                                  headerBuilder: (context, isExpanded) {
                                    return const ListTile(
                                      title: Text(TextConsts.filterByName),
                                    );
                                  },
                                  body: Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 150,
                                    child: Column(
                                      children: [
                                        const Text(TextConsts.name),
                                        const SizedBox(height: 10),
                                        TextFormField(
                                          controller: textController,
                                          decoration: InputDecoration(
                                            hintText: 'Enter name',
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: const BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                                width: 2.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              name = textController.text;
                                              filterFunc();
                                            },
                                            child:
                                                const Text(TextConsts.search))
                                      ],
                                    ),
                                  ),
                                  canTapOnHeader: true,
                                ),
                                ExpansionPanelRadio(
                                  value: 2,
                                  headerBuilder: (context, isExpanded) {
                                    return const ListTile(
                                      title: Text(TextConsts.filter),
                                    );
                                  },
                                  body: Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(TextConsts.status),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FilterButton(
                                                valueList: isAlive,
                                                filterBool: isAlive.value,
                                                titleButton: TextConsts.alive,
                                                onPressed: () {
                                                  dead.value = false;
                                                  unknownStatus.value = false;
                                                  isAlive.value =
                                                      !isAlive.value;
                                                  filterFunc();
                                                }),
                                            FilterButton(
                                                valueList: dead,
                                                filterBool: dead.value,
                                                titleButton: TextConsts.dead,
                                                onPressed: () {
                                                  isAlive.value = false;
                                                  unknownStatus.value = false;
                                                  dead.value = !dead.value;
                                                  filterFunc();
                                                }),
                                            FilterButton(
                                                valueList: unknownStatus,
                                                filterBool: unknownStatus.value,
                                                titleButton: TextConsts.unknown,
                                                onPressed: () {
                                                  dead.value = false;
                                                  isAlive.value = false;
                                                  unknownStatus.value =
                                                      !unknownStatus.value;
                                                  filterFunc();
                                                }),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(TextConsts.gender),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FilterButton(
                                                valueList: female,
                                                filterBool: female.value,
                                                titleButton: TextConsts.female,
                                                onPressed: () {
                                                  male.value = false;
                                                  genderless.value = false;
                                                  unknownGender.value = false;
                                                  female.value = !female.value;
                                                  filterFunc();
                                                }),
                                            FilterButton(
                                                valueList: male,
                                                filterBool: male.value,
                                                titleButton: TextConsts.male,
                                                onPressed: () {
                                                  female.value = false;
                                                  genderless.value = false;
                                                  unknownGender.value = false;
                                                  male.value = !male.value;
                                                  filterFunc();
                                                }),
                                            FilterButton(
                                                valueList: genderless,
                                                filterBool: genderless.value,
                                                titleButton:
                                                    TextConsts.genderless,
                                                onPressed: () {
                                                  female.value = false;
                                                  male.value = false;
                                                  unknownGender.value = false;
                                                  genderless.value =
                                                      !genderless.value;
                                                  filterFunc();
                                                }),
                                            FilterButton(
                                                valueList: unknownGender,
                                                filterBool: unknownGender.value,
                                                titleButton: TextConsts.unknown,
                                                onPressed: () {
                                                  female.value = false;
                                                  male.value = false;
                                                  genderless.value = false;
                                                  unknownGender.value =
                                                      !unknownGender.value;
                                                  filterFunc();
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  canTapOnHeader: true,
                                ),
                              ],
                            ),
                            InfoPersonsWidget(info: info),
                            ScrollPersons(
                                scrollController: _scrollController,
                                resultPersons: resultPersons,
                                isLoadingPersons: isLoadingPersons,
                                getAllPersons: getAllPersons),
                          ],
                        ),
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              TextConsts.notFound,
                              style: AppTextStyles.errorNotFoud,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  name = "";
                                  filterFunc();
                                },
                                child: const Text("Обновить"))
                          ],
                        ),
                      ),
          ),
        ),
      ),
    );
  }

  filterFunc() {
    currentPage = 1;
    bloc.getPersons(
      page: currentPage,
      name: name,
      status: statusInfo(isAlive.value, dead.value, unknownStatus.value),
      gender: genderInfo(
          female.value, male.value, genderless.value, unknownGender.value),
    );
    changeScreen.value = !changeScreen.value;
    resultPersons.clear();
  }
}
