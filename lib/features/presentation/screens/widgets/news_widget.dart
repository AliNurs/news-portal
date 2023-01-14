part of '../home/home_screen/home_screen.dart';

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
              image: AssetImage('assets/images/mycar.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  //TODO valueListinible changed state after refresh(CTRL+S)
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
        ]),
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
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/fourth');
          },
          child: Text(
            textAlign: TextAlign.left,
            'Читать дальше>>',
            style: AppTextStyles.w400size16.copyWith(
                decoration: TextDecoration.underline, color: Colors.deepPurple),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          icon: SvgPicture.asset(
            'assets/svgs/share.svg',
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
