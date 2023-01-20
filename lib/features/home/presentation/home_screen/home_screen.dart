// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megalab/features/home/presentation/bloc/home_bloc/post_list_bloc.dart';
import 'dart:developer';
import 'package:megalab/features/home/presentation/home_screen/widgets/filter_dialog.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';
import 'package:megalab/features/widgets/news_widget.dart';
import 'package:megalab/service_locator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
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

  final bloc = sl<PostListBloc>();

  @override
  Widget build(BuildContext context) {
    final isActive = ValueNotifier<bool>(false);

    return Scaffold(
      body: BlocProvider.value(
        value: bloc,
        child: BlocBuilder<PostListBloc, PostListState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: Text('Or Else'),
                );
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              error: (errorMessage) {
                return Center(
                  child: Text(errorMessage ?? 'Error'),
                );
              },
              succes: (postListModel) {
                return ListView(
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
                                NewsWidget(
                                  postListModel: postListModel ?? [],
                                ),
                                const SizedBox(height: 12),
                                NewsWidget(
                                  postListModel: postListModel ?? [],
                                ),
                                const SizedBox(height: 12),
                                NewsWidget(
                                  postListModel: postListModel ?? [],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            );
                          }),
                    ),
                    const MainBottomBar(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
