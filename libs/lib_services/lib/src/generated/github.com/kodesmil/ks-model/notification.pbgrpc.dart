///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notification.pb.dart' as $5;
export 'notification.pb.dart';

class NotificationSettingsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<
          $5.CreateNotificationSettingRequest,
          $5.CreateNotificationSettingResponse>(
      '/model.NotificationSettings/Create',
      ($5.CreateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateNotificationSettingResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$5.ReadNotificationSettingRequest,
          $5.ReadNotificationSettingResponse>(
      '/model.NotificationSettings/Read',
      ($5.ReadNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ReadNotificationSettingResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<
          $5.UpdateNotificationSettingRequest,
          $5.UpdateNotificationSettingResponse>(
      '/model.NotificationSettings/Update',
      ($5.UpdateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateNotificationSettingResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<
          $5.DeleteNotificationSettingRequest,
          $5.DeleteNotificationSettingResponse>(
      '/model.NotificationSettings/Delete',
      ($5.DeleteNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteNotificationSettingResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$5.ListNotificationSettingRequest,
          $5.ListNotificationSettingResponse>(
      '/model.NotificationSettings/List',
      ($5.ListNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListNotificationSettingResponse.fromBuffer(value));

  NotificationSettingsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.CreateNotificationSettingResponse> create(
      $5.CreateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadNotificationSettingResponse> read(
      $5.ReadNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdateNotificationSettingResponse> update(
      $5.UpdateNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeleteNotificationSettingResponse> delete(
      $5.DeleteNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListNotificationSettingResponse> list(
      $5.ListNotificationSettingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationSettingsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationSettings';

  NotificationSettingsServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateNotificationSettingRequest,
            $5.CreateNotificationSettingResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateNotificationSettingRequest.fromBuffer(value),
        ($5.CreateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadNotificationSettingRequest,
            $5.ReadNotificationSettingResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadNotificationSettingRequest.fromBuffer(value),
        ($5.ReadNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateNotificationSettingRequest,
            $5.UpdateNotificationSettingResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateNotificationSettingRequest.fromBuffer(value),
        ($5.UpdateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteNotificationSettingRequest,
            $5.DeleteNotificationSettingResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteNotificationSettingRequest.fromBuffer(value),
        ($5.DeleteNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListNotificationSettingRequest,
            $5.ListNotificationSettingResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListNotificationSettingRequest.fromBuffer(value),
        ($5.ListNotificationSettingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateNotificationSettingResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateNotificationSettingRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$5.ReadNotificationSettingResponse> read_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ReadNotificationSettingRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$5.UpdateNotificationSettingResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdateNotificationSettingRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$5.DeleteNotificationSettingResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteNotificationSettingRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$5.ListNotificationSettingResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListNotificationSettingRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$5.CreateNotificationSettingResponse> create(
      $grpc.ServiceCall call, $5.CreateNotificationSettingRequest request);
  $async.Future<$5.ReadNotificationSettingResponse> read(
      $grpc.ServiceCall call, $5.ReadNotificationSettingRequest request);
  $async.Future<$5.UpdateNotificationSettingResponse> update(
      $grpc.ServiceCall call, $5.UpdateNotificationSettingRequest request);
  $async.Future<$5.DeleteNotificationSettingResponse> delete(
      $grpc.ServiceCall call, $5.DeleteNotificationSettingRequest request);
  $async.Future<$5.ListNotificationSettingResponse> list(
      $grpc.ServiceCall call, $5.ListNotificationSettingRequest request);
}

class NotificationDevicesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$5.CreateNotificationDeviceRequest,
          $5.CreateNotificationDeviceResponse>(
      '/model.NotificationDevices/Create',
      ($5.CreateNotificationDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateNotificationDeviceResponse.fromBuffer(value));

  NotificationDevicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.CreateNotificationDeviceResponse> create(
      $5.CreateNotificationDeviceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationDevicesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.NotificationDevices';

  NotificationDevicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateNotificationDeviceRequest,
            $5.CreateNotificationDeviceResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateNotificationDeviceRequest.fromBuffer(value),
        ($5.CreateNotificationDeviceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateNotificationDeviceResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateNotificationDeviceRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$5.CreateNotificationDeviceResponse> create(
      $grpc.ServiceCall call, $5.CreateNotificationDeviceRequest request);
}
