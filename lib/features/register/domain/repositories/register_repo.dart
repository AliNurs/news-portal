abstract class RegisterRepo {
Future<String>  sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  });
}
