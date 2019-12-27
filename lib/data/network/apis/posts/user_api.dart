import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/exceptions/network_exceptions.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/post/post_list.dart';
import 'package:dio/dio.dart';

class UserApi {
  final DioClient _dioClient;

  UserApi(this._dioClient);

  Future<dynamic> postUser(String apiToken, String email, String password) {
    return _dioClient
        .post(
          Endpoints.getScimUser,
          data: json.encode(
            {
              'schemas': ['urn:ietf:params:scim:schemas:core:2.0:User'],
              'userName': email,
              'emails': [
                {'value': email, 'type': 'work', 'primary': true},
              ],
              'active': true,
              // "name": {"familyName": "Smith", "givenName": "Joe"},
              // "displayName": "Average Joe",
              'password': password,
            },
          ),
          options: Options(
            headers: {
              'Authorization': 'Bearer $apiToken',
            },
            contentType: ContentType('application', 'scim+json'),
          ),
        )
        .then((dynamic res) => res)
        .catchError((error) => throw NetworkException(message: error));
  }
}
