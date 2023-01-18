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
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
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
          path: '/',
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
          path: '/personal-screen',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
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
          path: '/personal-screen',
        );

  static const String name = 'PersonalScreenRoute';
}
