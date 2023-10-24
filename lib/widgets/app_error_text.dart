import 'package:flutter/material.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';
import 'package:rick/widgets/custom_button.dart';
import 'package:rick/widgets/spaces.dart';

class AppErrorText extends StatelessWidget {
  const AppErrorText({
    required this.error,
    this.onPress,
    Key? key,
  }) : super(key: key);
  final String error;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: getWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              error,
              style: AppTextStyles.s16W400(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            onPress != null
                ? CustomButton(
                    width: null,
                    text: 'Повторить попытку',
                    color: AppColors.colorLightBlue,
                    onPressed: onPress!,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
