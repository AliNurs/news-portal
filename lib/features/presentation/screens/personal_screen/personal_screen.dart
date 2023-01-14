// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/theme/app_text_styles.dart';

import 'package:megalab/features/presentation/screens/home/home_screen/home_screen.dart';
import 'package:megalab/features/presentation/screens/widgets/app_button.dart';
import 'package:megalab/features/presentation/widgets/main_bottom_bar.dart';
part 'widgets/load_news_widget.dart';
part 'widgets/personal_data_field.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const MainUpWidgets(isSelectedScreen: true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 63,
                          child: Image.asset(
                            'assets/images/image.png',
                            scale: 4,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            const Text('Добавить фото'),
                            const SizedBox(width: 8),
                            InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                    'assets/svgs/download.svg'))
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            const Text('Удалить'),
                            const SizedBox(width: 8),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/third');
                                },
                                child:
                                    SvgPicture.asset('assets/svgs/trash.svg'))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 26),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PersonDataField(
                          text: 'Фамилия',
                          name: 'Олегов',
                        ),
                        const PersonDataField(
                          text: 'Имя',
                          name: 'Олег',
                        ),
                        const PersonDataField(
                          text: 'Никнейм',
                          name: 'oleg.olegov',
                        ),
                        SizedBox(
                            width: 132,
                            child:
                                AppButton(text: 'Сохранить', onPressed: () {}))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Мои публикации',
                      style: AppTextStyles.w500size24,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          {
                            return showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      body: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: size.width * 0.85,
                                          height: 650,
                                          padding: const EdgeInsets.only(
                                              top: 14,
                                              bottom: 0,
                                              right: 14,
                                              left: 34),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 8,
                                                spreadRadius: 5,
                                                offset: Offset(3, 5),
                                              ),
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: LoadNewsWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ) ??
                                Navigator.pop(context);
                          }
                          
                        },
                        child: SvgPicture.asset('assets/svgs/plus.svg'))
                  ],
                ),
                const SizedBox(height: 18),
                NewsWidget(),
                NewsWidget(),
                NewsWidget(),
              ],
            ),
          ),
          const MainBottomBar()
        ],
      ),
    );
  }
}
