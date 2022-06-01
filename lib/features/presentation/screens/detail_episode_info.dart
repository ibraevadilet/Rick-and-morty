import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rick_test/core/constants/text_consts.dart';
import 'package:rick_test/features/data/usecase/episode_id_usecase.dart';
import 'package:rick_test/features/presentation/bloc/detail_episode_info_cubit/detailinfo_episode_cubit.dart';
import 'package:rick_test/features/presentation/widgets/circule_avatar.dart';

class DetailEposdeScreen extends StatelessWidget {
  final int id;
  const DetailEposdeScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailinfoEpisodeCubit(EpisodeFromIdUseCase())
        ..getDetailInfoEpisode(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(TextConsts.detailScreenAppBarTitle),
        ),
        body: BlocBuilder<DetailinfoEpisodeCubit, DetailinfoEpisodeState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => const CurcularAvatar(),
                loadingDetailInfoEpisode: (_) => const CurcularAvatar(),
                errorDetailInfoEpisode: (error) =>
                    ErrorWidget(error.meassage.message.toString()),
                loadedDetailInfoEpisode: (data) => SizedBox(
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
                                imageUrl:
                                    "https://episode.eu/wp-content/uploads/2020/04/logo-episode-zwart.jpg"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(data.data.name ?? "Name"),
                          const SizedBox(),
                          Text(data.data.episode ?? "Episode"),
                          const SizedBox(),
                          Text(data.data.airDate ?? "AirDate"),
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
