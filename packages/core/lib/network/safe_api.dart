import 'dart:io';

import 'package:dio/dio.dart';

import '../base/base_response.dart';
import '../error/error.dart';


Future<T> safeApiCall<T>(Future<T> apiRequest) async {
  try {
    final result = await apiRequest;
    return result;
  } on LocationException catch (_) {
    rethrow;
  } on DioException catch (error) {
    throw _handleError(error);
  } on SocketException catch (e) {
    throw UnknownFailure(message: e.message);
  } on FormatException catch (e) {
    throw UnknownFailure(message: e.message);
  } catch (e) {
    throw UnknownFailure(message: e.toString());
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionError:
      return InternetConnectionFailure();

    case DioExceptionType.connectionTimeout:
      return ConnectionTimeoutFailure();

    case DioExceptionType.receiveTimeout:
      return ReceiveTimeoutFailure();

    case DioExceptionType.sendTimeout:
      return SendTimeoutFailure();

    case DioExceptionType.cancel:
      return RequestCanceledFailure();

    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null) {
        try {
          final errorResponse = BaseResponse.fromJson(error.response?.data,(json) => json as String);
          return UnknownFailure(message: errorResponse.message??"Something went wrong!!");
        } catch (e) {
          return UnknownFailure();
        }
      }
      break;
    default:
      return UnknownFailure();
  }
  return UnknownFailure();
}