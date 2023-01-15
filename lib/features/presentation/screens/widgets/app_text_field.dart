// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/utils/extension/extension.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.suffixIcon,
    this.maxLength,
  }) : super(key: key);

  final Widget? suffixIcon;
  final maxLength;
  final TextEditingController? controller;

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
      maxLength: maxLength,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.colors.textFieldColor,
            width: 1.0,
          ),
        ),
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.colors.textFieldColor,
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
