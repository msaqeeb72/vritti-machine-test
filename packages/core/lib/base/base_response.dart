import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';
@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  int? statusCode;
  @JsonKey(name: "error")
  @JsonKey(name: "message")
  String? message;
  bool? isSuccess;
  T? data;

  BaseResponse({
    this.statusCode,
    this.message,
    this.isSuccess,
    this.data,
  });

  // Factory constructor to handle the deserialization of the generic type T
  factory BaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return _$BaseResponseFromJson(json, fromJsonT);
  }

  // Method for serializing to JSON
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$BaseResponseToJson(this, toJsonT);
  }
}