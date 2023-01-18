// ignore_for_file: sort_child_properties_last

part of 'more_news_widget.dart';

class AnswerTextFieldWidget extends StatelessWidget {
  const AnswerTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Language.of(context).you,
          style: AppTextStyles.w500size18,
        ),
        const SizedBox(width: 18),
        SizedBox(
          height: 27,
          width: 212,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 37,
          height: 27,
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
    );
  }
}
