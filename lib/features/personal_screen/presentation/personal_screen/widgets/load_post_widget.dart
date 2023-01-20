// ignore_for_file: must_be_immutable, sort_child_properties_last

part of '../personal_screen.dart';

class LoadPostWidget extends StatelessWidget {
  LoadPostWidget({
    Key? key,
  }) : super(key: key);

  final postTitleController = TextEditingController();
  final postTextController = TextEditingController();
  final postImageController = TextEditingController();
  final postTagController = TextEditingController();
  final postDescriptionController = TextEditingController();

  final bloc = sl<PostBloc>();
  List<String> chooseCategory = [
    'Не выбрано',
    'выбрано',
    'no выбрано',
    'nе выбрано',
  ];
//TODO  Again Watch all this widget codes
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<PostBloc, PostState>(
        listener: (context, state) {
          state.whenOrNull(
            succes: () {
              Future.delayed(const Duration(seconds: 3));
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
            error: () {
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
                      menuMaxHeight: 165,
                      borderRadius: BorderRadius.circular(5),
                      elevation: 2,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 30,
                      underline: const SizedBox(),
                      isExpanded: true,
                      hint: Row(
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            Language.of(context).notChosen,
                          ),
                        ],
                      ),
                      items: chooseCategory
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(
                                e,
                                style: TextStyle(
                                    color: context.colors.textBlack000000),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (val) {},
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
                            postTag: postTagController.text,
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
      ),
    );
  }
}
