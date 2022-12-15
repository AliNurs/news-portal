import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/features/presentation/screens/widgets/app_button.dart';
import 'package:megalab/features/presentation/screens/widgets/app_text_field.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

final TextEditingController surname = TextEditingController();
final TextEditingController name = TextEditingController();
final TextEditingController nickname = TextEditingController();
final TextEditingController password = TextEditingController();
final TextEditingController confirmPassword = TextEditingController();

final formKey = GlobalKey<FormState>();

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 24),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 5,
                offset: Offset(3, 5),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset('assets/svgs/logo_megalab.svg',
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
                      AppTextField(
                        maxLength: 12,
                        controller: confirmPassword,
                      ),
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
