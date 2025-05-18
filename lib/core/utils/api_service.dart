import 'package:attack_on_titan_app/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = kBaseUrl;
  final Dio _dio;
  final String contentType = 'application/json';
  final String accept = 'application/json';

  ApiService(this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.headers.addAll(
      {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-Api-Token': 'VrOrOCKrOhgmRT4Twyte3b4NCVT2gG2aWcptlC91',
      },
    );
  }

  Future<dynamic> get({required String endPoint}) async {
    Response response = await _dio.get(
      '$baseUrl$endPoint',
    );

    return response.data;
  }

  dynamic post({required String endPoint, required Object data}) async {
    Response response = await _dio.post(
      '$baseUrl$endPoint',
      data: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> put({required String endPoint, required Object data}) async {
    Response response = await _dio.put(
      '$baseUrl$endPoint',
      data: data,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> delete({required String endPoint, required Object data}) async {
    Response response = await _dio.delete(
      '$baseUrl$endPoint',
      data: data,
    );
    return response.data;
  }
}
