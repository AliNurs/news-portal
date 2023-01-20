// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/utils/extension/extension.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.suffixIcon,
    this.maxLength,
    this.maxLines,
    required this.controller,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final TextEditingController controller;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.length < 6) {
          return Language.of(context).characterLimit;
        }
        return null;
      },
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: inputType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.colors.textFieldsDEDCE4,
            width: 1.0,
          ),
        ),
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.colors.textFieldsDEDCE4,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
