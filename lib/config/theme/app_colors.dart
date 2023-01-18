// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_theme.dart';

abstract class AppColors {
  AppColors({
    required this.textWhiteFFFFFF,
    required this.textGrey858080,
    required this.buttonLogo7E5BC2,
    required this.textFieldsDEDCE4,
    required this.themeBackgroundF6F4FA,
    required this.textBlack000000,
    required this.textBlue2D4EC2,
  });
  final Color textWhiteFFFFFF;
  final Color textGrey858080;
  final Color buttonLogo7E5BC2;
  final Color textFieldsDEDCE4;

  final Color themeBackgroundF6F4FA;

  final Color textBlack000000;
  final Color textBlue2D4EC2;
}

class DarkColors implements AppColors {
  @override
  Color get buttonLogo7E5BC2 => const Color(0xff152A3A);
  @override
  Color get textBlue2D4EC2 => const Color(0xff2D4EC2);
  @override
  Color get textBlack000000 => const Color(0xff000000);

  @override
  Color get textFieldsDEDCE4 => const Color(0xff152A3A);

  @override
  Color get textGrey858080 => const Color(0xffFFFFFF);

  @override
  Color get textWhiteFFFFFF => const Color(0xff0B1E2D);

  @override
  Color get themeBackgroundF6F4FA => const Color(0xff43D049);
}

class LightColors implements AppColors {
  @override
  Color get buttonLogo7E5BC2 => const Color(0xff7E5BC2);
  @override
  Color get textBlue2D4EC2 => const Color(0xff2D4EC2);
  @override
  Color get textBlack000000 => const Color(0xff000000);

  @override
  Color get textFieldsDEDCE4 => const Color(0xffDEDCE4);

  @override
  Color get textGrey858080 => const Color(0xff858080);

  @override
  Color get textWhiteFFFFFF => const Color(0xffFFFFFF);

  @override
  Color get themeBackgroundF6F4FA => const Color(0xffF6F4FA);
}
