// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/utils/extension/extension.dart';
part 'answer_text_field_widget.dart';
part 'comment_text_widget.dart';

class MoreNewsWidget extends StatelessWidget {
  MoreNewsWidget({
    Key? key,
  }) : super(key: key);

  // final ValueNotifier<bool> isActive;
  final isActive = ValueNotifier<bool>(false);
  final answer = ValueNotifier<bool>(false);
  final answers = ValueNotifier<bool>(true);

//TODO  Again Watch all this widget codes
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
          ],
        ),
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
        const SizedBox(height: 15),
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
        const SizedBox(height: 12),
        Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.
              Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna. Nam metus lacus, porttitor eu mauris a, blandit ultrices nibh. Mauris sit amet magna non ligula vestibulum eleifend. Nulla varius volutpat turpis sed lacinia. Nam eget mi in purus lobortis eleifend. Sed nec ante dictum sem condimentum ullamcorper quis venenatis nisi. Proin vitae facilisis nisi, ac posuere leo.
              Nam pulvinar blandit velit, id condimentum diam faucibus at. Aliquam lacus nisi, sollicitudin at nisi nec, fermentum congue felis. Quisque mauris dolor, fringilla sed tincidunt ac, finibus non odio. Sed vitae mauris nec ante pretium finibus. Donec nisl neque, pharetra ac elit eu, faucibus aliquam ligula. Nullam dictum, tellus tincidunt tempor laoreet, nibh elit sollicitudin felis, eget feugiat sapien diam nec nisl. Aenean gravida turpis nisi, consequat dictum risus dapibus a. Duis felis ante, varius in neque eu, tempor suscipit sem. Maecenas ullamcorper gravida sem sit amet cursus. Etiam pulvinar purus vitae justo pharetra consequat. Mauris id mi ut arcu feugiat maximus. Mauris consequat tellus id tempus aliquet.''',
          style: AppTextStyles.w400size16
              .copyWith(wordSpacing: 3, height: 1.6)
              .copyWith(
                color: context.colors.textGrey858080,
              ),
        ),
        const SizedBox(height: 12),
        IconButton(
          padding: EdgeInsets.zero,
          alignment: Alignment.centerLeft,
          onPressed: () async {},
          icon: SvgPicture.asset(AppSvgs.share),
        ),
        const SizedBox(height: 32),
        Text(
          Language.of(context).comments,
          style: AppTextStyles.w500size24,
        ),
        const SizedBox(height: 28),
        CommentTextWidget(
          answer: answer,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 14, 0, 24),
          child: CommentTextWidget(
            // todo nujno napihat logic for answers
            answer: answers,
          ),
        ),
        CommentTextWidget(
          answer: answer,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            SizedBox(
              height: 38,
              width: 290,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintText: Language.of(context).writeComment,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              width: 37,
              height: 38,
              child: FloatingActionButton.small(
                backgroundColor: context.colors.buttonLogo7E5BC2,
                onPressed: () {},
                child: SvgPicture.asset(
                  AppSvgs.arrowUp,
                  width: 19,
                  height: 19,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 42),
      ],
    );
  }
}
