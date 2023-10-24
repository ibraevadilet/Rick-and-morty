import 'package:dio/dio.dart';

class CatchException {
  CatchException({required this.message});
  final String message;

  static CatchException convertException(dynamic error) {
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return CatchException(message: 'Ошибка подключения');
      } else if (error.type == DioExceptionType.receiveTimeout) {
        return CatchException(message: 'Ошибка подключения');
      } else if (error.response == null) {
        return CatchException(message: 'Нет интернет соединения');
      } else {
        return CatchException(message: error.response!.data!['error']);
      }
    }
    if (error is CatchException) {
      return error;
    } else {
      return CatchException(message: 'Произошла системная ошибка');
    }
  }
}
