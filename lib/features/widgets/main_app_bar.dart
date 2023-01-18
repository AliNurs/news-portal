// ignore_for_file: must_be_immutable
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/features/widgets/favorite_news_widget.dart';
import 'package:megalab/features/widgets/my_profile_widget.dart';
import 'package:megalab/utils/extension/extension.dart';
part 'main_up_widgets.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({Key? key, required this.isSelectedScreen}) : super(key: key);
  bool isSelectedScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelectedScreen ? 128 : 163,
      width: double.infinity,
      decoration: isSelectedScreen
          ? null
          : const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.appBarImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
      child: Column(
        children: [
          MainUpWidgets(isSelectedScreen: isSelectedScreen),
          isSelectedScreen
              ? const SizedBox(height: 28)
              : const SizedBox(height: 52),
          isSelectedScreen
              ? Text(
                  Language.of(context).selectedNews,
                  style: AppTextStyles.w500size30.copyWith(
                    color: context.colors.textBlack000000,
                  ),
                )
              : Text(
                  Language.of(context).news,
                  style: AppTextStyles.w500size42.copyWith(
                    color: context.colors.textWhiteFFFFFF,
                  ),
                ),
        ],
      ),
    );
  }
}
