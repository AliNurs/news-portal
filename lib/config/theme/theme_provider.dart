import 'package:flutter/material.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModes { light, dark }

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    initalize();
  }

  final lightTheme = LightTheme();
  final darkTheme = DarkTheme();
  final lightColors = LightColors();
  final darkColors = DarkColors();

  late AppColors colors;
  late ThemeMode themeMode;
  void changeTheme(ThemeModes mode) {
    switch (mode) {
      case ThemeModes.dark:
        colors = darkColors;
        themeMode = ThemeMode.dark;
        sl<SharedPreferences>().setString('theme', ThemeMode.dark.name);
        break;
      case ThemeModes.light:
        colors = lightColors;
        themeMode = ThemeMode.light;
        sl<SharedPreferences>().setString('theme', ThemeMode.light.name);
        break;
      default:
    }
    notifyListeners();
  }

  initalize() {
    final oldTheme = ThemeModes.light.name;
    //final oldTheme = sl<SharedPreferences>().getString('theme') ?? ThemeModes.light.name;
    if (oldTheme == ThemeModes.dark.name) {
      colors = darkColors;
      themeMode = ThemeMode.dark;
    } else {
      colors = lightColors;
      themeMode = ThemeMode.light;
    }
  }
}
