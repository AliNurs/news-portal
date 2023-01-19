part of '../auth_bloc/auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.succes({required String token}) = _Succes;
  const factory AuthState.error({String? errorText}) = _Error;
  const factory AuthState.initial() = _Initial;
}
