import 'package:dio/dio.dart';
import 'package:rick_test/core/constants/main_url.dart';

import 'exceptions.dart';

class ApiRequester {
  Dio dio = Dio(
    BaseOptions(
        baseUrl: MainUrl.mainUrl,
        responseType: ResponseType.json,
        connectTimeout: 25000,
        receiveTimeout: 35000),
  );

  initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }, onError: (DioError e, handler) async {
      CatchException.convertException(e);
      return handler.next(e);
    }));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }

  ApiRequester() {
    initialSettings();
  }
}
