import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/exceptions/network_exceptions.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/post/post_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TokenApi {
  final DioClient _dioClient;
  final RestClient _restClient;

  TokenApi(this._dioClient, this._restClient);

  Future<String> getAccessToken() => _dioClient
      .post(
        Endpoints.getAuthToken,
        data: FormData.from(
          {
            'grant_type': 'client_credentials',
          },
        ),
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Basic ${DotEnv().env['AUTH_SCIM_ACCESS']}',
          },
        ),
      )
      .then((dynamic res) => res['access_token'])
      .catchError((error) => throw NetworkException(message: error));
}
