import 'package:flutter/material.dart';
import 'package:rick/theme/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Settings',
            style: AppTextStyles.s15W400(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
