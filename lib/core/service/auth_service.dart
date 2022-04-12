import 'package:dio/dio.dart';
import 'package:errand360/core/api/base_api.dart';
import 'package:errand360/core/model/error_model.dart';
import 'package:errand360/core/model/login_model.dart';
import 'package:errand360/core/model/success_model.dart';
import 'package:errand360/core/utils/custom_exception.dart';
import 'package:errand360/core/utils/dio_response.dart';
import 'package:errand360/core/utils/end_points.dart';
import 'package:errand360/core/utils/error_util.dart';
import 'package:logger/logger.dart';

class AuthService extends BaseAPI {
  Logger log = Logger();

  Future<String> createUser(Map<String, dynamic> data) async {
    try {
      var response = await Dio()
          .post("$kBaseUrl/$CreateUser", data: data, options: defaultOptions);
      log.d(response.statusCode);
      switch (response.statusCode) {
        case CREATED:
          return SuccessModel.fromJson(response.data).id.toString();
        default:
          throw 'Error';
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<String> loginUser(Map<String, dynamic> data) async {
    try {
      var response = await Dio()
          .post("$baseUrl/$LoginUser", data: data, options: defaultOptions);
      switch (response.statusCode) {
        case CREATED:
          return LoginModel.fromJson(response.data).token!;
        case WRONG_CREDENTIALS:
          throw ErroModel.fromJson(response.data).error!;
        default:
          throw ErroModel.fromJson(response.data).error!;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }
}
