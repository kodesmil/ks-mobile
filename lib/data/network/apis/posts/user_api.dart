import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/exceptions/network_exceptions.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/post/post_list.dart';

class UserApi {
  final DioClient _dioClient;
  final RestClient _restClient;

  UserApi(this._dioClient, this._restClient);

  Future<String> getUserToken() {
    return _dioClient
        .post(Endpoints.getPosts)
        .then((dynamic res) => res['access_token'])
        .catchError((error) => throw NetworkException(message: error));
  }
}
