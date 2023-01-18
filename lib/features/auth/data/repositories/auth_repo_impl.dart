import 'package:dio/dio.dart';
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl({required this.dio});

  final Dio dio;

  @override
  Future<String> sendAuthData({
    required String nickname,
    required String password,
  }) async {
    final result = await dio.get('login/');
    return result.data['token'];
  }
}
