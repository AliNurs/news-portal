import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.loading());
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.succes() = _Succes;
  const factory AuthState.error() = _Error;
  const factory AuthState.initial() = _Initial;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendAuthData({
    required String nickname,
    required String password,
  }) = _SendAuthData;
}
