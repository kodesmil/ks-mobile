import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

class HealthSurveyApi {
  HealthSurveyApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> postHealthSurvey(String accessToken) => dioClient
      .post(
        '/sync-google-fit-activities',
        data: {
          'access_token': accessToken,
        },
        options: Options(
          headers: {},
        ),
      )
      .then((dynamic res) => print(res))
      .catchError((error) => throw NetworkException(message: error));
}
