import 'package:dio/dio.dart';
import 'package:epilepsy/domain/api_service.dart';
import 'package:epilepsy/infrastracture/auth/models/login_response.dart';

import '../../domain/constants/api.dart';
import 'models/login_verify_response.dart';

class AuthRepository {
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
