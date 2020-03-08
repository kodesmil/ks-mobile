import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

import 'models/rank.dart';

class HealthSurveyApi {
  HealthSurveyApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> postRank(Rank rank) => dioClient
      .post(
        '/ranks',
        data: rank.toJson(),
        options: Options(
          headers: {},
        ),
      )
      .then((dynamic res) => print(res))
      .catchError((error) => throw NetworkException(message: error));
}
