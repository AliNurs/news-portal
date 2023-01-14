
part of '../home_screen/home_screen.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({
    Key? key,
    required this.isMainScreen,
  }) : super(key: key);
  final bool isMainScreen;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: isMainScreen ? Alignment.bottomRight : Alignment.bottomLeft,
      onPressed: () {
        return isMainScreen
            ? showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 18),
                    title: const Text(
                      'Фильтрация',
                      style: AppTextStyles.w500size18,
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ChekFilter(
                          isSelected: true,
                          text: 'Спорт',
                        ),
                        ChekFilter(
                          isSelected: false,
                          text: 'Политика',
                        ),
                        ChekFilter(
                          isSelected: false,
                          text: 'Звезды',
                        ),
                        ChekFilter(
                          isSelected: true,
                          text: 'Искусство',
                        ),
                        ChekFilter(
                          isSelected: true,
                          text: 'Мода',
                        ),
                      ],
                    ),
                    actionsPadding: const EdgeInsets.only(bottom: 26),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      SizedBox(
                        height: 32,
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              backgroundColor: Colors.deepPurple),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Применить',
                            style: AppTextStyles.w500size16,
                          ),
                        ),
                      )
                    ],
                  );
                }).toString()
            : Navigator.pop(context);
      },
      icon: isMainScreen
          ? SvgPicture.asset(
              'assets/svgs/filter.svg',
              width: 108,
              height: 24,
              color: Colors.black,
            )
          : Row(
              children: [
                const SizedBox(width: 6),
                SvgPicture.asset(
                  'assets/svgs/arrow_left.svg',
                ),
              ],
            ),
    );
  }
}
