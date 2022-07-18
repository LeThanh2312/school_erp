import 'package:dio/dio.dart';
import 'package:school_erp/models/data_login.dart';
import 'package:school_erp/network/api_public.dart';


class SignInAcountNetwork{
  final Dio _dio = Dio();

  Future<DataLogin> login(String email, String password) async {
    try {
      Response<dynamic> response = await _dio.post(
        'https://api.loginradius.com/identity/v2/auth/login',
        data: {
          'email': email,
          'password': password
        },
        queryParameters: {'apikey': 'YOUR_API_KEY'},
      );
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}