import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rick_test/core/constants/text_consts.dart';
import 'package:rick_test/features/data/usecase/person_id_usecase.dart';
import 'package:rick_test/features/presentation/bloc/detail_info_cubit/detailinfo_cubit.dart';
import 'package:rick_test/features/presentation/widgets/circule_avatar.dart';

class DetailPersonScreen extends StatelessWidget {
  final int id;
  const DetailPersonScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailinfoCubit(PersonFromIdUseCase())..getDetailInfoPerson(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(TextConsts.detailScreenAppBarTitle),
        ),
        body: BlocBuilder<DetailinfoCubit, DetailinfoState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => const CurcularAvatar(),
                loadingDetailInfoPerson: (_) => const CurcularAvatar(),
                errorDetailInfoPerson: (error) =>
                    ErrorWidget(error.meassage.message.toString()),
                loadedDetailInfoPerson: (data) => SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: CachedNetworkImage(
                                imageUrl: data.data.image ?? "imageUrl"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(data.data.name ?? "Name"),
                          const SizedBox(),
                          Text(data.data.status ?? "Status"),
                          const SizedBox(),
                          Text(data.data.species ?? "Species"),
                          const SizedBox(),
                          Text(data.data.gender ?? "Gender"),
                          const SizedBox(),
                          Text(DateFormat('dd.MM.yyyy')
                              .format(data.data.created ?? DateTime.now())),
                          const SizedBox(),
                        ],
                      ),
                    ));
          },
        ),
      ),
    );
  }
}
