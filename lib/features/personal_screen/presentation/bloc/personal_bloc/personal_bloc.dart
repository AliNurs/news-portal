// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:megalab/features/personal/domain/usecases/personal_case.dart';

part '../personal_events/personal_events.dart';
part '../personal_state/personal_state.dart';
part 'personal_bloc.freezed.dart';

class PersonalBloc extends Bloc<PersonalEvents, PersonalState> {
  PersonalBloc(
      // {
      // required this.usecase,
      // }
      )
      : super(const PersonalState.initial()) {
    // on<PersonalEvents>((event, emit) {
    // emit(const PersonalState.loading());

    // try {
    // final result = usecase.sendpersonalData(
    // title: event.title,
    // text: event.text,
    // image: event.image,
    // tag: event.tag,
    // shortDesc: event.shortDesc,
    // );
    //   emit(const PersonalState.succes());
    // } catch (e) {
    //   emit(const PersonalState.error());
    //   log(e.toString());
    // }
    // });
  }
  // final personalCase usecase;
}

@freezed
class PersonalState with _$PersonalState {
  const factory PersonalState.loading() = _Loading;
  const factory PersonalState.succes() = _Succes;
  const factory PersonalState.error() = _Error;
  const factory PersonalState.initial() = _Initial;
}

@freezed
class PersonalEvents with _$PersonalEvents {
  const factory PersonalEvents.sendPersonalData({
    required String title,
    required String text,
    String? image,
    required String? tag,
    required String shortDesc,
  }) = _SendPersonalData;
}
