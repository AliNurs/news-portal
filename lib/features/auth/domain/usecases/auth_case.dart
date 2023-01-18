// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:megalab/features/auth/domain/repositories/auth_repo.dart';

class AuthCase {
  AuthCase({required this.authRepo});
  final AuthRepo authRepo;

  Future<String> sendAuthData({
    required String nickname,
    required String password,
  }) async{
  return await  authRepo.sendAuthData(
      nickname: nickname,
      password: password,
    );
    
  }
}
