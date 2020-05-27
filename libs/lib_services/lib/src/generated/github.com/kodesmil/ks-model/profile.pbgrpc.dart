///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/profile.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'profile.pb.dart' as $1;
export 'profile.pb.dart';

class ProfilesClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.CreateProfileRequest, $1.CreateProfileResponse>(
          '/model.Profiles/Create',
          ($1.CreateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateProfileResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$1.ReadProfileRequest, $1.ReadProfileResponse>(
          '/model.Profiles/Read',
          ($1.ReadProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ReadProfileResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$1.UpdateProfileRequest, $1.UpdateProfileResponse>(
          '/model.Profiles/Update',
          ($1.UpdateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateProfileResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$1.DeleteProfileRequest, $1.DeleteProfileResponse>(
          '/model.Profiles/Delete',
          ($1.DeleteProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteProfileResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$1.ListProfileRequest, $1.ListProfileResponse>(
          '/model.Profiles/List',
          ($1.ListProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListProfileResponse.fromBuffer(value));

  ProfilesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.CreateProfileResponse> create(
      $1.CreateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ReadProfileResponse> read(
      $1.ReadProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.UpdateProfileResponse> update(
      $1.UpdateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.DeleteProfileResponse> delete(
      $1.DeleteProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListProfileResponse> list(
      $1.ListProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ProfilesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Profiles';

  ProfilesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.CreateProfileRequest, $1.CreateProfileResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateProfileRequest.fromBuffer(value),
            ($1.CreateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ReadProfileRequest, $1.ReadProfileResponse>(
            'Read',
            read_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ReadProfileRequest.fromBuffer(value),
            ($1.ReadProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateProfileRequest, $1.UpdateProfileResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateProfileRequest.fromBuffer(value),
            ($1.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteProfileRequest, $1.DeleteProfileResponse>(
            'Delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteProfileRequest.fromBuffer(value),
            ($1.DeleteProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListProfileRequest, $1.ListProfileResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListProfileRequest.fromBuffer(value),
            ($1.ListProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateProfileResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateProfileRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.ReadProfileResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$1.ReadProfileRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$1.UpdateProfileResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateProfileRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.DeleteProfileResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteProfileRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.ListProfileResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListProfileRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$1.CreateProfileResponse> create(
      $grpc.ServiceCall call, $1.CreateProfileRequest request);
  $async.Future<$1.ReadProfileResponse> read(
      $grpc.ServiceCall call, $1.ReadProfileRequest request);
  $async.Future<$1.UpdateProfileResponse> update(
      $grpc.ServiceCall call, $1.UpdateProfileRequest request);
  $async.Future<$1.DeleteProfileResponse> delete(
      $grpc.ServiceCall call, $1.DeleteProfileRequest request);
  $async.Future<$1.ListProfileResponse> list(
      $grpc.ServiceCall call, $1.ListProfileRequest request);
}
