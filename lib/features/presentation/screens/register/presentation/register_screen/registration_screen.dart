// ignore_for_file: sort_child_properties_last

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/features/presentation/screens/widgets/app_button.dart';
import 'package:megalab/features/presentation/screens/widgets/app_text_field.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/features/presentation/widgets/app_template_container.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final isVisible = ValueNotifier<bool>(true);
  final formKey = GlobalKey<FormState>();

  late TextEditingController surname;
  late TextEditingController name;
  late TextEditingController nickname;
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  void initState() {
    super.initState();
    surname = TextEditingController();
    name = TextEditingController();
    nickname = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppTemplateContainer(
        size: context.size!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(AppSvgs.logoMegalab,
                  color: Colors.deepPurple),
            ),
            const SizedBox(height: 31),
            Text(
              Language.of(context).surname,
              style: AppTextStyles.w400size16
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: surname,
            ),
            const SizedBox(height: 16),
            Text(
              Language.of(context).name,
              style: AppTextStyles.w400size16
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: name,
            ),
            const SizedBox(height: 16),
            Text(
              Language.of(context).nickname,
              style: AppTextStyles.w400size16
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: nickname,
            ),
            const SizedBox(height: 16),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Language.of(context).password,
                    style: AppTextStyles.w400size16
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  AppTextField(
                    maxLength: 12,
                    controller: password,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    Language.of(context).passwordConfirmation,
                    style: AppTextStyles.w400size16
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  ValueListenableBuilder(
                      valueListenable: isVisible,
                      builder: (context, _, __) {
                        return AppTextField(
                          suffixIcon: IconButton(
                            icon: isVisible.value == true
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () {},
                          ),
                          maxLength: 12,
                          controller: confirmPassword,
                        );
                      }),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 168,
                    height: 30,
                    child: AppButton(
                      onPressed: () {
                        // formKey.currentState?.validate();
                        log(surname.text);
                        log(name.text);
                        log(nickname.text);
                        log(password.text);
                        log(confirmPassword.text);

                        Navigator.pushNamed(context, '/second');
                      },
                      text: Language.of(context).registration,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Language.of(context).alreadyHaveLogin,
                        style: AppTextStyles.w400size12,
                      ),
                      TextButton(
                        child: Text(
                          Language.of(context).toComeIn,
                          style: AppTextStyles.w400size12
                              .copyWith(color: Colors.blue),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    surname.dispose();
    name.dispose();
    nickname.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
