import 'package:dio/dio.dart';
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/register/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  RegisterRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<RegisterRepoResponse> sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final formData = FormData.fromMap({
        'nickname': nickname,
        'name': name,
        'last_name': lastName,
        'profile_image': profileImage,
        'password': password,
        'password2': confirmPassword,
      });

      final result = await dio.post(
        'registration/',
        data: formData,
      );
      return RegisterRepoResponse(succesRegistration: 'Uraa Succes');
    } on DioError catch (error) {
      return RegisterRepoResponse(
        error: AppError(
          statusCode: error.response?.statusCode,
          text: error.message,
        ),
      );
    }
  }
}
