part of 'register_bloc/register_bloc.dart';

@freezed
class RegisterEvents with _$RegisterEvents {
  const factory RegisterEvents.sendRegisterData({
    required String nickname,
    required String name,
    required String lastName,
    String? profileImage,
    required String password,
    required String confirmPassword,
  }) = _SendRegisterData;
}
