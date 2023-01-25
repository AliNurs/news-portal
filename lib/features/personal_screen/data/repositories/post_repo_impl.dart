import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/personal_screen/data/models/post_data_class_model.dart';
import 'package:megalab/features/personal_screen/domain/repositories/post_repo.dart';

class PostRepoImpl implements PostRepo {
  PostRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<PostRepoResponse> loadPostData({
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
    String token = 'Token 9779d9cb2bc0b279ed329003b4d1c71e42adf423',
  }) async {
    try {
      final formData = FormData.fromMap({
        'Authorization': token,
        'title': postTitle,
        'text': postText,
        'image': postImage,
        'tag': postTag,
        'short_desc': postDescription,
      });
      final response = await dio.post(
        'post/',
        data: formData,
        options: Options(headers: {
          'Authorization': token,
        }),
      );

      return PostRepoResponse(
          succesPosted: response.statusCode.toString() ?? 'Uraa SuccesPosted');
    } on DioError catch (error) {
      return PostRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }
}
