// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/core/error/app_error.dart';

abstract class AuthRepo {
  Future<AuthRepoResponse> sendAuthData({
    required String nickname,
    required String password,
  });
}

class AuthRepoResponse {
  final AppError? error;
  final String? token;
  AuthRepoResponse({this.error, this.token});
}
