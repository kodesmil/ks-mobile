///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/journal.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'journal.pb.dart' as $5;
export 'journal.pb.dart';

class JournalClient extends $grpc.Client {
  static final _$createJournalEntry = $grpc.ClientMethod<
          $5.CreateJournalEntryRequest, $5.CreateJournalEntryResponse>(
      '/model.Journal/CreateJournalEntry',
      ($5.CreateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateJournalEntryResponse.fromBuffer(value));
  static final _$readJournalEntry = $grpc.ClientMethod<
          $5.ReadJournalEntryRequest, $5.ReadJournalEntryResponse>(
      '/model.Journal/ReadJournalEntry',
      ($5.ReadJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ReadJournalEntryResponse.fromBuffer(value));
  static final _$updateJournalEntry = $grpc.ClientMethod<
          $5.UpdateJournalEntryRequest, $5.UpdateJournalEntryResponse>(
      '/model.Journal/UpdateJournalEntry',
      ($5.UpdateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateJournalEntryResponse.fromBuffer(value));
  static final _$deleteJournalEntry = $grpc.ClientMethod<
          $5.DeleteJournalEntryRequest, $5.DeleteJournalEntryResponse>(
      '/model.Journal/DeleteJournalEntry',
      ($5.DeleteJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteJournalEntryResponse.fromBuffer(value));
  static final _$listJournalEntry = $grpc.ClientMethod<
          $5.ListJournalEntryRequest, $5.ListJournalEntryResponse>(
      '/model.Journal/ListJournalEntry',
      ($5.ListJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListJournalEntryResponse.fromBuffer(value));

  JournalClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.CreateJournalEntryResponse> createJournalEntry(
      $5.CreateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ReadJournalEntryResponse> readJournalEntry(
      $5.ReadJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.UpdateJournalEntryResponse> updateJournalEntry(
      $5.UpdateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.DeleteJournalEntryResponse> deleteJournalEntry(
      $5.DeleteJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.ListJournalEntryResponse> listJournalEntry(
      $5.ListJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class JournalServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Journal';

  JournalServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateJournalEntryRequest,
            $5.CreateJournalEntryResponse>(
        'CreateJournalEntry',
        createJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateJournalEntryRequest.fromBuffer(value),
        ($5.CreateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadJournalEntryRequest,
            $5.ReadJournalEntryResponse>(
        'ReadJournalEntry',
        readJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ReadJournalEntryRequest.fromBuffer(value),
        ($5.ReadJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateJournalEntryRequest,
            $5.UpdateJournalEntryResponse>(
        'UpdateJournalEntry',
        updateJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateJournalEntryRequest.fromBuffer(value),
        ($5.UpdateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteJournalEntryRequest,
            $5.DeleteJournalEntryResponse>(
        'DeleteJournalEntry',
        deleteJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteJournalEntryRequest.fromBuffer(value),
        ($5.DeleteJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListJournalEntryRequest,
            $5.ListJournalEntryResponse>(
        'ListJournalEntry',
        listJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListJournalEntryRequest.fromBuffer(value),
        ($5.ListJournalEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateJournalEntryResponse> createJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateJournalEntryRequest> request) async {
    return createJournalEntry(call, await request);
  }

  $async.Future<$5.ReadJournalEntryResponse> readJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ReadJournalEntryRequest> request) async {
    return readJournalEntry(call, await request);
  }

  $async.Future<$5.UpdateJournalEntryResponse> updateJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdateJournalEntryRequest> request) async {
    return updateJournalEntry(call, await request);
  }

  $async.Future<$5.DeleteJournalEntryResponse> deleteJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteJournalEntryRequest> request) async {
    return deleteJournalEntry(call, await request);
  }

  $async.Future<$5.ListJournalEntryResponse> listJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListJournalEntryRequest> request) async {
    return listJournalEntry(call, await request);
  }

  $async.Future<$5.CreateJournalEntryResponse> createJournalEntry(
      $grpc.ServiceCall call, $5.CreateJournalEntryRequest request);
  $async.Future<$5.ReadJournalEntryResponse> readJournalEntry(
      $grpc.ServiceCall call, $5.ReadJournalEntryRequest request);
  $async.Future<$5.UpdateJournalEntryResponse> updateJournalEntry(
      $grpc.ServiceCall call, $5.UpdateJournalEntryRequest request);
  $async.Future<$5.DeleteJournalEntryResponse> deleteJournalEntry(
      $grpc.ServiceCall call, $5.DeleteJournalEntryRequest request);
  $async.Future<$5.ListJournalEntryResponse> listJournalEntry(
      $grpc.ServiceCall call, $5.ListJournalEntryRequest request);
}
