import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../base/base_response.dart';
import '../base/base_response_list.dart';
import 'dio_config.dart';
import 'interceptor/location_interceptor.dart';

typedef SerializerListFunction<T> = T Function(List<dynamic>);

typedef SerializerMapFunction<T> = T Function(Map<String, dynamic>);

typedef SerializerStringFunction<T> = T Function(T);

typedef FromJsonFunction<T> = T Function(dynamic);

const int _kRequestTimeOutSeconds = 60;
const int _kSendTimeOutSeconds = 60;
const int _kConnectTimeOutSeconds = 60;

class DioClient extends DioConfig {
  late Dio dio;

  DioClient({Dio? dioOverride}) {
    dio = dioOverride ?? Dio(baseOptions);
    dio.interceptors.addAll(interceptors);
  }

  /// The Dio base options
  BaseOptions get baseOptions => BaseOptions(
    baseUrl: baseUrl,
    //headers: headers,
    receiveTimeout: const Duration(
      seconds: _kRequestTimeOutSeconds,
    ),
    sendTimeout: const Duration(
      seconds: _kSendTimeOutSeconds,
    ),
    connectTimeout: const Duration(
      seconds: _kConnectTimeOutSeconds,
    ),
  );

  @override
  Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json'
  };

  @override
  String get baseUrl => "";

  @override
  List<Interceptor> get interceptors => [
    CurlLoggerDioInterceptor(printOnSuccess: !kReleaseMode),
    PrettyDioLogger(
        requestHeader: !kReleaseMode,
        requestBody: !kReleaseMode,
        responseBody: !kReleaseMode,
        responseHeader: !kReleaseMode,
        compact: !kReleaseMode)
  ];

  Future<T> post<T>(
      String uri, {
        required data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction,
      }) async {
    try {
      final result = await dio.post(uri,
          data: data,
          options: options,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> get<T>(
      String uri, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction,
      }) async {
    try {
      final result = await dio.get(uri,
          data: data,
          options: options,
          onReceiveProgress: onReceiveProgress,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> getAll<T>(String uri,
      {data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction}) async {
    try {
      final result = await dio.get(uri,
          data: data,
          options: options,
          onReceiveProgress: onReceiveProgress,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson<T>(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> put<T>(
      String uri, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction,
      }) async {
    try {
      final result = await dio.put(uri,
          data: data,
          options: options,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson<T>(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> patch<T>(
      String uri, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction,
      }) async {
    try {
      final result = await dio.patch(uri,
          data: data,
          options: options,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson<T>(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> delete<T>(
      String uri, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
        required SerializerMapFunction<T> serializerMapFunction,
      }) async {
    try {
      final result = await dio.delete(uri,
          data: data,
          options: options,
          cancelToken: cancelToken,
          queryParameters: queryParameters);

      return _decodedJson<T>(result.data, serializerMapFunction);
    } catch (e) {
      rethrow;
    }
  }
}

Future<T> _decodedJson<T>(
    dynamic data, SerializerMapFunction<T> serializerMapFunction) async {
  return serializerMapFunction.call(data);
}

T? parseResponse<T>(dynamic json, T Function(dynamic) fromJson) {
  final baseResponse = BaseResponse<T?>.fromJson(json, fromJson);
  return baseResponse.data;
}

List<T?> parseResponseList<T>(dynamic json, FromJsonFunction<T> fromJson) {
  // Assuming the json represents a BaseResponseList<T>
  final baseResponseList = BaseResponseList<T?>.fromJson(json, fromJson);

  // Return the payload list from the BaseResponseList
  return baseResponseList.data;
}