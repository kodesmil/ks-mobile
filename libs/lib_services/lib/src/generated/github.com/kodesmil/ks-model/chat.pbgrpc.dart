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

class ChatMessagesClient extends $grpc.Client {
  static final _$list =
      $grpc.ClientMethod<$3.ListChatMessageRequest, $3.ListChatMessageResponse>(
          '/model.ChatMessages/List',
          ($3.ListChatMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListChatMessageResponse.fromBuffer(value));

  ChatMessagesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ListChatMessageResponse> list(
      $3.ListChatMessageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ChatMessagesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.ChatMessages';

  ChatMessagesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ListChatMessageRequest,
            $3.ListChatMessageResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListChatMessageRequest.fromBuffer(value),
        ($3.ListChatMessageResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListChatMessageResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListChatMessageRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$3.ListChatMessageResponse> list(
      $grpc.ServiceCall call, $3.ListChatMessageRequest request);
}

class ChatRoomsClient extends $grpc.Client {
  static final _$list =
      $grpc.ClientMethod<$3.ListChatRoomRequest, $3.ListChatRoomResponse>(
          '/model.ChatRooms/List',
          ($3.ListChatRoomRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListChatRoomResponse.fromBuffer(value));

  ChatRoomsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ListChatRoomResponse> list(
      $3.ListChatRoomRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ChatRoomsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.ChatRooms';

  ChatRoomsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.ListChatRoomRequest, $3.ListChatRoomResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.ListChatRoomRequest.fromBuffer(value),
            ($3.ListChatRoomResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListChatRoomResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListChatRoomRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$3.ListChatRoomResponse> list(
      $grpc.ServiceCall call, $3.ListChatRoomRequest request);
}

class ChatClient extends $grpc.Client {
  static final _$stream =
      $grpc.ClientMethod<$3.StreamChatEvent, $3.StreamChatEvent>(
          '/model.Chat/Stream',
          ($3.StreamChatEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StreamChatEvent.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$3.StreamChatEvent> stream(
      $async.Stream<$3.StreamChatEvent> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$stream, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.StreamChatEvent, $3.StreamChatEvent>(
        'Stream',
        stream,
        true,
        true,
        ($core.List<$core.int> value) => $3.StreamChatEvent.fromBuffer(value),
        ($3.StreamChatEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$3.StreamChatEvent> stream(
      $grpc.ServiceCall call, $async.Stream<$3.StreamChatEvent> request);
}
