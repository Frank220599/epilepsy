import 'package:epilepsy/domain/api_service.dart';
import 'package:epilepsy/domain/constants/api.dart';
import 'package:epilepsy/infrastracture/drug/model/drug.dart';

import 'model/drug_response.dart';

class DrugRepository {
  static final _dio = ApiService.dio;

  static Future<DrugResponse> getDrugList() async {
    try {
      final data = await _dio.get(Api.drugList);
      return DrugResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<DrugModel> getDrugDetails(id) async {
    try {
      final data = await _dio.get(Api.drugDetails(id));
      return DrugModel.fromJson(data.data['data']);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<DrugStoreResponse> drugStore(payload) async {
    try {
      final data = await _dio.post(Api.drugStore, data: payload);
      return DrugStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<DrugStoreResponse> drugUpdate({
    required int id,
    payload,
  }) async {
    try {
      final data = await _dio.post(Api.drugUpdate(id), data: payload);
      return DrugStoreResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<bool> drugDelete(int id) async {
    try {
      final data = await _dio.delete(Api.drugDelete(id));
      return true;
    } catch (e) {
      throw Exception(e);
    }
  }
}
