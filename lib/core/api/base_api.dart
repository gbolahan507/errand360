import 'package:dio/dio.dart';

const String kBaseUrl = 'https://reqres.in/api';

class BaseAPI {
  var dio = Dio();
  String baseUrl = kBaseUrl;
  Options defaultOptions = Options(
      sendTimeout: 20000, // 20 seconds
      receiveTimeout: 20000, // 20 seconds
      validateStatus: (int? s) => s! < 500,
      contentType: "application/json");
}
