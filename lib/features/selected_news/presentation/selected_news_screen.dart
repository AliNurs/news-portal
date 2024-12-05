// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megalab/features/home/presentation/bloc/home_bloc/post_list_bloc.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';
import 'package:megalab/features/widgets/news_widget.dart';

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
                    return ValueListenableBuilder(
                        valueListenable: isActive,
                        builder: (context, _, __) {
                          return Column(
                            // ignore: sort_child_properties_last
                            children: [
                              const SizedBox(height: 8),
                              NewsWidget(getPostList: postListModel),
                              const SizedBox(height: 12),
                              NewsWidget(getPostList: postListModel),
                              const SizedBox(height: 12),
                              NewsWidget(getPostList: postListModel),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          );
                        });
                  },
                );
              },
            ),
          ),
          const MainBottomBar(),
        ],
      ),
    );
  }
}
