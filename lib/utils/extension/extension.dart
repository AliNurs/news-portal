import 'package:flutter/cupertino.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/config/theme/theme_provider.dart';
import 'package:provider/provider.dart';

extension ExtentionOnContext on BuildContext {
  AppColors get colors => Provider.of<ThemeProvider>(this).colors;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  Size get size => MediaQuery.of(this).size;
}
