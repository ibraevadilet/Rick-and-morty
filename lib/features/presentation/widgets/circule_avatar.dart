import 'package:flutter/material.dart';
import 'package:rick_test/theme/colors.dart';

class CurcularAvatar extends StatelessWidget {
  const CurcularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.mainColor,
      ),
    );
  }
}
