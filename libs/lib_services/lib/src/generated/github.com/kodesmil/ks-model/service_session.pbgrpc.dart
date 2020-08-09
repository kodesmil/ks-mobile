///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service_session.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service_session.pb.dart' as $3;
export 'service_session.pb.dart';

class ServiceSessionStreamClient extends $grpc.Client {
  static final _$biDi = $grpc.ClientMethod<$3.StreamSessionInputEvent,
          $3.StreamSessionOutputEvent>(
      '/model.ServiceSessionStream/BiDi',
      ($3.StreamSessionInputEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.StreamSessionOutputEvent.fromBuffer(value));

  ServiceSessionStreamClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$3.StreamSessionOutputEvent> biDi(
      $async.Stream<$3.StreamSessionInputEvent> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$biDi, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ServiceSessionStreamServiceBase extends $grpc.Service {
  $core.String get $name => 'model.ServiceSessionStream';

  ServiceSessionStreamServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.StreamSessionInputEvent,
            $3.StreamSessionOutputEvent>(
        'BiDi',
        biDi,
        true,
        true,
        ($core.List<$core.int> value) =>
            $3.StreamSessionInputEvent.fromBuffer(value),
        ($3.StreamSessionOutputEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$3.StreamSessionOutputEvent> biDi($grpc.ServiceCall call,
      $async.Stream<$3.StreamSessionInputEvent> request);
}
