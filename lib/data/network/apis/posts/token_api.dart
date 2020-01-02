import 'dart:async';
import 'dart:io';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/exceptions/network_exceptions.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/token/token.dart';
import 'package:boilerplate/models/user/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
          },
          contentType: ContentType('application', 'x-www-form-urlencoded'),
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
          contentType: ContentType('application', 'x-www-form-urlencoded'),
        ),
      )
      .then((dynamic res) => Token.fromJson(res));
}
