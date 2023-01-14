// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';

import 'package:megalab/features/presentation/screens/widgets/app_button.dart';
import 'package:megalab/features/presentation/screens/widgets/app_text_field.dart';
import 'package:megalab/features/presentation/widgets/app_template_container.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

final TextEditingController nickname = TextEditingController();
final TextEditingController password = TextEditingController();

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final formsKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppTemplateContainer(
        size: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset('assets/svgs/logo_megalab.svg',
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
                    Navigator.pushNamed(context, '/');
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
