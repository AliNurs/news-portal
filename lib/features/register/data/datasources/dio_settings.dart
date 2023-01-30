import 'package:dio/dio.dart';
import 'dart:developer';

import 'package:flutter/foundation.dart';

class DioSettings {
  DioSettings() {
    setUp();
  }
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://megalab.pythonanywhere.com/',
      connectTimeout: 15000,
      receiveTimeout: 15000,
    ),
  );

  void setUp() {
    final interceptors = dio.interceptors;

    interceptors.clear();

    final logInterceptor = LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    );

    final headerInterseptors = QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        log('ON REQUEST');
        return handler.next(options);
      },
      onError: (DioError error, handler) {
        log('ON ERROR');
        // ShowSnackBar.showError(error.message);
        log('BOOM${error.message}');

        handler.next(error);
      },
      onResponse: (response, handler) {
        log('ON Response');
        return handler.next(response);
      },
    );

    interceptors.addAll(
      [
        // todo
        if (kDebugMode) logInterceptor,

        headerInterseptors,
      ],
    );
  }
}
