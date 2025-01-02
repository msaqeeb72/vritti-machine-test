import 'package:dio/dio.dart';

class LocationException extends DioException{
  String message;
  int errorCode;
  LocationException({
    required super.requestOptions,
    this.message = "Unable to detect location.",
    this.errorCode = 0
  });

}