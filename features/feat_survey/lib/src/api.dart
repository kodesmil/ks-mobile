import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

import 'model.dart';

class SurveyApi {
  SurveyApi(this.dioClient, this.firebaseAuth);

  final DioClient dioClient;
  final FirebaseAuth firebaseAuth;

  Future<IdTokenResult> authenticate() async {
    final user = await firebaseAuth.currentUser();
    return await user.getIdToken();
  }

  Future<dynamic> postAnswer(Answer answer) async => authenticate()
      .then((token) => dioClient.post(
            '/answers',
            data: answer.toJson(),
            options: Options(
              headers: {
                'Authorization': 'Bearer ${token.token}',
              },
            ),
          ))
      .then((dynamic res) => print(res))
      .catchError(
        (error) => throw NetworkException(
          message: error.toString(),
        ),
      );

  Future<List<Answer>> getAnswers() => authenticate()
      .then((token) => dioClient.get(
            '/answers',
            options: Options(
              headers: {
                'Authorization': 'Bearer ${token.token}',
              },
            ),
          ))
      .then((dynamic res) => res.map((i) => Answer.fromJson(i)))
      .catchError((error) => throw NetworkException(message: error.toString()));

  Future<List<Question>> getQuestions() => authenticate()
      .then((token) => dioClient.get(
            '/questions',
            options: Options(
              headers: {
                'Authorization': 'Bearer ${token.token}',
              },
            ),
          ))
      .then(
        (dynamic res) =>
            List.from(res).map((i) => Question.fromJson(i)).toList(),
      );
}
