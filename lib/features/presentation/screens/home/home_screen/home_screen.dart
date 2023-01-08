import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/config/theme/app_theme.dart';
import 'package:megalab/features/presentation/screens/auth/registr_screen/registration_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isActive = ValueNotifier<bool>(false);
    final bool readMore = false;
    return Scaffold(
      body: ListView(
        children: [
          const MainAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 20, left: 20),
            child: Column(
              // ignore: sort_child_properties_last
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/svgs/filter.svg',
                      width: 108,
                      height: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 17),
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
                            //TODO not working valueListinible
                            onPressed: () {
                              isActive.value != isActive.value;
                            },
                            icon: Icon(
                              isActive == true
                                  ? Icons.favorite_border_outlined
                                  : Icons.favorite,
                              size: 27,
                            ),
                          );
                        }),
                  ],
                ),
                const Text(
                  'Заголовок новости',
                  style: AppTextStyles.w500size24,
                ),
                SizedBox(height: 8),
                Text(
                  maxLines: readMore == false ? 5 : 100005,
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.''',
                  style: AppTextStyles.w400size16
                      .copyWith(color: Colors.black.withOpacity(0.5)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textAlign: TextAlign.left,
                    'Читать дальше>>',
                    style: AppTextStyles.w400size16.copyWith(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ],
      ),
    );
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/myfoto.webp'),
        fit: BoxFit.fill,
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 17),
        child: Column(
          // ignore: sort_child_properties_last
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/svgs/logo_megalab.svg',
                    width: 98, height: 22, color: Colors.white),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_list,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Новости',
              style: AppTextStyles.w500size42.copyWith(color: Colors.white),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
