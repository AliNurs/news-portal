// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:megalab/features/presentation/screens/auth/presentation/auth_screen/authorization_screen.dart';
import 'package:megalab/features/presentation/screens/home/home_screen/home_screen.dart';
import 'package:megalab/features/presentation/screens/news/presentation/more_news_screen.dart';
import 'package:megalab/features/presentation/screens/register/presentation/register_screen/registration_screen.dart';
import 'package:megalab/features/presentation/screens/personal_screen/presentation/personal_screen.dart';
import 'package:megalab/features/presentation/screens/selected_news/presentation/selected_news_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: AuthorizationScreen),
    AutoRoute(page: RegistrationScreen),
    AutoRoute(page: NewsScreen),
    AutoRoute(page: SelectedNewsScreen),
    AutoRoute(page: PersonalScreen),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
