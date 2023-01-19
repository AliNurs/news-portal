// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/core/error/app_error.dart';

abstract class RegisterRepo {
  Future<RegisterRepoResponse> sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  });
}

 

class RegisterRepoResponse {
  final AppError? error;
  final String? succesRegistration;
  RegisterRepoResponse({this.error, this.succesRegistration});
}