import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/home/data/model/get_post_list_model/get_post_list_model.dart';
import 'package:megalab/features/home/data/model/post_list_model.dart';
import 'package:megalab/features/home/domain/repositories/post_list_repo.dart';
import 'dart:developer';

class PostListRepoImpl implements PostListRepo {
  PostListRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<PostListRepoResponse> getPostList({
    required String search,
    required String tag,
    required String author,
    required String token,
    // String token = 'Token 9779d9cb2bc0b279ed329003b4d1c71e42adf423',
  }) async {
    try {
      log('TAG $token');
      final response = await dio.get(
        'post/',
        queryParameters: {
          'search': search,
          'tag': tag,
          'author': author,
        },
        options: Options(headers: {
          'Authorization': 'Token $token',
        }),
      ); // final data = [ Model.fromJson( response.data as Map<String, dynamic> ) ];
      final data = [
        GetPostListModel.fromJson(response.data as Map<String, dynamic>)
      ];

      return PostListRepoResponse(getPostListModel: data);
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
