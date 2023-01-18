import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/features/widgets/favorite_news_widget.dart';
import 'package:megalab/features/widgets/my_profile_widget.dart';
import 'package:megalab/utils/extension/extension.dart';

class MainBottomBar extends StatelessWidget {
  const MainBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      width: double.infinity,
      color: context.colors.textBlack000000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppSvgs.logoMegalab,
            width: 130,
            height: 32,
            color: context.colors.textWhiteFFFFFF,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const MyProfileWidget();
                    },
                  );
                },
                child: Text(
                  Language.of(context).myProfile,
                  style: AppTextStyles.w400size16.copyWith(
                    color: context.colors.textWhiteFFFFFF,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () async{
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const FavoriteNewsWidget();
                    },
                  );
                },
                child: Text(
                  Language.of(context).selectedNews,
                  style: AppTextStyles.w400size16.copyWith(
                    color: context.colors.textWhiteFFFFFF,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
