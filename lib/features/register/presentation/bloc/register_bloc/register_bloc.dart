// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:megalab/features/register/domain/usecases/register_case.dart';

part '../register_events/register_events.dart';
part '../register_state/register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterState> {
  RegisterBloc({required this.usecase}) : super(const RegisterState.initial()) {
    on<RegisterEvents>((event, emit) {
      emit(const RegisterState.loading());

      try {
        final result = usecase.sendRegisterData(
          nickname: event.nickname,
          name: event.name,
          lastName: event.lastName,
          profileImage: '',
          password: event.password,
          confirmPassword: event.confirmPassword,
        );
        emit(const RegisterState.succes());
      } catch (e) {
        emit(const RegisterState.error());
        log(e.toString());
      }
    });
  }
  final RegisterCase usecase;
}
