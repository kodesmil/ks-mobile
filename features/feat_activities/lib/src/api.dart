import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/lib_di.dart';


class ActivitiesApi {
  ActivitiesApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> getFitActivities(String accessToken, String email) =>
      dioClient
          .post(
            '/sync/google-fit',
            data: {
              'access_token': accessToken,
            },
            options: Options(
              headers: {
                'Authorization': 'Bearer $accessToken',
              },
            ),
          )
          .then((dynamic res) => print(res))
          .catchError((error) => throw NetworkException(message: error));
}
