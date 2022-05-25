import 'package:dio/dio.dart';
import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/types/login_response.dart';
import 'package:epilepsy/types/login_verify_response.dart';

import 'api_service.dart';

class AuthService {
  static final _dio = ApiService.dio;

  static Future<LoginResponse> login({required String phone}) async {
    try {
      final payload = {'phone': phone};
      final data = await _dio.post(Api.login, data: payload);
      return LoginResponse.fromJson(data.data);
    } catch (e) {
      // final errMsg = e.response?.data['message'];
      throw Exception(e);
    }
  }

  static Future<LoginVerifyResponse> loginVerify({
    required int userId,
    required Map payload,
  }) async {
    try {
      final data = await _dio.put(
        Api.loginVerify(userId),
        data: payload,
      );
      print(data);
      return LoginVerifyResponse.fromJson(data.data);
    } on DioError catch (e) {
      final errMsg = e.response?.data['message'];
      throw Exception(errMsg);
    } catch (e) {
      // final errMsg = e.response?.data['message'];
      throw Exception(e);
    }
  }

  static Future<LoginResponse> resendCode({required int userId}) async {
    try {
      final data = await _dio.put(Api.smsResend(userId));
      return LoginResponse.fromJson(data.data);
    } on DioError catch (e) {
      final errMsg = e.response?.data['message'];
      throw Exception(errMsg);
    } catch (e) {
      throw Exception(e);
    }
  }
}