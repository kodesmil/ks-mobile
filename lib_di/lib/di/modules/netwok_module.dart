import 'package:lib_di/data/network/constants/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:lib_di/data/network/dio_client.dart';
import 'package:lib_di/data/network/rest_client.dart';

class NetworkModule {
  Dio provideDio() => Dio()
    ..options.baseUrl = Endpoints.baseUrl
    ..options.connectTimeout = Endpoints.connectionTimeout
    ..options.receiveTimeout = Endpoints.receiveTimeout
    ..interceptors.add(LogInterceptor(responseBody: true))
    ..interceptors
        .add(InterceptorsWrapper(onRequest: (Options options) async {}));

  DioClient provideDioClient() => DioClient(provideDio());

  RestClient provideRestClient() => RestClient();
}
