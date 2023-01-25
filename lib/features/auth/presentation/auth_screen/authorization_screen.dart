// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:megalab/features/widgets/app_button.dart';
import 'package:megalab/features/widgets/app_template_container.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/features/widgets/app_text_field.dart';
import 'package:megalab/service_locator.dart';
import 'package:megalab/utils/extension/extension.dart';
import 'dart:developer';

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
  final bloc = sl<AuthBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppTemplateContainer(
        // todo size: not apply context.size
        size: MediaQuery.of(context).size,
        child: BlocProvider.value(
          value: bloc,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                succes: (token) {
                  Future.delayed(const Duration(seconds: 5));
                  log('Succes Token $token');
                  context.router.push(
                    HomeScreenRoute(
                      token: token,
                      author: nickname.text,
                    ),
                  );
                },
                error: (errorText) {
                  return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Center(
                              child: Text(errorText ?? 'Error Auth Token')),
                        );
                      });
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                  child: Text('Succes'),
                ),
                initial: () {
                  return const Center(
                    child: Text('Initial'),
                  );
                },
                succes: (token) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(AppSvgs.logoMegalab,
                            color: context.colors.buttonLogo7E5BC2),
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
                              bloc.add(
                                AuthEvent.sendAuthData(
                                  nickname: nickname.text,
                                  password: password.text,
                                ),
                              );
                              // context.router.push(
                              //   HomeScreenRoute(
                              //       token: token, author: nickname.text),
                              // );
                            },
                            text: Language.of(context).toComeIn,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                error: (errorText) {
                  return Column(
                    children: [
                      Center(
                        child: Text(errorText ?? 'Error Auth Token'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
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
