import 'package:dio/dio.dart';

class CatchException {
  String message;

  CatchException({required this.message});

  static CatchException convertException(dynamic error) {
    if (error == "There is nothing here") {
      return CatchException(message: 'There is nothing here');
    }
    if (error is DioError && error.error is CatchException) {
      return error.error;
    }
    if (error is DioError) {
      if (error.type == DioErrorType.connectTimeout) {
        // print("DioofError - ${error.error}");
        return CatchException(
            message: 'Привышено время обработки запроса. Повторите позднее');
      } else if (error.type == DioErrorType.receiveTimeout) {
        return CatchException(
            message: 'Привышено время обработки запроса. Повторите позднее');
      } else if (error.response == null) {
        return CatchException(message: 'Нет интернет соеденения');
      } else if (error.response!.statusCode == 404) {
        return CatchException(message: "There is nothing here");
      } else if (error.response!.statusCode == 409) {
        return CatchException(message: error.response!.data["message"]);
      } else if (error.type == DioErrorType.response) {
        if (error.response!.statusCode == 500) {
          return CatchException(message: error.response!.data["message"]);
        }
        return CatchException(message: error.response!.data);
      } else if (error.type == DioErrorType.other) {
        return CatchException(message: 'Проверьте интернет соединение');
      } else {
        throw CatchException(message: 'Произошла системная ошибка');
      }
    }
    if (error is CatchException) {
      return error;
    } else {
      return CatchException(message: 'Произошла системаная ошибка');
    }
  }
}
