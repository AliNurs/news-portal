part of 'more_news_widget.dart';

class CommentTextWidget extends StatelessWidget {
  const CommentTextWidget({
    Key? key,
    required this.answer,
  }) : super(key: key);
  @override
  final ValueNotifier<bool> answer;
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
            color: context.colors.textGrey858080,
          ),
        ),
        Row(
          children: [
            Text(
              '30.11.2022',
              style: AppTextStyles.w400size16.copyWith(
                color: context.colors.textGrey858080,
              ),
            ),
            const SizedBox(width: 24),
            TextButton(
              onPressed: () async {
                // //TODO
                answer.value = !answer.value;
              },
              child: Text(
                Language.of(context).reply,
                style: AppTextStyles.w400size16.copyWith(
                    decoration: TextDecoration.underline,
                    color: context.colors.buttonLogo7E5BC2),
              ),
            ),
          ],
        ),
        ValueListenableBuilder(
          valueListenable: answer,
          builder: (context, _, __) {
            return answer.value == true
                ? const AnswerTextFieldWidget()
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
