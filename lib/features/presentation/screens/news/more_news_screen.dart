import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/features/presentation/screens/home/home_screen/home_screen.dart';
import 'package:megalab/features/presentation/widgets/main_bottom_bar.dart';
part 'widgets/more_news_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MainAppBar(
            isSelectedScreen: false,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: FilterDialog(
              isMainScreen: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              // ignore: sort_child_properties_last
              children: [
                const SizedBox(height: 8),
                MoreNewsWidget(),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          const MainBottomBar(),
        ],
      ),
    );
  }
}
