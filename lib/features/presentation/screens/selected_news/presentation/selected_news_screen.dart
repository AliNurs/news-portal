// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:megalab/features/presentation/screens/home/home_screen/home_screen.dart';
import 'package:megalab/features/presentation/widgets/main_bottom_bar.dart';

class SelectedNewsScreen extends StatelessWidget {
  const SelectedNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isActive = ValueNotifier<bool>(false);

    return Scaffold(
      body: ListView(
        children: [
          MainAppBar(
            isSelectedScreen: true,
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
