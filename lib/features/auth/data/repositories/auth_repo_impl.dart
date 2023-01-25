import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/auth/data/models/user_model/user_model.dart';
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<AuthRepoResponse> sendAuthData({
    required String nickname,
    required String password,
  }) async {
    try {
      final formData = FormData.fromMap({
        'nickname': nickname,
        'password': password,
      });
      final response = await dio.post(
        'login/',
        data: formData,
      );

      return AuthRepoResponse(token: response.data['token']);
    } on DioError catch (error) {
      return AuthRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }

  @override
  Future<GetUserRepoResponse> getUserData({
    required String token,
  }) async {
    try {
      final response = await dio.get(
        'user/',
        options: Options(headers: {
          'Authorization': 'Token ',
        }),
      );
      final db = UserModel.fromJson(response.data);
      return GetUserRepoResponse(userModel: db);
    } on DioError catch (error) {
      return GetUserRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }

  @override
  Future<UpdateUserRepoResponse> updateUserData({
    required String newNickname,
    required String newName,
    String? profileImage,
    required String newLastName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'nickname': newNickname,
        'namw': newName,
        'last_name': profileImage,
        'profile_image': newLastName,
      });
      final response = await dio.post(
        'login/',
        data: formData,
      );

      return UpdateUserRepoResponse(token: response.data['token']);
    } on DioError catch (error) {
      return UpdateUserRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }
}
