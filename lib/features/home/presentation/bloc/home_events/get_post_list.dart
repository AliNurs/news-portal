part of '../home_bloc/post_list_bloc.dart';

@freezed
class GetPostList with _$GetPostList {
  const factory GetPostList.getPostList({
    required String search,
    required String tag,
    required String author,
  }) = _GetPostList;
}
