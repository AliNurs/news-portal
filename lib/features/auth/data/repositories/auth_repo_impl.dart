import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
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
}
