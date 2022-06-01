import 'package:flutter/material.dart';
import 'package:rick_test/features/data/models/info/info.dart';

class InfoPersonsWidget extends StatelessWidget {
  const InfoPersonsWidget({
    Key? key,
    required this.info,
  }) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("count: ${info.count}"),
          Text("pages: ${info.pages}"),
        ],
      ),
    );
  }
}
