import 'package:dio/dio.dart';
import 'package:epilepsy/domain/constants/api.dart';

class ApiService {
  static BaseOptions options = BaseOptions(
    baseUrl: Api.baseUrl,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    contentType: "application/json",
    headers: {'Accept': 'application/json'},
    validateStatus: (code) {
      return code! >= 200;
    },
  );
  static final dio = Dio(options);
}
