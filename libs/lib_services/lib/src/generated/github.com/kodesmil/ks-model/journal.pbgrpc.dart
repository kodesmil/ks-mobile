///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/journal.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'journal.pb.dart' as $4;
export 'journal.pb.dart';

class JournalClient extends $grpc.Client {
  static final _$createJournalEntry = $grpc.ClientMethod<
          $4.CreateJournalEntryRequest, $4.CreateJournalEntryResponse>(
      '/model.Journal/CreateJournalEntry',
      ($4.CreateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.CreateJournalEntryResponse.fromBuffer(value));
  static final _$readJournalEntry = $grpc.ClientMethod<
          $4.ReadJournalEntryRequest, $4.ReadJournalEntryResponse>(
      '/model.Journal/ReadJournalEntry',
      ($4.ReadJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ReadJournalEntryResponse.fromBuffer(value));
  static final _$updateJournalEntry = $grpc.ClientMethod<
          $4.UpdateJournalEntryRequest, $4.UpdateJournalEntryResponse>(
      '/model.Journal/UpdateJournalEntry',
      ($4.UpdateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UpdateJournalEntryResponse.fromBuffer(value));
  static final _$deleteJournalEntry = $grpc.ClientMethod<
          $4.DeleteJournalEntryRequest, $4.DeleteJournalEntryResponse>(
      '/model.Journal/DeleteJournalEntry',
      ($4.DeleteJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.DeleteJournalEntryResponse.fromBuffer(value));
  static final _$listJournalEntry = $grpc.ClientMethod<
          $4.ListJournalEntryRequest, $4.ListJournalEntryResponse>(
      '/model.Journal/ListJournalEntry',
      ($4.ListJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListJournalEntryResponse.fromBuffer(value));

  JournalClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.CreateJournalEntryResponse> createJournalEntry(
      $4.CreateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.ReadJournalEntryResponse> readJournalEntry(
      $4.ReadJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.UpdateJournalEntryResponse> updateJournalEntry(
      $4.UpdateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.DeleteJournalEntryResponse> deleteJournalEntry(
      $4.DeleteJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteJournalEntry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.ListJournalEntryResponse> listJournalEntry(
      $4.ListJournalEntryRequest request,
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
    $addMethod($grpc.ServiceMethod<$4.CreateJournalEntryRequest,
            $4.CreateJournalEntryResponse>(
        'CreateJournalEntry',
        createJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateJournalEntryRequest.fromBuffer(value),
        ($4.CreateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReadJournalEntryRequest,
            $4.ReadJournalEntryResponse>(
        'ReadJournalEntry',
        readJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ReadJournalEntryRequest.fromBuffer(value),
        ($4.ReadJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateJournalEntryRequest,
            $4.UpdateJournalEntryResponse>(
        'UpdateJournalEntry',
        updateJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UpdateJournalEntryRequest.fromBuffer(value),
        ($4.UpdateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteJournalEntryRequest,
            $4.DeleteJournalEntryResponse>(
        'DeleteJournalEntry',
        deleteJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteJournalEntryRequest.fromBuffer(value),
        ($4.DeleteJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListJournalEntryRequest,
            $4.ListJournalEntryResponse>(
        'ListJournalEntry',
        listJournalEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListJournalEntryRequest.fromBuffer(value),
        ($4.ListJournalEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateJournalEntryResponse> createJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateJournalEntryRequest> request) async {
    return createJournalEntry(call, await request);
  }

  $async.Future<$4.ReadJournalEntryResponse> readJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ReadJournalEntryRequest> request) async {
    return readJournalEntry(call, await request);
  }

  $async.Future<$4.UpdateJournalEntryResponse> updateJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateJournalEntryRequest> request) async {
    return updateJournalEntry(call, await request);
  }

  $async.Future<$4.DeleteJournalEntryResponse> deleteJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteJournalEntryRequest> request) async {
    return deleteJournalEntry(call, await request);
  }

  $async.Future<$4.ListJournalEntryResponse> listJournalEntry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListJournalEntryRequest> request) async {
    return listJournalEntry(call, await request);
  }

  $async.Future<$4.CreateJournalEntryResponse> createJournalEntry(
      $grpc.ServiceCall call, $4.CreateJournalEntryRequest request);
  $async.Future<$4.ReadJournalEntryResponse> readJournalEntry(
      $grpc.ServiceCall call, $4.ReadJournalEntryRequest request);
  $async.Future<$4.UpdateJournalEntryResponse> updateJournalEntry(
      $grpc.ServiceCall call, $4.UpdateJournalEntryRequest request);
  $async.Future<$4.DeleteJournalEntryResponse> deleteJournalEntry(
      $grpc.ServiceCall call, $4.DeleteJournalEntryRequest request);
  $async.Future<$4.ListJournalEntryResponse> listJournalEntry(
      $grpc.ServiceCall call, $4.ListJournalEntryRequest request);
}
