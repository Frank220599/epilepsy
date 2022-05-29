import 'package:epilepsy/domain/api_service.dart';
import 'package:epilepsy/domain/constants/api.dart';
import 'package:epilepsy/infrastracture/egg/models/eeg.dart';

import 'models/eeg_response.dart';

class EegRepository {
  static final _dio = ApiService.dio;

  static Future<EegResponse> getEegList() async {
    try {
      final data = await _dio.get(Api.eegList);
      return EegResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<EegModel> getEegDetails(id) async {
    try {
      final data = await _dio.get(Api.eegDetails(id));
      return EegModel.fromJson(data.data['data']);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<EegStoreResponse> eegStore(payload) async {
    try {
      final data = await _dio.post(Api.eegStore, data: payload);
      return EegStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<EegStoreResponse> eegUpdate({required int id, payload}) async {
    try {
      final data = await _dio.post(Api.eegUpdate(id), data: payload);
      return EegStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<bool> eegDelete(int id) async {
    try {
      final data = await _dio.delete(Api.eegDelete(id));
      return true;
    } catch (e) {
      throw Exception(e);
    }
  }
}
