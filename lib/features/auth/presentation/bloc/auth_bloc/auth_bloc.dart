// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megalab/features/auth/data/models/user_model/user_model.dart';

import 'package:megalab/features/auth/domain/usecases/auth_case.dart';

part '../auth_event.dart';
part '../auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.usecase,
  }) : super(
          const AuthState.succes(token: ''),
        ) {
    on<_SendAuthData>((event, emit) async {
      emit(const AuthState.loading());
      Future.delayed(const Duration(seconds: 2));

      final result = await usecase.sendAuthData(
        nickname: event.nickname,
        password: event.password,
      );
      if (result.token != null) {
        emit(AuthState.succes(token: result.token ?? ''));
      } else {
        if (result.error?.statusCode != null) {
          emit(AuthState.error(
              errorText: result.error?.statusCode.toString() ?? ''));
        }
        if (result.error?.text != null) {
          emit(AuthState.error(errorText: result.error?.text ?? ''));
        }
      }
    });
    on<_GetUserData>((event, emit) async {
      emit(const AuthState.loading());
      Future.delayed(const Duration(seconds: 2));

      final result = await usecase.getUserData(token: event.token);
      if (result.userModel != null) {
        // emit(AuthState.succes(result.userModel ?? ''));
      } else {
        emit(AuthState.error(errorText: result.error?.text ?? ''));
      }
    });
  }
  final AuthCase usecase;
}
