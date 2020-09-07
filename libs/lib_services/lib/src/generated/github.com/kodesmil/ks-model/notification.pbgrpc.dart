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

class NotificationsClient extends $grpc.Client {
  static final _$createNotificationDevice = $grpc.ClientMethod<
          $7.CreateNotificationDeviceRequest,
          $7.CreateNotificationDeviceResponse>(
      '/model.Notifications/CreateNotificationDevice',
      ($7.CreateNotificationDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateNotificationDeviceResponse.fromBuffer(value));
  static final _$createNotificationSetting = $grpc.ClientMethod<
          $7.CreateNotificationSettingRequest,
          $7.CreateNotificationSettingResponse>(
      '/model.Notifications/CreateNotificationSetting',
      ($7.CreateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateNotificationSettingResponse.fromBuffer(value));
  static final _$readNotificationSetting = $grpc.ClientMethod<
          $7.ReadNotificationSettingRequest,
          $7.ReadNotificationSettingResponse>(
      '/model.Notifications/ReadNotificationSetting',
      ($7.ReadNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ReadNotificationSettingResponse.fromBuffer(value));
  static final _$updateNotificationSetting = $grpc.ClientMethod<
          $7.UpdateNotificationSettingRequest,
          $7.UpdateNotificationSettingResponse>(
      '/model.Notifications/UpdateNotificationSetting',
      ($7.UpdateNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.UpdateNotificationSettingResponse.fromBuffer(value));
  static final _$deleteNotificationSetting = $grpc.ClientMethod<
          $7.DeleteNotificationSettingRequest,
          $7.DeleteNotificationSettingResponse>(
      '/model.Notifications/DeleteNotificationSetting',
      ($7.DeleteNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.DeleteNotificationSettingResponse.fromBuffer(value));
  static final _$listNotificationSetting = $grpc.ClientMethod<
          $7.ListNotificationSettingRequest,
          $7.ListNotificationSettingResponse>(
      '/model.Notifications/ListNotificationSetting',
      ($7.ListNotificationSettingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListNotificationSettingResponse.fromBuffer(value));

  NotificationsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.CreateNotificationDeviceResponse>
      createNotificationDevice($7.CreateNotificationDeviceRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createNotificationDevice, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.CreateNotificationSettingResponse>
      createNotificationSetting($7.CreateNotificationSettingRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createNotificationSetting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.ReadNotificationSettingResponse>
      readNotificationSetting($7.ReadNotificationSettingRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readNotificationSetting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.UpdateNotificationSettingResponse>
      updateNotificationSetting($7.UpdateNotificationSettingRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateNotificationSetting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.DeleteNotificationSettingResponse>
      deleteNotificationSetting($7.DeleteNotificationSettingRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteNotificationSetting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.ListNotificationSettingResponse>
      listNotificationSetting($7.ListNotificationSettingRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listNotificationSetting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Notifications';

  NotificationsServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateNotificationDeviceRequest,
            $7.CreateNotificationDeviceResponse>(
        'CreateNotificationDevice',
        createNotificationDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateNotificationDeviceRequest.fromBuffer(value),
        ($7.CreateNotificationDeviceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateNotificationSettingRequest,
            $7.CreateNotificationSettingResponse>(
        'CreateNotificationSetting',
        createNotificationSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateNotificationSettingRequest.fromBuffer(value),
        ($7.CreateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ReadNotificationSettingRequest,
            $7.ReadNotificationSettingResponse>(
        'ReadNotificationSetting',
        readNotificationSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ReadNotificationSettingRequest.fromBuffer(value),
        ($7.ReadNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateNotificationSettingRequest,
            $7.UpdateNotificationSettingResponse>(
        'UpdateNotificationSetting',
        updateNotificationSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UpdateNotificationSettingRequest.fromBuffer(value),
        ($7.UpdateNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteNotificationSettingRequest,
            $7.DeleteNotificationSettingResponse>(
        'DeleteNotificationSetting',
        deleteNotificationSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.DeleteNotificationSettingRequest.fromBuffer(value),
        ($7.DeleteNotificationSettingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListNotificationSettingRequest,
            $7.ListNotificationSettingResponse>(
        'ListNotificationSetting',
        listNotificationSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListNotificationSettingRequest.fromBuffer(value),
        ($7.ListNotificationSettingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateNotificationDeviceResponse>
      createNotificationDevice_Pre($grpc.ServiceCall call,
          $async.Future<$7.CreateNotificationDeviceRequest> request) async {
    return createNotificationDevice(call, await request);
  }

  $async.Future<$7.CreateNotificationSettingResponse>
      createNotificationSetting_Pre($grpc.ServiceCall call,
          $async.Future<$7.CreateNotificationSettingRequest> request) async {
    return createNotificationSetting(call, await request);
  }

  $async.Future<$7.ReadNotificationSettingResponse> readNotificationSetting_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ReadNotificationSettingRequest> request) async {
    return readNotificationSetting(call, await request);
  }

  $async.Future<$7.UpdateNotificationSettingResponse>
      updateNotificationSetting_Pre($grpc.ServiceCall call,
          $async.Future<$7.UpdateNotificationSettingRequest> request) async {
    return updateNotificationSetting(call, await request);
  }

  $async.Future<$7.DeleteNotificationSettingResponse>
      deleteNotificationSetting_Pre($grpc.ServiceCall call,
          $async.Future<$7.DeleteNotificationSettingRequest> request) async {
    return deleteNotificationSetting(call, await request);
  }

  $async.Future<$7.ListNotificationSettingResponse> listNotificationSetting_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListNotificationSettingRequest> request) async {
    return listNotificationSetting(call, await request);
  }

  $async.Future<$7.CreateNotificationDeviceResponse> createNotificationDevice(
      $grpc.ServiceCall call, $7.CreateNotificationDeviceRequest request);
  $async.Future<$7.CreateNotificationSettingResponse> createNotificationSetting(
      $grpc.ServiceCall call, $7.CreateNotificationSettingRequest request);
  $async.Future<$7.ReadNotificationSettingResponse> readNotificationSetting(
      $grpc.ServiceCall call, $7.ReadNotificationSettingRequest request);
  $async.Future<$7.UpdateNotificationSettingResponse> updateNotificationSetting(
      $grpc.ServiceCall call, $7.UpdateNotificationSettingRequest request);
  $async.Future<$7.DeleteNotificationSettingResponse> deleteNotificationSetting(
      $grpc.ServiceCall call, $7.DeleteNotificationSettingRequest request);
  $async.Future<$7.ListNotificationSettingResponse> listNotificationSetting(
      $grpc.ServiceCall call, $7.ListNotificationSettingRequest request);
}
