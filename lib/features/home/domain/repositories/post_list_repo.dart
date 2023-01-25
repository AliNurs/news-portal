// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/home/data/model/get_post_list_model/get_post_list_model.dart';

abstract class PostListRepo {
  Future<PostListRepoResponse> getPostList({
    required String search,
    required String tag,
    required String author,
    required String token,
  });
}

class PostListRepoResponse {
  final AppError? error;
  final List<GetPostListModel>? getPostListModel;
  PostListRepoResponse({this.error, this.getPostListModel});
}
