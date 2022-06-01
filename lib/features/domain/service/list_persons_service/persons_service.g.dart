// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PersonsService implements PersonsService {
  _PersonsService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ListPersonsModel> personsService(page, name, status, gender) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        ListPersonsModel>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'character?page=${page}&name=${name}&status=${status}&gender=${gender}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListPersonsModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
