part of 'main_app_bar.dart';

class MainUpWidgets extends StatelessWidget {
  const MainUpWidgets({
    Key? key,
    required this.isSelectedScreen,
  }) : super(key: key);

  final bool isSelectedScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (() {
              context.router.push(const RegistrationScreenRoute());
            }),
            child: SvgPicture.asset(
              AppSvgs.logoMegalab,
              width: 98,
              height: 22,
              color: isSelectedScreen
                  ? context.colors.buttonLogo7E5BC2
                  : context.colors.textWhiteFFFFFF,
            ),
          ),
          Row(
            children: [
              IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppSvgs.search,
                  color: isSelectedScreen
                      ? context.colors.buttonLogo7E5BC2
                      : context.colors.textWhiteFFFFFF,
                ),
              ),
              IconButton(
                onPressed: () async {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const MyProfileWidget();
                    },
                  );
                },
                icon: SvgPicture.asset(
                  AppSvgs.person,
                  color: isSelectedScreen
                      ? context.colors.buttonLogo7E5BC2
                      : context.colors.textWhiteFFFFFF,
                ),
              ),
              IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () async {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const FavoriteNewsWidget();
                    },
                  );
                },
                icon: SvgPicture.asset(
                  AppSvgs.menu,
                  color: isSelectedScreen
                      ? context.colors.buttonLogo7E5BC2
                      : context.colors.textWhiteFFFFFF,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
