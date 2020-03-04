import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

class ActivitiesApi {
  final _dioClient = DioClient(Dio()
    ..options.baseUrl = 'http://10.0.2.2:5000'
    ..interceptors.add(LogInterceptor(responseBody: true))
    ..interceptors.add(
      InterceptorsWrapper(onRequest: (Options options) async {}),
    ));

  Future<dynamic> getFitActivities(String accessToken) => _dioClient
      .post(
        '/google-fit-activities',
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
