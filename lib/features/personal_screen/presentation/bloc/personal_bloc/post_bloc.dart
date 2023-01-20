// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megalab/features/personal_screen/domain/usecases/post_case.dart';

part '../personal_events/load_post.dart';
part '../personal_state/post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<LoadPost, PostState> {
  PostBloc({
    required this.usecase,
  }) : super(const PostState.initial()) {
    on<_LoadPostData>((event, emit) async {
      emit(const PostState.loading());
      final result = await usecase.loadPostData(
          token: event.token,
          postTitle: event.postTitle,
          postText: event.postText,
          postTag: event.postTag,
          postDescription: event.postDescription);
      if (result.succesPosted != null) {
        emit(const PostState.succes());
      } else {
        emit(const PostState.error());
      }
    });
  }
  final LoadPostCase usecase;
}
