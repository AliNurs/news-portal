// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/core/router/app_router.dart';
import 'package:megalab/features/presentation/screens/home/presentation/widgets/chek_filter.dart';
import 'package:megalab/features/presentation/widgets/favorite_news_widget.dart';
import 'package:megalab/features/presentation/widgets/main_bottom_bar.dart';
import 'package:megalab/features/presentation/widgets/my_profile_widget.dart';
part '../../../widgets/main_app_bar.dart';
part '../../widgets/news_widget.dart';
part '../presentation/widgets/filter_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
