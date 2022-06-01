import 'package:flutter/material.dart';
import 'package:rick_test/features/data/models/list_persons_model/result_preson.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/widgets/listview_builder_container.dart';

class ScrollPersons extends StatelessWidget {
  const ScrollPersons({
    Key? key,
    required ScrollController scrollController,
    required this.resultPersons,
    required this.isLoadingPersons,
    required this.getAllPersons,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<ResultPerson> resultPersons;
  final ValueNotifier<bool> isLoadingPersons;
  final bool getAllPersons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          controller: _scrollController,
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: resultPersons.length,
                  itemBuilder: ((context, index) =>
                      ListViewBuilderContainerWidget(
                          model: resultPersons[index]))),
              isLoadingPersons.value && getAllPersons == false
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
