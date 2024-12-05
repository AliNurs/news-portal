// ignore_for_file: must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/features/personal_screen/presentation/bloc/personal_bloc/post_bloc.dart';
import 'package:megalab/features/widgets/app_button.dart';
import 'package:megalab/features/widgets/app_text_field.dart';
import 'package:megalab/service_locator.dart';
import 'package:megalab/utils/extension/extension.dart';

part 'my_drop_button.dart';
// part of '../personal_screen.dart';

class LoadPostWidget extends StatefulWidget {
  const LoadPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoadPostWidget> createState() => _LoadPostWidgetState();
}

class _LoadPostWidgetState extends State<LoadPostWidget> {
  // final postTitleController = TextEditingController();

  // final postTextController = TextEditingController();

  // final postImageController = TextEditingController();

  // final postTagController = TextEditingController();

  // final postDescriptionController = TextEditingController();

  late TextEditingController postTitleController;
  late TextEditingController postTextController;
  late TextEditingController postImageController;
  late TextEditingController postTagController;
  late TextEditingController postDescriptionController;

  @override
  void initState() {
    super.initState();
    postTitleController = TextEditingController();
    postTextController = TextEditingController();
    postImageController = TextEditingController();
    postTagController = TextEditingController();
    postDescriptionController = TextEditingController();
  }

  final bloc = sl<PostBloc>();
  String? value;

  //Todo UseCases Class
  List<String> chooseCategory = [
    'Спорт',
    'Политика',
    'Звезды',
    'Искусство',
    'Мода',
  ];

//TODO  Again Watch all this widget codes
  @override
  Widget build(BuildContext context) {
    String? tagValue;
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        state.whenOrNull(
          succes: () {
            Navigator.pop(context);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          succes: () {
            return const Center(
              child: Icon(
                Icons.library_add_check_outlined,
                size: 85,
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (errorMessage) {
            return const Center(child: Text('Error Post'));
          },
          orElse: () {
            return ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AppSvgs.x,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  Language.of(context).newsCover,
                  style: AppTextStyles.w400size16,
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 33),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      backgroundColor: context.colors.textWhiteFFFFFF,
                    ),
                    onPressed: () {
                      //todo ImagePicker
                      Navigator.pop(context);
                    },
                    label: Text(
                      Language.of(context).download,
                      style: AppTextStyles.w400size14.copyWith(
                        color: context.colors.textBlack000000,
                      ),
                    ),
                    icon: SvgPicture.asset(
                      AppSvgs.download,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  Language.of(context).header,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 38,
                  width: 260,
                  child: AppTextField(
                    controller: postTitleController,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  Language.of(context).shortDescription,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 38,
                  width: 260,
                  child: AppTextField(
                    controller: postDescriptionController,
                  ),
                ),
                const SizedBox(height: 16),
                Text(Language.of(context).newsText),
                const SizedBox(height: 8),
                SizedBox(
                    height: 95,
                    width: double.infinity,
                    child: AppTextField(
                      controller: postTextController,
                      //todo maxLines: ???????
                      maxLines: 9000,
                      inputType: TextInputType.multiline,
                    )),
                const SizedBox(height: 16),
                Text(
                  Language.of(context).selectCategory,
                ),
                const SizedBox(height: 8),

                Container(
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: context.colors.textFieldsDEDCE4,
                      width: 1,
                    ),
                  ),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(5),
                    elevation: 2,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                    iconSize: 30,
                    isExpanded: true,
                    items:
                        chooseCategory.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Row(
                      children: [
                        SizedBox(width: 12),
                        Text("Не выбрано", style: AppTextStyles.w400size16),
                      ],
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        tagValue = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 6),
                //todo Extract widget
                Row(
                  children: [
                    Chip(
                      elevation: 8,
                      backgroundColor: context.colors.textWhiteFFFFFF,
                      shadowColor: context.colors.textFieldsDEDCE4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text(
                        '#${Language.of(context).notChosen}',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 38),
                Center(
                  child: SizedBox(
                    height: 30,
                    width: 192,
                    child: AppButton(
                      text: Language.of(context).create,
                      onPressed: () {
                        bloc.add(LoadPost.loadPostData(
                          token: '',
                          postTitle: postTitleController.text,
                          postText: postTextController.text,
                          postImage: postImageController.text,
                          postTag: chooseCategory.first,
                          postDescription: postDescriptionController.text,
                        ));
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
