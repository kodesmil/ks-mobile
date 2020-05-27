///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/group.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'group.pb.dart' as $0;
export 'group.pb.dart';

class GroupsClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CreateGroupRequest, $0.CreateGroupResponse>(
          '/model.Groups/Create',
          ($0.CreateGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateGroupResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$0.ReadGroupRequest, $0.ReadGroupResponse>(
          '/model.Groups/Read',
          ($0.ReadGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadGroupResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.UpdateGroupRequest, $0.UpdateGroupResponse>(
          '/model.Groups/Update',
          ($0.UpdateGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateGroupResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.DeleteGroupRequest, $0.DeleteGroupResponse>(
          '/model.Groups/Delete',
          ($0.DeleteGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteGroupResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ListGroupRequest, $0.ListGroupResponse>(
          '/model.Groups/List',
          ($0.ListGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListGroupResponse.fromBuffer(value));

  GroupsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CreateGroupResponse> create(
      $0.CreateGroupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ReadGroupResponse> read($0.ReadGroupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UpdateGroupResponse> update(
      $0.UpdateGroupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteGroupResponse> delete(
      $0.DeleteGroupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListGroupResponse> list($0.ListGroupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class GroupsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Groups';

  GroupsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateGroupRequest, $0.CreateGroupResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateGroupRequest.fromBuffer(value),
            ($0.CreateGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadGroupRequest, $0.ReadGroupResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadGroupRequest.fromBuffer(value),
        ($0.ReadGroupResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateGroupRequest, $0.UpdateGroupResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateGroupRequest.fromBuffer(value),
            ($0.UpdateGroupResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteGroupRequest, $0.DeleteGroupResponse>(
            'Delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteGroupRequest.fromBuffer(value),
            ($0.DeleteGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListGroupRequest, $0.ListGroupResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListGroupRequest.fromBuffer(value),
        ($0.ListGroupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateGroupResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateGroupRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ReadGroupResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$0.ReadGroupRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.UpdateGroupResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateGroupRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteGroupResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteGroupRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ListGroupResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListGroupRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CreateGroupResponse> create(
      $grpc.ServiceCall call, $0.CreateGroupRequest request);
  $async.Future<$0.ReadGroupResponse> read(
      $grpc.ServiceCall call, $0.ReadGroupRequest request);
  $async.Future<$0.UpdateGroupResponse> update(
      $grpc.ServiceCall call, $0.UpdateGroupRequest request);
  $async.Future<$0.DeleteGroupResponse> delete(
      $grpc.ServiceCall call, $0.DeleteGroupRequest request);
  $async.Future<$0.ListGroupResponse> list(
      $grpc.ServiceCall call, $0.ListGroupRequest request);
}
