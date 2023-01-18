// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:megalab/features/News/domain/usecases/News_case.dart';

part '../news_events/news_events.dart';
part '../news_state/news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvents, NewsState> {
  NewsBloc(
      // {
      // required this.usecase,
      // }
      )
      : super(const NewsState.initial()) {
    // on<NewsEvents>((event, emit) {
    // emit(const NewsState.loading());

    // try {
    // final result = usecase.sendNewsData(
    // title: event.title,
    // text: event.text,
    // image: event.image,
    // tag: event.tag,
    // shortDesc: event.shortDesc,
    // );
    //   emit(const NewsState.succes());
    // } catch (e) {
    //   emit(const NewsState.error());
    //   log(e.toString());
    // }
    // });
  }
  // final NewsCase usecase;
}

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.succes() = _Succes;
  const factory NewsState.error() = _Error;
  const factory NewsState.initial() = _Initial;
}

@freezed
class NewsEvents with _$NewsEvents {
  const factory NewsEvents.sendNewsData(
      //   required String title,
      //   required String text,
      //    String image,
      //  required String? tag,
      //   required String short_desc,

      ) = _SendNewsData;
}
