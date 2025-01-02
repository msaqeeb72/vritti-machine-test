class BaseResponseList<T> {
  int statusCode;
  String message;
  bool isSuccess;
  List<T?> data; // Use a list for payload

  BaseResponseList(
      {required this.statusCode,
        required this.message,
        required this.data,
        required this.isSuccess});

  // Factory method to create an instance from a JSON map
  factory BaseResponseList.fromJson(
      Map<String, dynamic> json,
      T Function(dynamic) fromJson,
      ) {
    return BaseResponseList(
      statusCode: json['response_code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: _parseData(json['data'], fromJson),
    );
  }

  static List<T?> _parseData<T>(dynamic json, T Function(dynamic) fromJson) {
    if (json is List) {
      return json
          .map((item) => fromJson(item))
          .toList(); // Parse each item in the list
    } else {
      return []; // Return an empty list for non-list payloads
    }
  }
}