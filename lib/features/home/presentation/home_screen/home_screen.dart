// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:megalab/features/home/presentation/bloc/home_bloc/post_list_bloc.dart';
import 'package:megalab/features/home/presentation/home_screen/widgets/filter_dialog.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';
import 'package:megalab/features/widgets/news_widget.dart';
import 'package:megalab/service_locator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    this.token = '9779d9cb2bc0b279ed329003b4d1c71e42adf423',
    this.author = 'Nurs',
  }) : super(key: key);
  final String? token;
  final String? author;
//todo also get String Author name with token
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    bloc.add(GetPostList.getPostList(
        token: widget.token ?? '9779d9cb2bc0b279ed329003b4d1c71e42adf423',
        author: widget.author ?? 'Nurs'));
  }

  final bloc = sl<PostListBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostListBloc, PostListState>(
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
            succes: (getPostListModel) {
              return Column(
                // mainAxisSize: MainAxisSize.min,
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
                    padding: const EdgeInsets.only(
                        right: 20, top: 5, bottom: 5, left: 20),
                    child: NewsWidget(
                      getPostList: getPostListModel,
                    ),
                  ),
                  const MainBottomBar(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
