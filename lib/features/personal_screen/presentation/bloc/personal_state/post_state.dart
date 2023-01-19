part of '../personal_bloc/post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.loading() = _Loading;
  const factory PostState.succes() = _Succes;
  const factory PostState.error() = _Error;
  const factory PostState.initial() = _Initial;
}
