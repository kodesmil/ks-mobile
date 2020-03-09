import 'dart:async';

import 'package:dio/dio.dart';
import 'package:feat_auth/models/token.dart';
import 'package:feat_auth/models/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lib_di/data/network/constants/endpoints.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/exceptions/network_exceptions.dart';

class TokenApi {
  final DioClient _dioClient;

  TokenApi(this._dioClient);

  Future<Token> getSkimAccessToken() => _dioClient
      .post(
        Endpoints.getAuthToken,
        data: {
          'grant_type': 'client_credentials',
        },
        options: Options(
          headers: {
            'Authorization': 'Basic ${DotEnv().env['AUTH_SCIM_ACCESS']}',
            'Content-Type': 'application/x-www-form-urlencoded',
          },
          contentType: 'application/x-www-form-urlencoded',
        ),
      )
      .then((dynamic res) => Token.fromJson(res))
      .catchError((error) => throw NetworkException(message: error));

  Future<Token> getAuthAccessToken(User user) => _dioClient
      .post(
        Endpoints.getAuthToken,
        data: {
          'grant_type': 'password',
          'password': user.password,
          'username': user.userName,
          'scope': 'openid,email,profile',
        },
        options: Options(
          headers: {
            'Authorization': 'Basic ${DotEnv().env['AUTH_SCIM_ACCESS']}',
          },
          contentType: 'application/x-www-form-urlencoded',
        ),
      )
      .then((dynamic res) => Token.fromJson(res));
}
