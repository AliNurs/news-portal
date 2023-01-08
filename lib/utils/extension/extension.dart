import 'package:flutter/cupertino.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/config/theme/theme_provider.dart';
import 'package:provider/provider.dart';

extension ExtentionOnContext on BuildContext {
  AppColors get colors => Provider.of<ThemeProvider>(this).colors;
}

extension AppSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
