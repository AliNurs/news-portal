import 'package:megalab/core/error/app_error.dart';

abstract class PostRepo {
  Future<PostRepoResponse> loadPostData({
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
  });
}

class PostRepoResponse {
  final AppError? error;
  final String? succesPosted;
  PostRepoResponse({this.error, this.succesPosted});
}
