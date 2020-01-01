import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/exceptions/network_exceptions.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/post/post_list.dart';
import 'package:boilerplate/models/token/token.dart';
import 'package:boilerplate/models/user/user.dart';
import 'package:dio/dio.dart';

class UserApi {
  final DioClient _dioClient;

  UserApi(this._dioClient);

  Future<dynamic> postUser(Token token, User user) {
    return _dioClient
        .post(
          Endpoints.getScimUser,
          data: user.toJson(),
          options: Options(
            headers: {
              'Authorization': 'Bearer ${token.accessToken}',
            },
            contentType: ContentType('application', 'scim+json'),
          ),
        )
        .then((dynamic res) => res)
        .catchError((error) => throw NetworkException(message: error));
  }
}
