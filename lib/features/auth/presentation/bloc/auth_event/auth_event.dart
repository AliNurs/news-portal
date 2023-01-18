part of '../auth_bloc/auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendAuthData({
    required String nickname,
    required String password,
  }) = _SendAuthData;
}
