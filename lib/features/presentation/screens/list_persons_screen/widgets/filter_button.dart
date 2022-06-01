import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final ValueListenable valueList;
  bool filterBool;
  final String titleButton;
  final Function() onPressed;
  FilterButton(
      {Key? key,
      required this.valueList,
      required this.filterBool,
      required this.titleButton,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueList,
      builder: (context, value, child) => ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  filterBool ? Colors.green : Colors.blue)),
          onPressed: onPressed,
          child: Text(titleButton)),
    );
  }
}
