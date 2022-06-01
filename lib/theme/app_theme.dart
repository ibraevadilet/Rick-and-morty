import 'package:flutter/material.dart';
import 'package:rick_test/theme/colors.dart';

class AppTheme {
  static final ThemeData theme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.mainColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainColor,
          unselectedItemColor: AppColors.grey,
          selectedItemColor: AppColors.white));
}
