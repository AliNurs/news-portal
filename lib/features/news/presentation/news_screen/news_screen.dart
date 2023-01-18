import 'package:flutter/material.dart';
import 'package:megalab/features/home/presentation/home_screen/widgets/filter_dialog.dart';
import 'package:megalab/features/news/presentation/news_screen/widgets/more_news_widget.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';


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
