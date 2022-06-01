import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String errorText;
  const ErrorWidget({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}
