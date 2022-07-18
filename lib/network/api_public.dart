
import 'package:school_erp/models/data_login.dart';

class ApiBasicPublic {
  ApiBasicPublic({
    this.code,
    this.message,
  });

  int? code;
  String? message;

  // ignore: always_specify_types
  factory ApiBasicPublic.fromJson(Map<String, dynamic> json) => ApiBasicPublic(
    code: json['code'] as int?,
    message: json['message'] as String?,
  );
}

class ApiPublic<T> {
  ApiPublic({
    this.code,
    this.data,
    this.message,
  });

  int? code;
  T? data;
  String? message;

  // ignore: always_specify_types
  factory ApiPublic.fromJson(Map<String, dynamic> json) => ApiPublic(
    code: json['code'] as int?,
    data: fromJsonPublic<T>(json['data'] as Map<String, dynamic>?),
    message: json['message'] as String?,
  );
}

// ignore: missing_return
T fromJsonPublic<T>(Map<String, dynamic>? json) {
  if (T == DataLogin) {
    return DataLogin.fromJson(json!) as T;
  } else {
    throw Exception('Unknown class');
  }
}

class DataCheckPhoneExist {
  DataCheckPhoneExist({
    this.existed,
  });

  bool? existed;

  factory DataCheckPhoneExist.fromJson(Map<String, dynamic> json) =>
      DataCheckPhoneExist(
        existed: json['existed'] as bool?,
      );
}

class DataEmpty {
  DataEmpty();
  factory DataEmpty.fromJson(Map<String, dynamic>? json) => DataEmpty();
}
