import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_test/features/data/models/list_persons_model/result_preson.dart';
import 'package:rick_test/routes/routes.dart';
import 'package:rick_test/theme/colors.dart';
import 'package:intl/intl.dart';

class ListViewBuilderContainerWidget extends StatelessWidget {
  final ResultPerson model;
  const ListViewBuilderContainerWidget({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(
          DetailPersonScreenRoute(id: model.id ?? 1),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CachedNetworkImage(
                      imageUrl: model.image ??
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
                          Text(model.id.toString()),
                          Text(model.gender ?? "Gender"),
                          Text(model.status ?? "Status"),
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
