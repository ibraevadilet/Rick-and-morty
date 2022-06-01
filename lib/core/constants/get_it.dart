import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_test/features/data/dio_interceptor.dart';

class GetItService {
  static final Dio service = GetIt.I<ApiRequester>().dio;
}
