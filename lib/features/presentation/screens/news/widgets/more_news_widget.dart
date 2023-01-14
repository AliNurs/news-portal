// ignore_for_file: sort_child_properties_last

part of '../more_news_screen.dart';

class MoreNewsWidget extends StatelessWidget {
  MoreNewsWidget({
    Key? key,
  }) : super(key: key);

  // final ValueNotifier<bool> isActive;
  final isActive = ValueNotifier<bool>(false);
  final answer = ValueNotifier<bool>(false);

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
              style: AppTextStyles.w400size16
                  .copyWith(color: Colors.black.withOpacity(0.5)),
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
                            'assets/svgs/favorite.svg',
                          )
                        : SvgPicture.asset(
                            'assets/svgs/favorite_red.svg',
                          ),
                  );
                }),
          ],
        ),
        const Text(
          'Заголовок новости',
          style: AppTextStyles.w500size24,
        ),
        const SizedBox(height: 8),
        Text(
          maxLines: 5,
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.''',
          style: AppTextStyles.w400size16
              .copyWith(wordSpacing: 3, height: 1.6)
              .copyWith(color: Colors.black.withOpacity(0.5)),
        ),
        const SizedBox(height: 15),
        Container(
          height: 262,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mycar.jpg'),
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
              .copyWith(color: Colors.black.withOpacity(0.5)),
        ),
        const SizedBox(height: 12),
        IconButton(
          padding: EdgeInsets.zero,
          alignment: Alignment.centerLeft,
          onPressed: () async {
            Navigator.pushNamed(context, '/fifth');
          },
          icon: SvgPicture.asset(
            'assets/svgs/share.svg',
          ),
        ),
        const SizedBox(height: 32),
        const Text(
          'Комментарии',
          style: AppTextStyles.w500size24,
        ),
        const SizedBox(height: 28),
        CommentTextWidget(
          answer: answer,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 14, 0, 24),
          child: ValueListenableBuilder(
              valueListenable: answer,
              builder: (context, _, __) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommentTextWidget(
                      answer: answer,
                    ),
                    //TODO
                    answer == false
                        ? const AnswerTextFieldWidget()
                        : const SizedBox.shrink(),
                  ],
                );
              }),
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
                  hintText: 'Напишите комментарий',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              width: 37,
              height: 38,
              child: FloatingActionButton.small(
                backgroundColor: Colors.deepPurple,
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/svgs/arrow_up.svg',
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

class AnswerTextFieldWidget extends StatelessWidget {
  const AnswerTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Вы', style: AppTextStyles.w500size18),
        const SizedBox(width: 18),
        SizedBox(
          height: 27,
          width: 212,
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 37,
          height: 27,
          child: FloatingActionButton.small(
            backgroundColor: Colors.deepPurple,
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svgs/arrow_up.svg',
              width: 19,
              height: 19,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class CommentTextWidget extends StatelessWidget {
  const CommentTextWidget({Key? key, required this.answer}) : super(key: key);
  final ValueNotifier<bool> answer;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Олег Петров',
          style: AppTextStyles.w500size18,
        ),
        const SizedBox(height: 6),
        Text(
          maxLines: 5,
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.''',
          style: AppTextStyles.w400size16.copyWith(
              wordSpacing: 3,
              height: 1.6,
              color: Colors.black.withOpacity(0.5)),
        ),
        Row(
          children: [
            Text(
              '30.11.2022',
              style: AppTextStyles.w400size16
                  .copyWith(color: Colors.black.withOpacity(0.5)),
            ),
            const SizedBox(width: 24),
            TextButton(
              onPressed: () {
                answer.value = true;
                log(answer.value.toString());
              },
              child: Text(
                "Ответить",
                style: AppTextStyles.w400size16.copyWith(
                    decoration: TextDecoration.underline,
                    color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
