import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/features/presentation/widgets/favorite_news_widget.dart';
import 'package:megalab/features/presentation/widgets/my_profile_widget.dart';

class MainBottomBar extends StatelessWidget {
  const MainBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svgs/logo_megalab.svg',
            width: 130,
            height: 32,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const MyProfileWidget();
                        },
                      ) ??
                      Navigator.pop(context);
                },
                child: Text(
                  'Мой профиль',
                  style: AppTextStyles.w400size16.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const FavoriteNewsWidget();
                        },
                      ) ??
                      Navigator.pop(context);
                },
                child: Text(
                  'Избранные новости',
                  style: AppTextStyles.w400size16.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
