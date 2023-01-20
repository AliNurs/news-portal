// ignore_for_file: sort_child_properties_last

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/features/register/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:megalab/features/widgets/app_button.dart';
import 'package:megalab/features/widgets/app_template_container.dart';
import 'package:megalab/features/widgets/app_text_field.dart';
import 'package:megalab/service_locator.dart';
import 'package:megalab/utils/extension/extension.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final isVisible = ValueNotifier<bool>(true);
  final formKey = GlobalKey<FormState>();

  // late TextEditingController? lastName;
  // late TextEditingController name;
  // late TextEditingController nickname;
  // late TextEditingController password;
  // late TextEditingController confirmPassword;

  final lastName = TextEditingController();
  final name = TextEditingController();
  final nickname = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  // lastName = TextEditingController();
  // name = TextEditingController();
  // nickname = TextEditingController();
  // password = TextEditingController();
  // confirmPassword = TextEditingController();
  // }

  final bloc = sl<RegisterBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppTemplateContainer(
// Todo maybe extension notRight (context.size) give Eror
        size: MediaQuery.of(context).size,
        child: BlocProvider(
          create: (context) => bloc,
          child: BlocListener<RegisterBloc, RegisterState>(
            listener: (context, state) {
              state.whenOrNull(
                succes: () {
                  log('Succes Registrated');
                  return context.router.push(const AuthorizationScreenRoute());
                },
                loading: () {
                  log('Loading Registrated');
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                error: () {
                  log('Error Registrated');
                  return const AlertDialog(
                    content: Center(child: Text('Errrorr')),
                  );
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(AppSvgs.logoMegalab,
                      color: context.colors.buttonLogo7E5BC2),
                ),
                const SizedBox(height: 31),
                Text(
                  Language.of(context).surname,
                  style: AppTextStyles.w400size16
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                AppTextField(
                  controller: lastName,
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
                        //todo ? visiblePassword
                        inputType: TextInputType.visiblePassword,
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
                            bloc.add(
                              RegisterEvents.sendRegisterData(
                                nickname: nickname.text,
                                name: name.text,
                                lastName: lastName.text,
                                password: password.text,
                                confirmPassword: confirmPassword.text,
                              ),
                            );
                            // formKey.currentState?.validate();

                            context.router
                                .push(const AuthorizationScreenRoute());
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
                              style: AppTextStyles.w400size12.copyWith(
                                  color: context.colors.textBlue2D4EC2),
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
    lastName.dispose();
    name.dispose();
    nickname.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
