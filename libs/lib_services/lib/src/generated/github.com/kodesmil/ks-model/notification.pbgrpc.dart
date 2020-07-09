///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notification.pb.dart' as $7;
export 'notification.pb.dart';

class NotificationSettingsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<
          $7.CreateNotificationSettingRequest,
          $7.CreateNotificationSettingResponse>(
      '/model.NotificationSettings/Create',
      ($7.CreateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateNotificationSettingResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$7.ReadNotificationSettingRequest,
          $7.ReadNotificationSettingResponse>(
      '/model.NotificationSettings/Read',
      ($7.ReadNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ReadNotificationSettingResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<
          $7.UpdateNotificationSettingRequest,
          $7.UpdateNotificationSettingResponse>(
      '/model.NotificationSettings/Update',
      ($7.UpdateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.UpdateNotificationSettingResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<
          $7.DeleteNotificationSettingRequest,
          $7.DeleteNotificationSettingResponse>(
      '/model.NotificationSettings/Delete',
      ($7.DeleteNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.DeleteNotificationSettingResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$7.ListNotificationSettingRequest,
          $7.ListNotificationSettingResponse>(
      '/model.NotificationSettings/List',
      ($7.ListNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListNotificationSettingResponse.fromBuffer(value));

  NotificationSettingsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.CreateNotificationSettingResponse> create(
      $7.CreateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.ReadNotificationSettingResponse> read(
      $7.ReadNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.UpdateNotificationSettingResponse> update(
      $7.UpdateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.DeleteNotificationSettingResponse> delete(
      $7.DeleteNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.ListNotificationSettingResponse> list(
      $7.ListNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationSettingsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationSettings';

  NotificationSettingsServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateNotificationSettingRequest,
            $7.CreateNotificationSettingResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateNotificationSettingRequest.fromBuffer(value),
        ($7.CreateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ReadNotificationSettingRequest,
            $7.ReadNotificationSettingResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ReadNotificationSettingRequest.fromBuffer(value),
        ($7.ReadNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateNotificationSettingRequest,
            $7.UpdateNotificationSettingResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UpdateNotificationSettingRequest.fromBuffer(value),
        ($7.UpdateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteNotificationSettingRequest,
            $7.DeleteNotificationSettingResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.DeleteNotificationSettingRequest.fromBuffer(value),
        ($7.DeleteNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListNotificationSettingRequest,
            $7.ListNotificationSettingResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListNotificationSettingRequest.fromBuffer(value),
        ($7.ListNotificationSettingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateNotificationSettingResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateNotificationSettingRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$7.ReadNotificationSettingResponse> read_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ReadNotificationSettingRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$7.UpdateNotificationSettingResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UpdateNotificationSettingRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$7.DeleteNotificationSettingResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.DeleteNotificationSettingRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$7.ListNotificationSettingResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListNotificationSettingRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$7.CreateNotificationSettingResponse> create(
      $grpc.ServiceCall call, $7.CreateNotificationSettingRequest request);
  $async.Future<$7.ReadNotificationSettingResponse> read(
      $grpc.ServiceCall call, $7.ReadNotificationSettingRequest request);
  $async.Future<$7.UpdateNotificationSettingResponse> update(
      $grpc.ServiceCall call, $7.UpdateNotificationSettingRequest request);
  $async.Future<$7.DeleteNotificationSettingResponse> delete(
      $grpc.ServiceCall call, $7.DeleteNotificationSettingRequest request);
  $async.Future<$7.ListNotificationSettingResponse> list(
      $grpc.ServiceCall call, $7.ListNotificationSettingRequest request);
}

class NotificationDevicesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$7.CreateNotificationDeviceRequest,
          $7.CreateNotificationDeviceResponse>(
      '/model.NotificationDevices/Create',
      ($7.CreateNotificationDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateNotificationDeviceResponse.fromBuffer(value));

  NotificationDevicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.CreateNotificationDeviceResponse> create(
      $7.CreateNotificationDeviceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationDevicesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationDevices';

  NotificationDevicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateNotificationDeviceRequest,
            $7.CreateNotificationDeviceResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateNotificationDeviceRequest.fromBuffer(value),
        ($7.CreateNotificationDeviceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateNotificationDeviceResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateNotificationDeviceRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$7.CreateNotificationDeviceResponse> create(
      $grpc.ServiceCall call, $7.CreateNotificationDeviceRequest request);
}
