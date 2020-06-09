///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/period.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'period.pb.dart' as $5;
export 'period.pb.dart';

class PeriodClient extends $grpc.Client {
  static final _$createPeriodDailyEntry = $grpc.ClientMethod<
          $5.CreatePeriodDailyEntryRequest, $5.CreatePeriodDailyEntryResponse>(
      '/model.Period/CreatePeriodDailyEntry',
      ($5.CreatePeriodDailyEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreatePeriodDailyEntryResponse.fromBuffer(value));
  static final _$readPeriodDailyEntry = $grpc.ClientMethod<
          $5.ReadPeriodDailyEntryRequest, $5.ReadPeriodDailyEntryResponse>(
      '/model.Period/ReadPeriodDailyEntry',
      ($5.ReadPeriodDailyEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ReadPeriodDailyEntryResponse.fromBuffer(value));
  static final _$updatePeriodDailyEntry = $grpc.ClientMethod<
          $5.UpdatePeriodDailyEntryRequest, $5.UpdatePeriodDailyEntryResponse>(
      '/model.Period/UpdatePeriodDailyEntry',
      ($5.UpdatePeriodDailyEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdatePeriodDailyEntryResponse.fromBuffer(value));
  static final _$deletePeriodDailyEntry = $grpc.ClientMethod<
          $5.DeletePeriodDailyEntryRequest, $5.DeletePeriodDailyEntryResponse>(
      '/model.Period/DeletePeriodDailyEntry',
      ($5.DeletePeriodDailyEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeletePeriodDailyEntryResponse.fromBuffer(value));
  static final _$listPeriodDailyEntry = $grpc.ClientMethod<
          $5.ListPeriodDailyEntryRequest, $5.ListPeriodDailyEntryResponse>(
      '/model.Period/ListPeriodDailyEntry',
      ($5.ListPeriodDailyEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListPeriodDailyEntryResponse.fromBuffer(value));
  static final _$createPeriodInfo = $grpc.ClientMethod<
          $5.CreatePeriodInfoRequest, $5.CreatePeriodInfoResponse>(
      '/model.Period/CreatePeriodInfo',
      ($5.CreatePeriodInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreatePeriodInfoResponse.fromBuffer(value));
  static final _$readPeriodInfo =
      $grpc.ClientMethod<$5.ReadPeriodInfoRequest, $5.ReadPeriodInfoResponse>(
          '/model.Period/ReadPeriodInfo',
          ($5.ReadPeriodInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ReadPeriodInfoResponse.fromBuffer(value));
  static final _$updatePeriodInfo = $grpc.ClientMethod<
          $5.UpdatePeriodInfoRequest, $5.UpdatePeriodInfoResponse>(
      '/model.Period/UpdatePeriodInfo',
      ($5.UpdatePeriodInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdatePeriodInfoResponse.fromBuffer(value));
  static final _$deletePeriodInfo = $grpc.ClientMethod<
          $5.DeletePeriodInfoRequest, $5.DeletePeriodInfoResponse>(
      '/model.Period/DeletePeriodInfo',
      ($5.DeletePeriodInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeletePeriodInfoResponse.fromBuffer(value));
  static final _$listPeriodInfo =
      $grpc.ClientMethod<$5.ListPeriodInfoRequest, $5.ListPeriodInfoResponse>(
          '/model.Period/ListPeriodInfo',
          ($5.ListPeriodInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListPeriodInfoResponse.fromBuffer(value));

  PeriodClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.CreatePeriodDailyEntryResponse>
      createPeriodDailyEntry($5.CreatePeriodDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createPeriodDailyEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadPeriodDailyEntryResponse> readPeriodDailyEntry(
      $5.ReadPeriodDailyEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readPeriodDailyEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdatePeriodDailyEntryResponse>
      updatePeriodDailyEntry($5.UpdatePeriodDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updatePeriodDailyEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeletePeriodDailyEntryResponse>
      deletePeriodDailyEntry($5.DeletePeriodDailyEntryRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deletePeriodDailyEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListPeriodDailyEntryResponse> listPeriodDailyEntry(
      $5.ListPeriodDailyEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listPeriodDailyEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.CreatePeriodInfoResponse> createPeriodInfo(
      $5.CreatePeriodInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createPeriodInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadPeriodInfoResponse> readPeriodInfo(
      $5.ReadPeriodInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readPeriodInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdatePeriodInfoResponse> updatePeriodInfo(
      $5.UpdatePeriodInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updatePeriodInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeletePeriodInfoResponse> deletePeriodInfo(
      $5.DeletePeriodInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deletePeriodInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListPeriodInfoResponse> listPeriodInfo(
      $5.ListPeriodInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listPeriodInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PeriodServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Period';

  PeriodServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreatePeriodDailyEntryRequest,
            $5.CreatePeriodDailyEntryResponse>(
        'CreatePeriodDailyEntry',
        createPeriodDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreatePeriodDailyEntryRequest.fromBuffer(value),
        ($5.CreatePeriodDailyEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadPeriodDailyEntryRequest,
            $5.ReadPeriodDailyEntryResponse>(
        'ReadPeriodDailyEntry',
        readPeriodDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadPeriodDailyEntryRequest.fromBuffer(value),
        ($5.ReadPeriodDailyEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdatePeriodDailyEntryRequest,
            $5.UpdatePeriodDailyEntryResponse>(
        'UpdatePeriodDailyEntry',
        updatePeriodDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdatePeriodDailyEntryRequest.fromBuffer(value),
        ($5.UpdatePeriodDailyEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeletePeriodDailyEntryRequest,
            $5.DeletePeriodDailyEntryResponse>(
        'DeletePeriodDailyEntry',
        deletePeriodDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeletePeriodDailyEntryRequest.fromBuffer(value),
        ($5.DeletePeriodDailyEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListPeriodDailyEntryRequest,
            $5.ListPeriodDailyEntryResponse>(
        'ListPeriodDailyEntry',
        listPeriodDailyEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListPeriodDailyEntryRequest.fromBuffer(value),
        ($5.ListPeriodDailyEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreatePeriodInfoRequest,
            $5.CreatePeriodInfoResponse>(
        'CreatePeriodInfo',
        createPeriodInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreatePeriodInfoRequest.fromBuffer(value),
        ($5.CreatePeriodInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadPeriodInfoRequest,
            $5.ReadPeriodInfoResponse>(
        'ReadPeriodInfo',
        readPeriodInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadPeriodInfoRequest.fromBuffer(value),
        ($5.ReadPeriodInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdatePeriodInfoRequest,
            $5.UpdatePeriodInfoResponse>(
        'UpdatePeriodInfo',
        updatePeriodInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdatePeriodInfoRequest.fromBuffer(value),
        ($5.UpdatePeriodInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeletePeriodInfoRequest,
            $5.DeletePeriodInfoResponse>(
        'DeletePeriodInfo',
        deletePeriodInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeletePeriodInfoRequest.fromBuffer(value),
        ($5.DeletePeriodInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListPeriodInfoRequest,
            $5.ListPeriodInfoResponse>(
        'ListPeriodInfo',
        listPeriodInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListPeriodInfoRequest.fromBuffer(value),
        ($5.ListPeriodInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreatePeriodDailyEntryResponse> createPeriodDailyEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreatePeriodDailyEntryRequest> request) async {
    return createPeriodDailyEntry(call, await request);
  }

  $async.Future<$5.ReadPeriodDailyEntryResponse> readPeriodDailyEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ReadPeriodDailyEntryRequest> request) async {
    return readPeriodDailyEntry(call, await request);
  }

  $async.Future<$5.UpdatePeriodDailyEntryResponse> updatePeriodDailyEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdatePeriodDailyEntryRequest> request) async {
    return updatePeriodDailyEntry(call, await request);
  }

  $async.Future<$5.DeletePeriodDailyEntryResponse> deletePeriodDailyEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeletePeriodDailyEntryRequest> request) async {
    return deletePeriodDailyEntry(call, await request);
  }

  $async.Future<$5.ListPeriodDailyEntryResponse> listPeriodDailyEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListPeriodDailyEntryRequest> request) async {
    return listPeriodDailyEntry(call, await request);
  }

  $async.Future<$5.CreatePeriodInfoResponse> createPeriodInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreatePeriodInfoRequest> request) async {
    return createPeriodInfo(call, await request);
  }

  $async.Future<$5.ReadPeriodInfoResponse> readPeriodInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ReadPeriodInfoRequest> request) async {
    return readPeriodInfo(call, await request);
  }

  $async.Future<$5.UpdatePeriodInfoResponse> updatePeriodInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdatePeriodInfoRequest> request) async {
    return updatePeriodInfo(call, await request);
  }

  $async.Future<$5.DeletePeriodInfoResponse> deletePeriodInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeletePeriodInfoRequest> request) async {
    return deletePeriodInfo(call, await request);
  }

  $async.Future<$5.ListPeriodInfoResponse> listPeriodInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListPeriodInfoRequest> request) async {
    return listPeriodInfo(call, await request);
  }

  $async.Future<$5.CreatePeriodDailyEntryResponse> createPeriodDailyEntry(
      $grpc.ServiceCall call, $5.CreatePeriodDailyEntryRequest request);
  $async.Future<$5.ReadPeriodDailyEntryResponse> readPeriodDailyEntry(
      $grpc.ServiceCall call, $5.ReadPeriodDailyEntryRequest request);
  $async.Future<$5.UpdatePeriodDailyEntryResponse> updatePeriodDailyEntry(
      $grpc.ServiceCall call, $5.UpdatePeriodDailyEntryRequest request);
  $async.Future<$5.DeletePeriodDailyEntryResponse> deletePeriodDailyEntry(
      $grpc.ServiceCall call, $5.DeletePeriodDailyEntryRequest request);
  $async.Future<$5.ListPeriodDailyEntryResponse> listPeriodDailyEntry(
      $grpc.ServiceCall call, $5.ListPeriodDailyEntryRequest request);
  $async.Future<$5.CreatePeriodInfoResponse> createPeriodInfo(
      $grpc.ServiceCall call, $5.CreatePeriodInfoRequest request);
  $async.Future<$5.ReadPeriodInfoResponse> readPeriodInfo(
      $grpc.ServiceCall call, $5.ReadPeriodInfoRequest request);
  $async.Future<$5.UpdatePeriodInfoResponse> updatePeriodInfo(
      $grpc.ServiceCall call, $5.UpdatePeriodInfoRequest request);
  $async.Future<$5.DeletePeriodInfoResponse> deletePeriodInfo(
      $grpc.ServiceCall call, $5.DeletePeriodInfoRequest request);
  $async.Future<$5.ListPeriodInfoResponse> listPeriodInfo(
      $grpc.ServiceCall call, $5.ListPeriodInfoRequest request);
}
