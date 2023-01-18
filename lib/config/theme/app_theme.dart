import 'package:flutter/material.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
part 'app_colors.dart';

abstract class AppTheme {
  AppColors get colors;
  ThemeData get theme;
}

class DarkTheme implements AppTheme {
  @override
  AppColors get colors => DarkColors();

  @override
  ThemeData get theme => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colors.themeBackgroundF6F4FA,
        appBarTheme: AppBarTheme(
          color: colors.themeBackgroundF6F4FA,
          titleTextStyle: AppTextStyles.w500size20.copyWith(
            color: colors.textGrey858080,
          ),
        ),
      );
}

class LightTheme implements AppTheme {
  @override
  AppColors get colors => LightColors();

  @override
  ThemeData get theme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: colors.themeBackgroundF6F4FA,
        appBarTheme: AppBarTheme(
          color: colors.themeBackgroundF6F4FA,
          iconTheme: IconThemeData(color: colors.textGrey858080),
          titleTextStyle: AppTextStyles.w500size20.copyWith(
            color: colors.textGrey858080,
          ),
        ),
      );
}
