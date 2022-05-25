import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/types/seizure_response.dart';
import 'package:epilepsy/types/tendencies_response.dart';

import 'api_service.dart';

class SeizureService {
  static final _dio = ApiService.dio;

  static Future<SeizureResponse> getSeizureLastThree() async {
    try {
      final data = await _dio.get(Api.seizureLastThree);
      return SeizureResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<SeizureResponse> getSeizureByDate(String date) async {
    try {
      final data = await _dio.get(Api.seizureByDate(date));
      return SeizureResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<SeizureStoreResponse> seizureStore(payload) async {
    try {
      final data = await _dio.post(Api.seizureStore, data: payload);
      return SeizureStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<SeizureStoreResponse> seizureUpdate(
      {required int id, required Map payload}) async {
    try {
      final data = await _dio.post(
        Api.seizureUpdate(id),
        data: payload,
      );
      return SeizureStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<bool> seizureDelete(int id) async {
    try {
      final data = await _dio.delete(Api.seizureDelete(id));
      return true;
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<TendenciesResponse> getStatistics() async {
    try {
      final data = await _dio.get(Api.statistics);
      return TendenciesResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
