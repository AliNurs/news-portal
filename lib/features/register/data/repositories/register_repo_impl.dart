import 'package:dio/dio.dart';
import 'package:megalab/features/register/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  RegisterRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<String> sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  }) async {
    final result = await dio.post(
      'registration/',
      queryParameters: {
        'nickname': nickname,
        'name': name,
        'last_name': lastName,
        'profile_image': profileImage,
        'password': password,
        'password2': confirmPassword,
      },
    );
    if (result.statusCode == 200) {
      return 'Succes';
    } else if (result.statusCode == 500) {
      return 'Error from Server';
    }
    return 'Неправильный запрос';
  }
}
