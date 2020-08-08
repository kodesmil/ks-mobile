///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/health.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'health.pb.dart' as $6;
export 'health.pb.dart';

class HealthClient extends $grpc.Client {
  static final _$createHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $6.CreateHealthMenstruationDailyEntryRequest,
          $6.CreateHealthMenstruationDailyEntryResponse>(
      '/model.Health/CreateHealthMenstruationDailyEntry',
      ($6.CreateHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$readHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $6.ReadHealthMenstruationDailyEntryRequest,
          $6.ReadHealthMenstruationDailyEntryResponse>(
      '/model.Health/ReadHealthMenstruationDailyEntry',
      ($6.ReadHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$updateHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $6.UpdateHealthMenstruationDailyEntryRequest,
          $6.UpdateHealthMenstruationDailyEntryResponse>(
      '/model.Health/UpdateHealthMenstruationDailyEntry',
      ($6.UpdateHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$deleteHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $6.DeleteHealthMenstruationDailyEntryRequest,
          $6.DeleteHealthMenstruationDailyEntryResponse>(
      '/model.Health/DeleteHealthMenstruationDailyEntry',
      ($6.DeleteHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$listHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $6.ListHealthMenstruationDailyEntryRequest,
          $6.ListHealthMenstruationDailyEntryResponse>(
      '/model.Health/ListHealthMenstruationDailyEntry',
      ($6.ListHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$createHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $6.CreateHealthMenstruationPersonalInfoRequest,
          $6.CreateHealthMenstruationPersonalInfoResponse>(
      '/model.Health/CreateHealthMenstruationPersonalInfo',
      ($6.CreateHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$readHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $6.ReadHealthMenstruationPersonalInfoRequest,
          $6.ReadHealthMenstruationPersonalInfoResponse>(
      '/model.Health/ReadHealthMenstruationPersonalInfo',
      ($6.ReadHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$updateHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $6.UpdateHealthMenstruationPersonalInfoRequest,
          $6.UpdateHealthMenstruationPersonalInfoResponse>(
      '/model.Health/UpdateHealthMenstruationPersonalInfo',
      ($6.UpdateHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$deleteHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $6.DeleteHealthMenstruationPersonalInfoRequest,
          $6.DeleteHealthMenstruationPersonalInfoResponse>(
      '/model.Health/DeleteHealthMenstruationPersonalInfo',
      ($6.DeleteHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$listHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $6.ListHealthMenstruationPersonalInfoRequest,
          $6.ListHealthMenstruationPersonalInfoResponse>(
      '/model.Health/ListHealthMenstruationPersonalInfo',
      ($6.ListHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListHealthMenstruationPersonalInfoResponse.fromBuffer(value));

  HealthClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry(
          $6.CreateHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$createHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry(
          $6.ReadHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$readHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry(
          $6.UpdateHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$updateHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry(
          $6.DeleteHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$deleteHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry(
          $6.ListHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$listHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo(
          $6.CreateHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$createHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo(
          $6.ReadHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$readHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo(
          $6.UpdateHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$updateHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo(
          $6.DeleteHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$deleteHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo(
          $6.ListHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$listHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class HealthServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Health';

  HealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateHealthMenstruationDailyEntryRequest,
            $6.CreateHealthMenstruationDailyEntryResponse>(
        'CreateHealthMenstruationDailyEntry',
        createHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($6.CreateHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadHealthMenstruationDailyEntryRequest,
            $6.ReadHealthMenstruationDailyEntryResponse>(
        'ReadHealthMenstruationDailyEntry',
        readHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($6.ReadHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateHealthMenstruationDailyEntryRequest,
            $6.UpdateHealthMenstruationDailyEntryResponse>(
        'UpdateHealthMenstruationDailyEntry',
        updateHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($6.UpdateHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteHealthMenstruationDailyEntryRequest,
            $6.DeleteHealthMenstruationDailyEntryResponse>(
        'DeleteHealthMenstruationDailyEntry',
        deleteHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($6.DeleteHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListHealthMenstruationDailyEntryRequest,
            $6.ListHealthMenstruationDailyEntryResponse>(
        'ListHealthMenstruationDailyEntry',
        listHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($6.ListHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $6.CreateHealthMenstruationPersonalInfoRequest,
            $6.CreateHealthMenstruationPersonalInfoResponse>(
        'CreateHealthMenstruationPersonalInfo',
        createHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($6.CreateHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadHealthMenstruationPersonalInfoRequest,
            $6.ReadHealthMenstruationPersonalInfoResponse>(
        'ReadHealthMenstruationPersonalInfo',
        readHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($6.ReadHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $6.UpdateHealthMenstruationPersonalInfoRequest,
            $6.UpdateHealthMenstruationPersonalInfoResponse>(
        'UpdateHealthMenstruationPersonalInfo',
        updateHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($6.UpdateHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $6.DeleteHealthMenstruationPersonalInfoRequest,
            $6.DeleteHealthMenstruationPersonalInfoResponse>(
        'DeleteHealthMenstruationPersonalInfo',
        deleteHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($6.DeleteHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListHealthMenstruationPersonalInfoRequest,
            $6.ListHealthMenstruationPersonalInfoResponse>(
        'ListHealthMenstruationPersonalInfo',
        listHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($6.ListHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$6.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.CreateHealthMenstruationDailyEntryRequest>
              request) async {
    return createHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$6.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.ReadHealthMenstruationDailyEntryRequest>
              request) async {
    return readHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$6.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.UpdateHealthMenstruationDailyEntryRequest>
              request) async {
    return updateHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$6.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.DeleteHealthMenstruationDailyEntryRequest>
              request) async {
    return deleteHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$6.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.ListHealthMenstruationDailyEntryRequest>
              request) async {
    return listHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$6.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.CreateHealthMenstruationPersonalInfoRequest>
              request) async {
    return createHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$6.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.ReadHealthMenstruationPersonalInfoRequest>
              request) async {
    return readHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$6.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.UpdateHealthMenstruationPersonalInfoRequest>
              request) async {
    return updateHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$6.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.DeleteHealthMenstruationPersonalInfoRequest>
              request) async {
    return deleteHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$6.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.ListHealthMenstruationPersonalInfoRequest>
              request) async {
    return listHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$6.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $6.CreateHealthMenstruationDailyEntryRequest request);
  $async.Future<$6.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $6.ReadHealthMenstruationDailyEntryRequest request);
  $async.Future<$6.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $6.UpdateHealthMenstruationDailyEntryRequest request);
  $async.Future<$6.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $6.DeleteHealthMenstruationDailyEntryRequest request);
  $async.Future<$6.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $6.ListHealthMenstruationDailyEntryRequest request);
  $async.Future<$6.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $6.CreateHealthMenstruationPersonalInfoRequest request);
  $async.Future<$6.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $6.ReadHealthMenstruationPersonalInfoRequest request);
  $async.Future<$6.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $6.UpdateHealthMenstruationPersonalInfoRequest request);
  $async.Future<$6.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $6.DeleteHealthMenstruationPersonalInfoRequest request);
  $async.Future<$6.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $6.ListHealthMenstruationPersonalInfoRequest request);
}
