// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:megalab/features/register/domain/repositories/register_repo.dart';

class RegisterCase {
  RegisterCase({
    required this.registerRepo,
  });
  final RegisterRepo registerRepo;

  Future<RegisterRepoResponse> sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  }) async {
    return registerRepo.sendRegisterData(
      nickname: nickname,
      name: name,
      lastName: lastName,
      profileImage: '',
      password: password,
      confirmPassword: confirmPassword,
    );
  }
}
