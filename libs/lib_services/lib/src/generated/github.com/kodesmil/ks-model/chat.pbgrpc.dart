///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chat.pb.dart' as $3;
export 'chat.pb.dart';

class ChatClient extends $grpc.Client {
  static final _$listChatMessage =
      $grpc.ClientMethod<$3.ListChatMessageRequest, $3.ListChatMessageResponse>(
          '/model.Chat/ListChatMessage',
          ($3.ListChatMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListChatMessageResponse.fromBuffer(value));
  static final _$listChatRoom =
      $grpc.ClientMethod<$3.ListChatRoomRequest, $3.ListChatRoomResponse>(
          '/model.Chat/ListChatRoom',
          ($3.ListChatRoomRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListChatRoomResponse.fromBuffer(value));
  static final _$biDi =
      $grpc.ClientMethod<$3.StreamChatEvent, $3.StreamChatEvent>(
          '/model.Chat/BiDi',
          ($3.StreamChatEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StreamChatEvent.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ListChatMessageResponse> listChatMessage(
      $3.ListChatMessageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listChatMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$3.ListChatRoomResponse> listChatRoom(
      $3.ListChatRoomRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listChatRoom, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$3.StreamChatEvent> biDi(
      $async.Stream<$3.StreamChatEvent> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$biDi, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ListChatMessageRequest,
            $3.ListChatMessageResponse>(
        'ListChatMessage',
        listChatMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListChatMessageRequest.fromBuffer(value),
        ($3.ListChatMessageResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.ListChatRoomRequest, $3.ListChatRoomResponse>(
            'ListChatRoom',
            listChatRoom_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.ListChatRoomRequest.fromBuffer(value),
            ($3.ListChatRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamChatEvent, $3.StreamChatEvent>(
        'BiDi',
        biDi,
        true,
        true,
        ($core.List<$core.int> value) => $3.StreamChatEvent.fromBuffer(value),
        ($3.StreamChatEvent value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListChatMessageResponse> listChatMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ListChatMessageRequest> request) async {
    return listChatMessage(call, await request);
  }

  $async.Future<$3.ListChatRoomResponse> listChatRoom_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ListChatRoomRequest> request) async {
    return listChatRoom(call, await request);
  }

  $async.Future<$3.ListChatMessageResponse> listChatMessage(
      $grpc.ServiceCall call, $3.ListChatMessageRequest request);
  $async.Future<$3.ListChatRoomResponse> listChatRoom(
      $grpc.ServiceCall call, $3.ListChatRoomRequest request);
  $async.Stream<$3.StreamChatEvent> biDi(
      $grpc.ServiceCall call, $async.Stream<$3.StreamChatEvent> request);
}
