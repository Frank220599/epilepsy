import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/types/doctors_response.dart';

import 'api_service.dart';

class DoctorsService {
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
