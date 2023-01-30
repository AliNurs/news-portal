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
      child: Builder(builder: (context) {
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
      }),
    );
  }
}
