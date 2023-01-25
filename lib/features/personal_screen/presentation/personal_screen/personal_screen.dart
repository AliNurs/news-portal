// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/features/home/presentation/bloc/home_bloc/post_list_bloc.dart';
import 'package:megalab/features/personal_screen/presentation/personal_screen/widgets/load_post_widget.dart';
import 'package:megalab/features/widgets/app_button.dart';
import 'package:megalab/features/widgets/main_app_bar.dart';
import 'package:megalab/features/widgets/main_bottom_bar.dart';
import 'package:megalab/features/widgets/news_widget.dart';
import 'package:megalab/service_locator.dart';
import 'package:megalab/utils/extension/extension.dart';

// part 'widgets/load_post_widget.dart';
part 'widgets/personal_screen_text_field.dart';

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
                          backgroundColor: context.colors.textFieldsDEDCE4,
                          radius: 63,
                          child: Image.asset(
                            AppImages.imageIcon,
                            scale: 4,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Text(
                              Language.of(context).addPhoto,
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                AppSvgs.download,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Text(
                              Language.of(context).delete,
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                AppSvgs.trash,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 26),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PersonDataField(
                          text: Language.of(context).surname,
                          name: 'Олегов',
                        ),
                        PersonDataField(
                          text: Language.of(context).name,
                          name: 'Олег',
                        ),
                        PersonDataField(
                          text: Language.of(context).nickname,
                          name: 'oleg.olegov',
                        ),
                        SizedBox(
                          width: 132,
                          child: AppButton(
                            text: Language.of(context).save,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Language.of(context).myPublications,
                      style: AppTextStyles.w500size24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.buttonLogo7E5BC2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: SvgPicture.asset(
                        AppSvgs.plus,
                      ),
                      onPressed: () async {
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
                                      right: 21,
                                      left: 34,
                                    ),
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8,
                                          spreadRadius: 5,
                                          offset: Offset(3, 5),
                                        ),
                                      ],
                                      color: context.colors.textWhiteFFFFFF,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: LoadPostWidget(),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                BlocProvider.value(
                  value: sl<PostListBloc>(),
                  child: BlocBuilder<PostListBloc, PostListState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return const Center(
                          child: Text('Or Else'),
                        );
                      }, loading: () {
                        return const Center(child: CircularProgressIndicator());
                      }, error: (errorMessage) {
                        return Center(
                          child: Text(errorMessage ?? 'Error'),
                        );
                      }, succes: ((postListModel) {
                        return Column(
                          children: [
                            NewsWidget(getPostList: postListModel),
                            NewsWidget(getPostList: postListModel),
                            NewsWidget(getPostList: postListModel),
                          ],
                        );
                      }));
                    },
                  ),
                ),
              ],
            ),
          ),
          const MainBottomBar()
        ],
      ),
    );
  }
}
