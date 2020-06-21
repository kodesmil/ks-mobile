///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/health.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'health.pb.dart' as $5;
export 'health.pb.dart';

class HealthClient extends $grpc.Client {
  static final _$createHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $5.CreateHealthMenstruationDailyEntryRequest,
          $5.CreateHealthMenstruationDailyEntryResponse>(
      '/model.Health/CreateHealthMenstruationDailyEntry',
      ($5.CreateHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$readHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $5.ReadHealthMenstruationDailyEntryRequest,
          $5.ReadHealthMenstruationDailyEntryResponse>(
      '/model.Health/ReadHealthMenstruationDailyEntry',
      ($5.ReadHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ReadHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$updateHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $5.UpdateHealthMenstruationDailyEntryRequest,
          $5.UpdateHealthMenstruationDailyEntryResponse>(
      '/model.Health/UpdateHealthMenstruationDailyEntry',
      ($5.UpdateHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$deleteHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $5.DeleteHealthMenstruationDailyEntryRequest,
          $5.DeleteHealthMenstruationDailyEntryResponse>(
      '/model.Health/DeleteHealthMenstruationDailyEntry',
      ($5.DeleteHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$listHealthMenstruationDailyEntry = $grpc.ClientMethod<
          $5.ListHealthMenstruationDailyEntryRequest,
          $5.ListHealthMenstruationDailyEntryResponse>(
      '/model.Health/ListHealthMenstruationDailyEntry',
      ($5.ListHealthMenstruationDailyEntryRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListHealthMenstruationDailyEntryResponse.fromBuffer(value));
  static final _$createHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $5.CreateHealthMenstruationPersonalInfoRequest,
          $5.CreateHealthMenstruationPersonalInfoResponse>(
      '/model.Health/CreateHealthMenstruationPersonalInfo',
      ($5.CreateHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$readHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $5.ReadHealthMenstruationPersonalInfoRequest,
          $5.ReadHealthMenstruationPersonalInfoResponse>(
      '/model.Health/ReadHealthMenstruationPersonalInfo',
      ($5.ReadHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ReadHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$updateHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $5.UpdateHealthMenstruationPersonalInfoRequest,
          $5.UpdateHealthMenstruationPersonalInfoResponse>(
      '/model.Health/UpdateHealthMenstruationPersonalInfo',
      ($5.UpdateHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$deleteHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $5.DeleteHealthMenstruationPersonalInfoRequest,
          $5.DeleteHealthMenstruationPersonalInfoResponse>(
      '/model.Health/DeleteHealthMenstruationPersonalInfo',
      ($5.DeleteHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteHealthMenstruationPersonalInfoResponse.fromBuffer(value));
  static final _$listHealthMenstruationPersonalInfo = $grpc.ClientMethod<
          $5.ListHealthMenstruationPersonalInfoRequest,
          $5.ListHealthMenstruationPersonalInfoResponse>(
      '/model.Health/ListHealthMenstruationPersonalInfo',
      ($5.ListHealthMenstruationPersonalInfoRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListHealthMenstruationPersonalInfoResponse.fromBuffer(value));

  HealthClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry(
          $5.CreateHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$createHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry(
          $5.ReadHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$readHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry(
          $5.UpdateHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$updateHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry(
          $5.DeleteHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$deleteHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry(
          $5.ListHealthMenstruationDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$listHealthMenstruationDailyEntry,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo(
          $5.CreateHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$createHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo(
          $5.ReadHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$readHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo(
          $5.UpdateHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$updateHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo(
          $5.DeleteHealthMenstruationPersonalInfoRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$deleteHealthMenstruationPersonalInfo,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo(
          $5.ListHealthMenstruationPersonalInfoRequest request,
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
    $addMethod($grpc.ServiceMethod<$5.CreateHealthMenstruationDailyEntryRequest,
            $5.CreateHealthMenstruationDailyEntryResponse>(
        'CreateHealthMenstruationDailyEntry',
        createHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($5.CreateHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadHealthMenstruationDailyEntryRequest,
            $5.ReadHealthMenstruationDailyEntryResponse>(
        'ReadHealthMenstruationDailyEntry',
        readHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($5.ReadHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateHealthMenstruationDailyEntryRequest,
            $5.UpdateHealthMenstruationDailyEntryResponse>(
        'UpdateHealthMenstruationDailyEntry',
        updateHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($5.UpdateHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteHealthMenstruationDailyEntryRequest,
            $5.DeleteHealthMenstruationDailyEntryResponse>(
        'DeleteHealthMenstruationDailyEntry',
        deleteHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($5.DeleteHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListHealthMenstruationDailyEntryRequest,
            $5.ListHealthMenstruationDailyEntryResponse>(
        'ListHealthMenstruationDailyEntry',
        listHealthMenstruationDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListHealthMenstruationDailyEntryRequest.fromBuffer(value),
        ($5.ListHealthMenstruationDailyEntryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $5.CreateHealthMenstruationPersonalInfoRequest,
            $5.CreateHealthMenstruationPersonalInfoResponse>(
        'CreateHealthMenstruationPersonalInfo',
        createHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($5.CreateHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadHealthMenstruationPersonalInfoRequest,
            $5.ReadHealthMenstruationPersonalInfoResponse>(
        'ReadHealthMenstruationPersonalInfo',
        readHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($5.ReadHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $5.UpdateHealthMenstruationPersonalInfoRequest,
            $5.UpdateHealthMenstruationPersonalInfoResponse>(
        'UpdateHealthMenstruationPersonalInfo',
        updateHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($5.UpdateHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $5.DeleteHealthMenstruationPersonalInfoRequest,
            $5.DeleteHealthMenstruationPersonalInfoResponse>(
        'DeleteHealthMenstruationPersonalInfo',
        deleteHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($5.DeleteHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListHealthMenstruationPersonalInfoRequest,
            $5.ListHealthMenstruationPersonalInfoResponse>(
        'ListHealthMenstruationPersonalInfo',
        listHealthMenstruationPersonalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListHealthMenstruationPersonalInfoRequest.fromBuffer(value),
        ($5.ListHealthMenstruationPersonalInfoResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$5.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.CreateHealthMenstruationDailyEntryRequest>
              request) async {
    return createHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$5.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.ReadHealthMenstruationDailyEntryRequest>
              request) async {
    return readHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$5.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.UpdateHealthMenstruationDailyEntryRequest>
              request) async {
    return updateHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$5.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.DeleteHealthMenstruationDailyEntryRequest>
              request) async {
    return deleteHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$5.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.ListHealthMenstruationDailyEntryRequest>
              request) async {
    return listHealthMenstruationDailyEntry(call, await request);
  }

  $async.Future<$5.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.CreateHealthMenstruationPersonalInfoRequest>
              request) async {
    return createHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$5.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.ReadHealthMenstruationPersonalInfoRequest>
              request) async {
    return readHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$5.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.UpdateHealthMenstruationPersonalInfoRequest>
              request) async {
    return updateHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$5.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.DeleteHealthMenstruationPersonalInfoRequest>
              request) async {
    return deleteHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$5.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.ListHealthMenstruationPersonalInfoRequest>
              request) async {
    return listHealthMenstruationPersonalInfo(call, await request);
  }

  $async.Future<$5.CreateHealthMenstruationDailyEntryResponse>
      createHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $5.CreateHealthMenstruationDailyEntryRequest request);
  $async.Future<$5.ReadHealthMenstruationDailyEntryResponse>
      readHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $5.ReadHealthMenstruationDailyEntryRequest request);
  $async.Future<$5.UpdateHealthMenstruationDailyEntryResponse>
      updateHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $5.UpdateHealthMenstruationDailyEntryRequest request);
  $async.Future<$5.DeleteHealthMenstruationDailyEntryResponse>
      deleteHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $5.DeleteHealthMenstruationDailyEntryRequest request);
  $async.Future<$5.ListHealthMenstruationDailyEntryResponse>
      listHealthMenstruationDailyEntry($grpc.ServiceCall call,
          $5.ListHealthMenstruationDailyEntryRequest request);
  $async.Future<$5.CreateHealthMenstruationPersonalInfoResponse>
      createHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $5.CreateHealthMenstruationPersonalInfoRequest request);
  $async.Future<$5.ReadHealthMenstruationPersonalInfoResponse>
      readHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $5.ReadHealthMenstruationPersonalInfoRequest request);
  $async.Future<$5.UpdateHealthMenstruationPersonalInfoResponse>
      updateHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $5.UpdateHealthMenstruationPersonalInfoRequest request);
  $async.Future<$5.DeleteHealthMenstruationPersonalInfoResponse>
      deleteHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $5.DeleteHealthMenstruationPersonalInfoRequest request);
  $async.Future<$5.ListHealthMenstruationPersonalInfoResponse>
      listHealthMenstruationPersonalInfo($grpc.ServiceCall call,
          $5.ListHealthMenstruationPersonalInfoRequest request);
}
