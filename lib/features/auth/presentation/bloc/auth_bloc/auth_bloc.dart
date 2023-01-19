import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megalab/features/auth/domain/usecases/auth_case.dart';
part '../auth_state/auth_state.dart';
part '../auth_event/auth_event.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.usecase}) : super(const AuthState.succes(token: '')) {
    on<AuthEvent>((event, emit) async {
      emit(const AuthState.loading());

      final result = await usecase.sendAuthData(
        nickname: event.nickname,
        password: event.password,
      );
      if (result.token != null) {
        emit(AuthState.succes(token: result.token ?? ''));
      } else {
        emit(AuthState.error(errorText: result.error?.text ?? ''));
      }
    });
  }
  final AuthCase usecase;
}
