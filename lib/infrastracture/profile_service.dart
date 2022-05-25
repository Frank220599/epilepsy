import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/types/profile_response.dart';
import 'package:epilepsy/types/rates_response.dart';

import 'api_service.dart';

class ProfileService {
  static final _dio = ApiService.dio;

  static Future<ProfileResponse> getProfile() async {
    try {
      final data = await _dio.get(Api.getProfile);
      return ProfileResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<ProfileResponse> updateProfile(payload) async {
    try {
      final data = await _dio.post(Api.updateProfile, data: payload);
      return ProfileResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<RatesResponse> getUserRates() async {
    try {
      final data = await _dio.get(Api.userRates);
      return RatesResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
