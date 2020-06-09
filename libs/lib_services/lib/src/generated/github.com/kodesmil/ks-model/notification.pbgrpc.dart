///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notification.pb.dart' as $6;
export 'notification.pb.dart';

class NotificationSettingsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<
          $6.CreateNotificationSettingRequest,
          $6.CreateNotificationSettingResponse>(
      '/model.NotificationSettings/Create',
      ($6.CreateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateNotificationSettingResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$6.ReadNotificationSettingRequest,
          $6.ReadNotificationSettingResponse>(
      '/model.NotificationSettings/Read',
      ($6.ReadNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadNotificationSettingResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<
          $6.UpdateNotificationSettingRequest,
          $6.UpdateNotificationSettingResponse>(
      '/model.NotificationSettings/Update',
      ($6.UpdateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateNotificationSettingResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<
          $6.DeleteNotificationSettingRequest,
          $6.DeleteNotificationSettingResponse>(
      '/model.NotificationSettings/Delete',
      ($6.DeleteNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteNotificationSettingResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$6.ListNotificationSettingRequest,
          $6.ListNotificationSettingResponse>(
      '/model.NotificationSettings/List',
      ($6.ListNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListNotificationSettingResponse.fromBuffer(value));

  NotificationSettingsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.CreateNotificationSettingResponse> create(
      $6.CreateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadNotificationSettingResponse> read(
      $6.ReadNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateNotificationSettingResponse> update(
      $6.UpdateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteNotificationSettingResponse> delete(
      $6.DeleteNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListNotificationSettingResponse> list(
      $6.ListNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationSettingsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationSettings';

  NotificationSettingsServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateNotificationSettingRequest,
            $6.CreateNotificationSettingResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateNotificationSettingRequest.fromBuffer(value),
        ($6.CreateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadNotificationSettingRequest,
            $6.ReadNotificationSettingResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadNotificationSettingRequest.fromBuffer(value),
        ($6.ReadNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateNotificationSettingRequest,
            $6.UpdateNotificationSettingResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateNotificationSettingRequest.fromBuffer(value),
        ($6.UpdateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteNotificationSettingRequest,
            $6.DeleteNotificationSettingResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteNotificationSettingRequest.fromBuffer(value),
        ($6.DeleteNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListNotificationSettingRequest,
            $6.ListNotificationSettingResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListNotificationSettingRequest.fromBuffer(value),
        ($6.ListNotificationSettingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateNotificationSettingResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateNotificationSettingRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$6.ReadNotificationSettingResponse> read_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadNotificationSettingRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$6.UpdateNotificationSettingResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateNotificationSettingRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$6.DeleteNotificationSettingResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteNotificationSettingRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$6.ListNotificationSettingResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListNotificationSettingRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$6.CreateNotificationSettingResponse> create(
      $grpc.ServiceCall call, $6.CreateNotificationSettingRequest request);
  $async.Future<$6.ReadNotificationSettingResponse> read(
      $grpc.ServiceCall call, $6.ReadNotificationSettingRequest request);
  $async.Future<$6.UpdateNotificationSettingResponse> update(
      $grpc.ServiceCall call, $6.UpdateNotificationSettingRequest request);
  $async.Future<$6.DeleteNotificationSettingResponse> delete(
      $grpc.ServiceCall call, $6.DeleteNotificationSettingRequest request);
  $async.Future<$6.ListNotificationSettingResponse> list(
      $grpc.ServiceCall call, $6.ListNotificationSettingRequest request);
}

class NotificationDevicesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$6.CreateNotificationDeviceRequest,
          $6.CreateNotificationDeviceResponse>(
      '/model.NotificationDevices/Create',
      ($6.CreateNotificationDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateNotificationDeviceResponse.fromBuffer(value));

  NotificationDevicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.CreateNotificationDeviceResponse> create(
      $6.CreateNotificationDeviceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationDevicesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationDevices';

  NotificationDevicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateNotificationDeviceRequest,
            $6.CreateNotificationDeviceResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateNotificationDeviceRequest.fromBuffer(value),
        ($6.CreateNotificationDeviceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateNotificationDeviceResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateNotificationDeviceRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$6.CreateNotificationDeviceResponse> create(
      $grpc.ServiceCall call, $6.CreateNotificationDeviceRequest request);
}
