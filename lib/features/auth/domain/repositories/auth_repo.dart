abstract class AuthRepo {
  Future<String> sendAuthData({
    required String nickname,
    required String password,
  });
}
