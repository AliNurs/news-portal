// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';

class AuthCase {
  AuthCase({required this.authRepo});
  final AuthRepo authRepo;

  Future<AuthRepoResponse> sendAuthData({
    required String nickname,
    required String password,
  }) async {
    final result = await authRepo.sendAuthData(
      nickname: nickname,
      password: password,
    );
    if (result.token != null) {
      return AuthRepoResponse(token: result.token);
    }
    return AuthRepoResponse(error: result.error);
  }

  Future<GetUserRepoResponse> getUserData({
    required String token,
  }) async {
    final result = await authRepo.getUserData(
      token: token,
    );
    if (result.userModel != null) {
      return GetUserRepoResponse(userModel: result.userModel);
    }
    return GetUserRepoResponse(error: result.error);
    // final UserModel? userModel;
  }

  Future<UpdateUserRepoResponse> updateUSerData({
    required String newNickname,
    required String newName,
    String? profileImage,
    required String newLastName,
  }) async {
    return await authRepo.updateUserData(
      newLastName: newNickname,
      newName: newName,
      newNickname: newLastName,
      profileImage: profileImage,
    );
  }
}
