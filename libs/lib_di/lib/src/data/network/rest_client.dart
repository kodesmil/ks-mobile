import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'exceptions/network_exceptions.dart';

class RestClient {

  final JsonDecoder _decoder = JsonDecoder();

  Future<dynamic> get(String url) {
    return http.get(url).then((http.Response response) {
      final res = response.body;
      final statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw NetworkException(
            message: 'Error fetching data from server', statusCode: statusCode);
      }

      print(res);
      return _decoder.convert(res);
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) {
    return http
        .post(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      final res = response.body;
      final statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw NetworkException(
            message: 'Error fetching data from server', statusCode: statusCode);
      }
      return _decoder.convert(res);
    });
  }
}
