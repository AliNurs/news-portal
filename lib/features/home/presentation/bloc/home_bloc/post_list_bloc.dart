// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megalab/features/home/data/model/post_list_model.dart';
import 'package:megalab/features/home/domain/usecases/post_list_case.dart';

part '../home_events/get_post_list.dart';
part '../home_state/post_list_state.dart';
part 'post_list_bloc.freezed.dart';

class PostListBloc extends Bloc<GetPostList, PostListState> {
  PostListBloc({required this.usecase})
      : super(
          const PostListState.succes(),
        ) {
    on<GetPostList>((event, emit) async {
      emit(const PostListState.loading());
      final result = await usecase.getPostList(
        search: event.search,
        tag: event.tag,
        author: event.author,
      );
      if (result.postListModel != null) {
        emit(PostListState.succes(postListModel: result.postListModel));
      } else {
        emit(PostListState.error(errorMessage: result.error!.text));
      }
    });
  }
  final PostListCase usecase;
}
