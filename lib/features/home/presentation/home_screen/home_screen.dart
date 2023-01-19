// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:megalab/features/home/presentation/home_screen/widgets/filter_dialog.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';
import 'package:megalab/features/widgets/news_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
    required this.token,
  }) : super(key: key);
  final String token;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    log('HomeToken ${widget.token}');
  }

  @override
  Widget build(BuildContext context) {
    final isActive = ValueNotifier<bool>(false);

    return Scaffold(
      body: ListView(
        children: [
          MainAppBar(
            isSelectedScreen: false,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: FilterDialog(
              isMainScreen: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ValueListenableBuilder(
                valueListenable: isActive,
                builder: (context, _, __) {
                  return Column(
                    // ignore: sort_child_properties_last
                    children: [
                      const SizedBox(height: 8),
                      NewsWidget(),
                      const SizedBox(height: 12),
                      NewsWidget(),
                      const SizedBox(height: 12),
                      NewsWidget(),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  );
                }),
          ),
          const MainBottomBar(),
        ],
      ),
    );
  }
}
