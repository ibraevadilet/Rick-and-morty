import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_test/features/data/models/list_episodes_model/result_episode.dart';
import 'package:rick_test/routes/routes.dart';
import 'package:rick_test/theme/colors.dart';
import 'package:intl/intl.dart';

class ListViewBuilderContainerWidgetEpisode extends StatelessWidget {
  final ResultEpisode model;
  const ListViewBuilderContainerWidgetEpisode({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(
          DetailEposdeScreenRoute(id: model.id ?? 1),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              color: AppColors.containerColor2,
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://rickandmortyapi.com/api/character/avatar/217.jpeg"),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(model.name ?? "Name"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(model.episode ?? "Episode"),
                          Text(model.airDate ?? "AirDate"),
                          Text(DateFormat('dd.MM.yyyy')
                              .format(model.created ?? DateTime.now()))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
