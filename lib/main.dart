import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/config/theme/theme_provider.dart';
import 'package:megalab/features/presentation/screens/auth/auth_screen/authorization_screen.dart';
import 'package:megalab/features/presentation/screens/auth/registr_screen/registration_screen.dart';
import 'package:megalab/service_locator.dart' as di;
import 'package:megalab/config/l10n/generated/l10n.dart';

import 'package:provider/provider.dart';

void main() async {
  await di.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Ubuntu',
            primarySwatch: Colors.blue,
          ),
          // theme: LightTheme().theme,
          darkTheme: DarkTheme().theme,
          themeMode: context.watch<ThemeProvider>().themeMode,
          // home: AuthScreen(),
          locale: Locale('ru'),
          supportedLocales: Language.delegate.supportedLocales,
          localizationsDelegates: const [
            Language.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],

          routes: {
            '/': (context) => const RegistrationScreen(),
            '/second': (context) => const AuthorizationScreen(),
            '/third': (context) => const RegistrationScreen(),
          },
          initialRoute: '/',
        );
      }),
    );
  }
}