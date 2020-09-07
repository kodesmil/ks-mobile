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
  static final _$createProfile =
      $grpc.ClientMethod<$1.CreateProfileRequest, $1.CreateProfileResponse>(
          '/model.Profiles/CreateProfile',
          ($1.CreateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateProfileResponse.fromBuffer(value));
  static final _$readProfile =
      $grpc.ClientMethod<$1.ReadProfileRequest, $1.ReadProfileResponse>(
          '/model.Profiles/ReadProfile',
          ($1.ReadProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ReadProfileResponse.fromBuffer(value));
  static final _$updateProfile =
      $grpc.ClientMethod<$1.UpdateProfileRequest, $1.UpdateProfileResponse>(
          '/model.Profiles/UpdateProfile',
          ($1.UpdateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateProfileResponse.fromBuffer(value));
  static final _$deleteProfile =
      $grpc.ClientMethod<$1.DeleteProfileRequest, $1.DeleteProfileResponse>(
          '/model.Profiles/DeleteProfile',
          ($1.DeleteProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteProfileResponse.fromBuffer(value));
  static final _$listProfile =
      $grpc.ClientMethod<$1.ListProfileRequest, $1.ListProfileResponse>(
          '/model.Profiles/ListProfile',
          ($1.ListProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListProfileResponse.fromBuffer(value));

  ProfilesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.CreateProfileResponse> createProfile(
      $1.CreateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ReadProfileResponse> readProfile(
      $1.ReadProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.UpdateProfileResponse> updateProfile(
      $1.UpdateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.DeleteProfileResponse> deleteProfile(
      $1.DeleteProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListProfileResponse> listProfile(
      $1.ListProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ProfilesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Profiles';

  ProfilesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.CreateProfileRequest, $1.CreateProfileResponse>(
            'CreateProfile',
            createProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateProfileRequest.fromBuffer(value),
            ($1.CreateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ReadProfileRequest, $1.ReadProfileResponse>(
            'ReadProfile',
            readProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ReadProfileRequest.fromBuffer(value),
            ($1.ReadProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateProfileRequest, $1.UpdateProfileResponse>(
            'UpdateProfile',
            updateProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateProfileRequest.fromBuffer(value),
            ($1.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteProfileRequest, $1.DeleteProfileResponse>(
            'DeleteProfile',
            deleteProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteProfileRequest.fromBuffer(value),
            ($1.DeleteProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListProfileRequest, $1.ListProfileResponse>(
            'ListProfile',
            listProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListProfileRequest.fromBuffer(value),
            ($1.ListProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateProfileResponse> createProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CreateProfileRequest> request) async {
    return createProfile(call, await request);
  }

  $async.Future<$1.ReadProfileResponse> readProfile_Pre($grpc.ServiceCall call,
      $async.Future<$1.ReadProfileRequest> request) async {
    return readProfile(call, await request);
  }

  $async.Future<$1.UpdateProfileResponse> updateProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateProfileRequest> request) async {
    return updateProfile(call, await request);
  }

  $async.Future<$1.DeleteProfileResponse> deleteProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteProfileRequest> request) async {
    return deleteProfile(call, await request);
  }

  $async.Future<$1.ListProfileResponse> listProfile_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListProfileRequest> request) async {
    return listProfile(call, await request);
  }

  $async.Future<$1.CreateProfileResponse> createProfile(
      $grpc.ServiceCall call, $1.CreateProfileRequest request);
  $async.Future<$1.ReadProfileResponse> readProfile(
      $grpc.ServiceCall call, $1.ReadProfileRequest request);
  $async.Future<$1.UpdateProfileResponse> updateProfile(
      $grpc.ServiceCall call, $1.UpdateProfileRequest request);
  $async.Future<$1.DeleteProfileResponse> deleteProfile(
      $grpc.ServiceCall call, $1.DeleteProfileRequest request);
  $async.Future<$1.ListProfileResponse> listProfile(
      $grpc.ServiceCall call, $1.ListProfileRequest request);
}
