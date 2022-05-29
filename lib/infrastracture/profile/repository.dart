import 'package:epilepsy/domain/api_service.dart';
import 'package:epilepsy/infrastracture/types/rates_response.dart';

import '../../domain/constants/api.dart';
import '../types/profile_response.dart';

class ProfileRepository {
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
