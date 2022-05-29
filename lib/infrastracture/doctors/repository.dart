import 'package:epilepsy/domain/constants/api.dart';

import '../../domain/api_service.dart';
import 'models/doctors_response.dart';

class DoctorsRepository {
  static final _dio = ApiService.dio;

  static Future<DoctorsResponse> getDoctors() async {
    try {
      final data = await _dio.get(Api.doctors);
      return DoctorsResponse.fromJson(data.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
