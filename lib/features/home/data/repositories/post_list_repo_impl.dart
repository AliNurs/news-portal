import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/home/data/model/post_list_model.dart';
import 'package:megalab/features/home/domain/repositories/post_list_repo.dart';

class PostListRepoImpl implements PostListRepo {
  PostListRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<PostListRepoResponse> getPostList({
    required String search,
    required String tag,
    required String author,
  }) async {
    try {
      log('TAG $tag');
      final response = await dio.get(
        'post/',
        queryParameters: {
          'search': search,
          'tag': tag,
          'author': author,
        },
      );
      final data = PostListModel.fromJson(response.data);

      return PostListRepoResponse(postListModel: [data]);
    } on DioError catch (error) {
      return PostListRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }
}
