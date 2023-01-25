// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/core/error/app_error.dart';
import 'package:megalab/features/auth/data/models/user_model/user_model.dart';

abstract class AuthRepo {
  Future<AuthRepoResponse> sendAuthData({
    required String nickname,
    required String password,
  });
  Future<GetUserRepoResponse> getUserData({
     required String token,
  });
  Future<UpdateUserRepoResponse> updateUserData({
    required String newNickname,
    required String newName,
     String? profileImage,
    required String newLastName,
  });
}

class AuthRepoResponse {
  final AppError? error;
  final String? token;
  AuthRepoResponse({this.error, this.token});
}
class GetUserRepoResponse {
  final AppError? error;
  final UserModel? userModel;
  GetUserRepoResponse({this.error, this.userModel});
}
class UpdateUserRepoResponse {
  final AppError? error;
  final String? token;
  UpdateUserRepoResponse({this.error, this.token});
}
