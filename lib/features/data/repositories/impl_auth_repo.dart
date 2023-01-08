import 'package:dio/dio.dart';
import 'package:megalab/features/domain/repositories/base_auth_repo.dart';

class ImplAuthRepo implements BaseAuthRepo {
  ImplAuthRepo({required this.dio});

  final Dio dio;

  @override
  sendAuthData({
    required String nickname,
    required String password,
  }) {
    dio.get('path');
  }
}
