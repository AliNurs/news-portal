// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:megalab/features/auth/presentation/auth_screen/authorization_screen.dart';
import 'package:megalab/features/home/presentation/home_screen/home_screen.dart';
import 'package:megalab/features/news/presentation/news_screen/news_screen.dart';
import 'package:megalab/features/personal_screen/presentation/personal_screen/personal_screen.dart';
import 'package:megalab/features/register/presentation/register_screen/registration_screen.dart';
import 'package:megalab/features/selected_news/presentation/selected_news_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(page: AuthorizationScreen, initial: true),
    AutoRoute(page: RegistrationScreen),
    AutoRoute(page: NewsScreen),
    AutoRoute(page: SelectedNewsScreen),
    AutoRoute(page: PersonalScreen),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
