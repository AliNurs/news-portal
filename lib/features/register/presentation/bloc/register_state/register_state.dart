part of'../register_bloc/register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.succes() = _Succes;
  const factory RegisterState.error() = _Error;
  const factory RegisterState.initial() = _Initial;
}