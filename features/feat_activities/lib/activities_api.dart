import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

class ActivitiesApi {
  ActivitiesApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> getFitActivities(String accessToken, String email) =>
      dioClient
          .post(
            '/sync-google-fit-activities',
            data: {
              'access_token': accessToken,
              'email': email,
            },
            options: Options(
              headers: {},
            ),
          )
          .then((dynamic res) => print(res))
          .catchError((error) => throw NetworkException(message: error));
}
