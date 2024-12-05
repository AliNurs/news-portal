import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/config/theme/theme_provider.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/features/register/presentation/bloc/register_bloc/register_bloc.dart';

import 'package:megalab/service_locator.dart' as di;
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/service_locator.dart';

import 'package:provider/provider.dart';

void main() async {
  await di.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  final bloc = sl<RegisterBloc>();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(
            usecase: sl(),
          ),
        )
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Ubuntu',
            ),
            // theme: LightTheme().theme,
            darkTheme: DarkTheme().theme,
            themeMode: context.watch<ThemeProvider>().themeMode,

            locale: const Locale('ru'),
            supportedLocales: Language.delegate.supportedLocales,
            localizationsDelegates: const [
              Language.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
          );
        },
      ),
    );
  }
}

/*  
app_router.dart
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
    AutoRoute(page: AuthorizationScreen),
    AutoRoute(page: RegistrationScreen),
    AutoRoute(page: NewsScreen),
    AutoRoute(page: SelectedNewsScreen),
    AutoRoute(page: PersonalScreen, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}


app_router.gr.dart

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomeScreen(
          key: args.key,
          token: args.token,
          author: args.author,
        ),
      );
    },
    AuthorizationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AuthorizationScreen(),
      );
    },
    RegistrationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    NewsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
    SelectedNewsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SelectedNewsScreen(),
      );
    },
    PersonalScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PersonalScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        RouteConfig(
          AuthorizationScreenRoute.name,
          path: '/authorization-screen',
        ),
        RouteConfig(
          RegistrationScreenRoute.name,
          path: '/registration-screen',
        ),
        RouteConfig(
          NewsScreenRoute.name,
          path: '/news-screen',
        ),
        RouteConfig(
          SelectedNewsScreenRoute.name,
          path: '/selected-news-screen',
        ),
        RouteConfig(
          PersonalScreenRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({
    Key? key,
    String? token = '9779d9cb2bc0b279ed329003b4d1c71e42adf423',
    String? author = 'Nurs',
  }) : super(
          HomeScreenRoute.name,
          path: '/home-screen',
          args: HomeScreenRouteArgs(
            key: key,
            token: token,
            author: author,
          ),
        );

  static const String name = 'HomeScreenRoute';
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({
    this.key,
    this.token = '9779d9cb2bc0b279ed329003b4d1c71e42adf423',
    this.author = 'Nurs',
  });

  final Key? key;

  final String? token;

  final String? author;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key, token: $token, author: $author}';
  }
}

/// generated route for
/// [AuthorizationScreen]
class AuthorizationScreenRoute extends PageRouteInfo<void> {
  const AuthorizationScreenRoute()
      : super(
          AuthorizationScreenRoute.name,
          path: '/authorization-screen',
        );

  static const String name = 'AuthorizationScreenRoute';
}

/// generated route for
/// [RegistrationScreen]
class RegistrationScreenRoute extends PageRouteInfo<void> {
  const RegistrationScreenRoute()
      : super(
          RegistrationScreenRoute.name,
          path: '/registration-screen',
        );

  static const String name = 'RegistrationScreenRoute';
}

/// generated route for
/// [NewsScreen]
class NewsScreenRoute extends PageRouteInfo<void> {
  const NewsScreenRoute()
      : super(
          NewsScreenRoute.name,
          path: '/news-screen',
        );

  static const String name = 'NewsScreenRoute';
}

/// generated route for
/// [SelectedNewsScreen]
class SelectedNewsScreenRoute extends PageRouteInfo<void> {
  const SelectedNewsScreenRoute()
      : super(
          SelectedNewsScreenRoute.name,
          path: '/selected-news-screen',
        );

  static const String name = 'SelectedNewsScreenRoute';
}

/// generated route for
/// [PersonalScreen]
class PersonalScreenRoute extends PageRouteInfo<void> {
  const PersonalScreenRoute()
      : super(
          PersonalScreenRoute.name,
          path: '/',
        );

  static const String name = 'PersonalScreenRoute';
}



*/