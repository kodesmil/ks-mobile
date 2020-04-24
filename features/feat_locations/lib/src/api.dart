import 'dart:async';

import 'package:lib_di/lib_di.dart';

import 'model.dart';

class LocationsApi {
  LocationsApi(this.dioClient);

  final DioClient dioClient;

  Future<dynamic> postLocation(Location location) => dioClient
      .post(
        '/locations',
        data: location.toJson(),
      )
      .then((dynamic res) => print(res))
      .catchError(
        (error) => throw NetworkException(message: error.toString()),
      );
}
