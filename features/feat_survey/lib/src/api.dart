import 'dart:async';

import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

import 'model.dart';

class SurveyApi {
  SurveyApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> postAnswer(String accessToken, Answer answer) => dioClient
      .post(
        '/answers',
        data: answer.toJson(),
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
      )
      .then((dynamic res) => print(res))
      .catchError((error) => throw NetworkException(message: error.toString()));

  Future<List<Answer>> getAnswers(String accessToken) => dioClient
      .get(
        '/answers',
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
      )
      .then((dynamic res) => res.map((i) => Answer.fromJson(i)))
      .catchError((error) => throw NetworkException(message: error.toString()));

  Future<List<Question>> getQuestions(String accessToken) => dioClient
      .get(
        '/questions',
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
      )
      .then(
        (dynamic res) =>
            List.from(res).map((i) => Question.fromJson(i)).toList(),
      );
}
