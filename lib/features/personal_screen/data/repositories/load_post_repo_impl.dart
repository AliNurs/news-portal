import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/personal_screen/data/models/post_data_class_model.dart';
import 'package:megalab/features/personal_screen/domain/repositories/load_post_repo.dart';

class LoadPostRepoImpl implements LoadPostRepo {
  LoadPostRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<LoadPostRepoResponse> loadPostData({
    required String token,
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
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
      );

      final data = PostModel.fromJson(response.data);
      return LoadPostRepoResponse(postModel: data);
    } on DioError catch (error) {
      return LoadPostRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }
}
