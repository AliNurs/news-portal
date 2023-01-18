// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:megalab/features/home/domain/usecases/Home_case.dart';

// part '../home_events/home_events.dart';
// part '../home_state/home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  HomeBloc(
      // {
      // required this.usecase,
      // }
      )
      : super(const HomeState.initial()) {
    // on<HomeEvents>((event, emit) {
    // emit(const HomeState.loading());

    // try {
    // final result = usecase.sendHomeData(
    // title: event.title,
    // text: event.text,
    // image: event.image,
    // tag: event.tag,
    // shortDesc: event.shortDesc,
    // );
    //   emit(const HomeState.succes());
    // } catch (e) {
    //   emit(const HomeState.error());
    //   log(e.toString());
    // }
    // });
  }
  // final HomeCase usecase;
}

@freezed
class HomeEvents with _$HomeEvents {
  const factory HomeEvents.sendHomeData(
      //   required String title,
      //   required String text,
      //    String image,
      //  required String? tag,
      //   required String short_desc,

      ) = _SendHomeData;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.succes() = _Succes;
  const factory HomeState.error() = _Error;
  const factory HomeState.initial() = _Initial;
}
