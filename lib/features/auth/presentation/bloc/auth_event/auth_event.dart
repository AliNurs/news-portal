part of '../auth_bloc/auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendAuthData({
    required String nickname,
    required String password,
  }) = _SendAuthData;
  const factory AuthEvent.getUserData({
    required String token,
  }) = _GetUserData;
  const factory AuthEvent.updateUserData({
    required String newNickname,
    required String newName,
    required String newLastName,
    String? profileImage,
  }) = _UpdateUserData;
}
