///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notification.pb.dart' as $0;
export 'notification.pb.dart';

class NotificationServiceClient extends $grpc.Client {
  static final _$notificationCreate = $grpc.ClientMethod<
          $0.NotificationCreateRequest, $0.NotificationCreateResponse>(
      '/notifications.NotificationService/NotificationCreate',
      ($0.NotificationCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NotificationCreateResponse.fromBuffer(value));
  static final _$notificationRead = $grpc.ClientMethod<
          $0.NotificationReadRequest, $0.NotificationReadResponse>(
      '/notifications.NotificationService/NotificationRead',
      ($0.NotificationReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NotificationReadResponse.fromBuffer(value));
  static final _$notificationUpdate = $grpc.ClientMethod<
          $0.NotificationUpdateRequest, $0.NotificationUpdateResponse>(
      '/notifications.NotificationService/NotificationUpdate',
      ($0.NotificationUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NotificationUpdateResponse.fromBuffer(value));
  static final _$notificationDelete = $grpc.ClientMethod<
          $0.NotificationDeleteRequest, $0.NotificationDeleteResponse>(
      '/notifications.NotificationService/NotificationDelete',
      ($0.NotificationDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NotificationDeleteResponse.fromBuffer(value));
  static final _$notificationsList = $grpc.ClientMethod<
          $0.NotificationsListRequest, $0.NotificationsListResponse>(
      '/notifications.NotificationService/NotificationsList',
      ($0.NotificationsListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NotificationsListResponse.fromBuffer(value));

  NotificationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.NotificationCreateResponse> notificationCreate(
      $0.NotificationCreateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$notificationCreate, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NotificationReadResponse> notificationRead(
      $0.NotificationReadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$notificationRead, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NotificationUpdateResponse> notificationUpdate(
      $0.NotificationUpdateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$notificationUpdate, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NotificationDeleteResponse> notificationDelete(
      $0.NotificationDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$notificationDelete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.NotificationsListResponse> notificationsList(
      $0.NotificationsListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$notificationsList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'notifications.NotificationService';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NotificationCreateRequest,
            $0.NotificationCreateResponse>(
        'NotificationCreate',
        notificationCreate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NotificationCreateRequest.fromBuffer(value),
        ($0.NotificationCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NotificationReadRequest,
            $0.NotificationReadResponse>(
        'NotificationRead',
        notificationRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NotificationReadRequest.fromBuffer(value),
        ($0.NotificationReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NotificationUpdateRequest,
            $0.NotificationUpdateResponse>(
        'NotificationUpdate',
        notificationUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NotificationUpdateRequest.fromBuffer(value),
        ($0.NotificationUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NotificationDeleteRequest,
            $0.NotificationDeleteResponse>(
        'NotificationDelete',
        notificationDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NotificationDeleteRequest.fromBuffer(value),
        ($0.NotificationDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NotificationsListRequest,
            $0.NotificationsListResponse>(
        'NotificationsList',
        notificationsList_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.NotificationsListRequest.fromBuffer(value),
        ($0.NotificationsListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NotificationCreateResponse> notificationCreate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NotificationCreateRequest> request) async {
    return notificationCreate(call, await request);
  }

  $async.Future<$0.NotificationReadResponse> notificationRead_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NotificationReadRequest> request) async {
    return notificationRead(call, await request);
  }

  $async.Future<$0.NotificationUpdateResponse> notificationUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NotificationUpdateRequest> request) async {
    return notificationUpdate(call, await request);
  }

  $async.Future<$0.NotificationDeleteResponse> notificationDelete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NotificationDeleteRequest> request) async {
    return notificationDelete(call, await request);
  }

  $async.Stream<$0.NotificationsListResponse> notificationsList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NotificationsListRequest> request) async* {
    yield* notificationsList(call, await request);
  }

  $async.Future<$0.NotificationCreateResponse> notificationCreate(
      $grpc.ServiceCall call, $0.NotificationCreateRequest request);
  $async.Future<$0.NotificationReadResponse> notificationRead(
      $grpc.ServiceCall call, $0.NotificationReadRequest request);
  $async.Future<$0.NotificationUpdateResponse> notificationUpdate(
      $grpc.ServiceCall call, $0.NotificationUpdateRequest request);
  $async.Future<$0.NotificationDeleteResponse> notificationDelete(
      $grpc.ServiceCall call, $0.NotificationDeleteRequest request);
  $async.Stream<$0.NotificationsListResponse> notificationsList(
      $grpc.ServiceCall call, $0.NotificationsListRequest request);
}
