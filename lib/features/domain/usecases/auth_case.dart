// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/features/domain/repositories/base_auth_repo.dart';

class AuthCase {
  AuthCase({required this.authRepo});
  final BaseAuthRepo authRepo;

  sendAuthData({
    required String nickname,
    required String password,
  }) {
    authRepo.sendAuthData(nickname: nickname, password: password);
  }
}
