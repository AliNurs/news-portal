// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/utils/extension/extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: context.colors.buttonLogo7E5BC2),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.w500size16,
      ),
    );
  }
}
