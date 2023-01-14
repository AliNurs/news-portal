// ignore_for_file: must_be_immutable

part of '../screens/home/home_screen/home_screen.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({Key? key, required this.isSelectedScreen}) : super(key: key);
  bool isSelectedScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelectedScreen ? 128 : 163,
      width: double.infinity,
      decoration: isSelectedScreen
          ? null
          : const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/myfoto.webp'),
                fit: BoxFit.fill,
              ),
            ),
      child: Column(
        children: [
          MainUpWidgets(isSelectedScreen: isSelectedScreen),
          isSelectedScreen ? const SizedBox(height: 28) : const SizedBox(height: 52),
          isSelectedScreen
              ? Text(
                  'Избранные новости',
                  style: AppTextStyles.w500size30.copyWith(color: Colors.black),
                )
              : Text(
                  'Новости',
                  style: AppTextStyles.w500size42.copyWith(color: Colors.white),
                ),
        ],
      ),
    );
  }
}

class MainUpWidgets extends StatelessWidget {
  const MainUpWidgets({
    Key? key,
    required this.isSelectedScreen,
  }) : super(key: key);

  final bool isSelectedScreen;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 18),
        SvgPicture.asset(
          'assets/svgs/logo_megalab.svg',
          width: 98,
          height: 22,
          color: isSelectedScreen ? Colors.deepPurple : Colors.white,
        ),
        const SizedBox(width: 132),
        Row(
          children: [
            IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {
                Navigator.pushNamed(context, '/personal');
              },
              icon: SvgPicture.asset('assets/svgs/search.svg',
                  color: isSelectedScreen ? Colors.deepPurple : Colors.white),
            ),
            IconButton(
              onPressed: () {
                return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const MyProfileWidget();
                      },
                    ) ??
                    Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/svgs/person.svg',
                  color: isSelectedScreen ? Colors.deepPurple : Colors.white),
            ),
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const FavoriteNewsWidget();
                      },
                    ) ??
                    Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/svgs/menu.svg',
                  color: isSelectedScreen ? Colors.deepPurple : Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
