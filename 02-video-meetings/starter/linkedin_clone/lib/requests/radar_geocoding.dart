import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../services/dio_exceptions.dart';

String baseUrl = 'https://api.radar.io/v1/geocode';
String accessToken = dotenv.env['RADAR_LIVE_TOKEN']!;
String geocodeType = 'reverse';

Dio _dio = Dio();

// Ex: https://api.radar.io/v1/geocode/reverse?coordinates=40.70390,-73.98670

Future getAddressFromLocationUsingRadar(
    double latitude, double longitude) async {
  String url =
      'https://api.radar.io/v1/geocode/reverse?coordinates=$latitude,$longitude';
  try {
    _dio.options.contentType = Headers.jsonContentType;
    _dio.options.headers['authorization'] = accessToken;
    final responseData = await _dio.get(url);
    return responseData.data;
  } catch (e) {
    final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
    debugPrint(errorMessage);
  }
}
