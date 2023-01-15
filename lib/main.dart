import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/config/theme/theme_provider.dart';
import 'package:megalab/core/router/app_router.dart';

import 'package:megalab/service_locator.dart' as di;
import 'package:megalab/config/l10n/generated/l10n.dart';

import 'package:provider/provider.dart';

void main() async {
  await di.init;
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Ubuntu',
            primarySwatch: Colors.blue,
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

          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),

          // routes: {
          //   '/': (context) => const HomeScreen(),
          //   '/second': (context) => const AuthorizationScreen(),
          //   '/third': (context) => const RegistrationScreen(),
          //   '/fourth': (context) => const NewsScreen(),
          //   '/fifth': (context) => const SelectedNewsScreen(),
          //   '/personal': (context) => const PersonalScreen(),
          // },
          // initialRoute: '/',
        );
      }),
    );
  }
}
