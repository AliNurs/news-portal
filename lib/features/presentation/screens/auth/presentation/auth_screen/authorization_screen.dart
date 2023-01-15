// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/core/router/app_router.dart';

import 'package:megalab/features/presentation/screens/widgets/app_button.dart';
import 'package:megalab/features/presentation/screens/widgets/app_text_field.dart';
import 'package:megalab/features/presentation/widgets/app_template_container.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  late TextEditingController nickname;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    nickname = TextEditingController();
    password = TextEditingController();
  }

  final formsKey = GlobalKey<FormState>();
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
              key: formsKey,
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
                ],
              ),
            ),
            const SizedBox(height: 36),
            Center(
              child: SizedBox(
                width: 168,
                height: 30,
                child: AppButton(
                  onPressed: () {
                    formsKey.currentState?.validate();

                    context.router.push(
                      const RegistrationScreenRoute(),
                    );
                  },
                  text: Language.of(context).toComeIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nickname.dispose();
    password.dispose();
    super.dispose();
  }
}
