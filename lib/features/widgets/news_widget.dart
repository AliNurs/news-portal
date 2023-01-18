import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/utils/extension/extension.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({
    Key? key,
  }) : super(key: key);

  final isActive = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 262,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.rectangle1,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '29.11.2022',
            style: AppTextStyles.w400size16.copyWith(
              color: context.colors.textGrey858080,
            ),
          ),
          ValueListenableBuilder(
              valueListenable: isActive,
              builder: (context, _, __) {
                return IconButton(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    isActive.value = !isActive.value;
                  },
                  icon: isActive.value == true
                      ? SvgPicture.asset(
                          AppSvgs.favorite,
                        )
                      : SvgPicture.asset(
                          AppSvgs.favoriteRed,
                        ),
                );
              }),
        ]),
        Text(
          Language.of(context).newsHeadline,
          style: AppTextStyles.w500size24,
        ),
        const SizedBox(height: 8),
        Text(
          maxLines: 5,
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.''',
          style: AppTextStyles.w400size16
              .copyWith(wordSpacing: 3, height: 1.6)
              .copyWith(
                color: context.colors.textGrey858080,
              ),
        ),
        TextButton(
          onPressed: () {
            context.router.push(
              const NewsScreenRoute(),
            );
          },
          child: Text(
            textAlign: TextAlign.left,
            Language.of(context).readMore,
            style: AppTextStyles.w400size16.copyWith(
              decoration: TextDecoration.underline,
              color: context.colors.buttonLogo7E5BC2,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppSvgs.share,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
