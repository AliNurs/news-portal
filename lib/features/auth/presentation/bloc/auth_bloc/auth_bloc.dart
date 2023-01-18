import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megalab/features/auth/domain/usecases/auth_case.dart';
part '../auth_state/auth_state.dart';
part '../auth_event/auth_event.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.usecase}) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthState.loading());

      try {
        final result = usecase.sendAuthData(
          nickname: event.nickname,
          password: event.password,
        );
        emit(const AuthState.succes());
      } catch (e) {
        emit(const AuthState.error());
        log(e.toString());
      }
    });
  }
  final AuthCase usecase;
}
