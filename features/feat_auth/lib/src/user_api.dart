import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:lib_di/data/network/constants/endpoints.dart';
import 'package:lib_di/data/network/dio_client.dart';

class UserApi {
  final DioClient _dioClient;

  UserApi(this._dioClient);

  Future<dynamic> postUser(Token token, User user) {
    return _dioClient
        .post(
          Endpoints.getScimUser,
          data: json.encode(user.toJson()),
          options: Options(
            headers: {
              'Authorization': 'Bearer ${token.accessToken}',
            },
            contentType: 'application/scim+json',
          ),
        )
        .then((dynamic res) => res);
  }
}
