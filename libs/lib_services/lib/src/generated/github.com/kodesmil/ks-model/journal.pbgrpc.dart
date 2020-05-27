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

class JournalEntriesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$4.CreateJournalEntryRequest,
          $4.CreateJournalEntryResponse>(
      '/model.JournalEntries/Create',
      ($4.CreateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.CreateJournalEntryResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$4.ReadJournalEntryRequest,
          $4.ReadJournalEntryResponse>(
      '/model.JournalEntries/Read',
      ($4.ReadJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ReadJournalEntryResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$4.UpdateJournalEntryRequest,
          $4.UpdateJournalEntryResponse>(
      '/model.JournalEntries/Update',
      ($4.UpdateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UpdateJournalEntryResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.DeleteJournalEntryRequest,
          $4.DeleteJournalEntryResponse>(
      '/model.JournalEntries/Delete',
      ($4.DeleteJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.DeleteJournalEntryResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$4.ListJournalEntryRequest,
          $4.ListJournalEntryResponse>(
      '/model.JournalEntries/List',
      ($4.ListJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListJournalEntryResponse.fromBuffer(value));

  JournalEntriesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.CreateJournalEntryResponse> create(
      $4.CreateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.ReadJournalEntryResponse> read(
      $4.ReadJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.UpdateJournalEntryResponse> update(
      $4.UpdateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.DeleteJournalEntryResponse> delete(
      $4.DeleteJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.ListJournalEntryResponse> list(
      $4.ListJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class JournalEntriesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.JournalEntries';

  JournalEntriesServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateJournalEntryRequest,
            $4.CreateJournalEntryResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateJournalEntryRequest.fromBuffer(value),
        ($4.CreateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReadJournalEntryRequest,
            $4.ReadJournalEntryResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ReadJournalEntryRequest.fromBuffer(value),
        ($4.ReadJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateJournalEntryRequest,
            $4.UpdateJournalEntryResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UpdateJournalEntryRequest.fromBuffer(value),
        ($4.UpdateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteJournalEntryRequest,
            $4.DeleteJournalEntryResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteJournalEntryRequest.fromBuffer(value),
        ($4.DeleteJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListJournalEntryRequest,
            $4.ListJournalEntryResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListJournalEntryRequest.fromBuffer(value),
        ($4.ListJournalEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateJournalEntryResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateJournalEntryRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$4.ReadJournalEntryResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$4.ReadJournalEntryRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$4.UpdateJournalEntryResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateJournalEntryRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$4.DeleteJournalEntryResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteJournalEntryRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$4.ListJournalEntryResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$4.ListJournalEntryRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$4.CreateJournalEntryResponse> create(
      $grpc.ServiceCall call, $4.CreateJournalEntryRequest request);
  $async.Future<$4.ReadJournalEntryResponse> read(
      $grpc.ServiceCall call, $4.ReadJournalEntryRequest request);
  $async.Future<$4.UpdateJournalEntryResponse> update(
      $grpc.ServiceCall call, $4.UpdateJournalEntryRequest request);
  $async.Future<$4.DeleteJournalEntryResponse> delete(
      $grpc.ServiceCall call, $4.DeleteJournalEntryRequest request);
  $async.Future<$4.ListJournalEntryResponse> list(
      $grpc.ServiceCall call, $4.ListJournalEntryRequest request);
}

class JournalSubjectsClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$4.ListJournalSubjectRequest,
          $4.ListJournalSubjectResponse>(
      '/model.JournalSubjects/List',
      ($4.ListJournalSubjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListJournalSubjectResponse.fromBuffer(value));

  JournalSubjectsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.ListJournalSubjectResponse> list(
      $4.ListJournalSubjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class JournalSubjectsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.JournalSubjects';

  JournalSubjectsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ListJournalSubjectRequest,
            $4.ListJournalSubjectResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListJournalSubjectRequest.fromBuffer(value),
        ($4.ListJournalSubjectResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.ListJournalSubjectResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$4.ListJournalSubjectRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$4.ListJournalSubjectResponse> list(
      $grpc.ServiceCall call, $4.ListJournalSubjectRequest request);
}
