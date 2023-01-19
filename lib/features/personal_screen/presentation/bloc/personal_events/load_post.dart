part of '../personal_bloc/post_bloc.dart';

@freezed
class LoadPost with _$LoadPost {
  const factory LoadPost.loadPostData({
    required String token,
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
  }) = _LoadPostData;
}
