///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/go-patient-registry/pkg/pb/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class JournalEntriesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateJournalEntryRequest,
          $0.CreateJournalEntryResponse>(
      '/service.JournalEntries/Create',
      ($0.CreateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateJournalEntryResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$0.ReadJournalEntryRequest,
          $0.ReadJournalEntryResponse>(
      '/service.JournalEntries/Read',
      ($0.ReadJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ReadJournalEntryResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateJournalEntryRequest,
          $0.UpdateJournalEntryResponse>(
      '/service.JournalEntries/Update',
      ($0.UpdateJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateJournalEntryResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteJournalEntryRequest,
          $0.DeleteJournalEntryResponse>(
      '/service.JournalEntries/Delete',
      ($0.DeleteJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteJournalEntryResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ListJournalEntryRequest,
          $0.ListJournalEntryResponse>(
      '/service.JournalEntries/List',
      ($0.ListJournalEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListJournalEntryResponse.fromBuffer(value));

  JournalEntriesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CreateJournalEntryResponse> create(
      $0.CreateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ReadJournalEntryResponse> read(
      $0.ReadJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UpdateJournalEntryResponse> update(
      $0.UpdateJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteJournalEntryResponse> delete(
      $0.DeleteJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListJournalEntryResponse> list(
      $0.ListJournalEntryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class JournalEntriesServiceBase extends $grpc.Service {
  $core.String get $name => 'service.JournalEntries';

  JournalEntriesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateJournalEntryRequest,
            $0.CreateJournalEntryResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateJournalEntryRequest.fromBuffer(value),
        ($0.CreateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadJournalEntryRequest,
            $0.ReadJournalEntryResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ReadJournalEntryRequest.fromBuffer(value),
        ($0.ReadJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateJournalEntryRequest,
            $0.UpdateJournalEntryResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateJournalEntryRequest.fromBuffer(value),
        ($0.UpdateJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteJournalEntryRequest,
            $0.DeleteJournalEntryResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteJournalEntryRequest.fromBuffer(value),
        ($0.DeleteJournalEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListJournalEntryRequest,
            $0.ListJournalEntryResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListJournalEntryRequest.fromBuffer(value),
        ($0.ListJournalEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateJournalEntryResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateJournalEntryRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ReadJournalEntryResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$0.ReadJournalEntryRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.UpdateJournalEntryResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateJournalEntryRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteJournalEntryResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteJournalEntryRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ListJournalEntryResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListJournalEntryRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CreateJournalEntryResponse> create(
      $grpc.ServiceCall call, $0.CreateJournalEntryRequest request);
  $async.Future<$0.ReadJournalEntryResponse> read(
      $grpc.ServiceCall call, $0.ReadJournalEntryRequest request);
  $async.Future<$0.UpdateJournalEntryResponse> update(
      $grpc.ServiceCall call, $0.UpdateJournalEntryRequest request);
  $async.Future<$0.DeleteJournalEntryResponse> delete(
      $grpc.ServiceCall call, $0.DeleteJournalEntryRequest request);
  $async.Future<$0.ListJournalEntryResponse> list(
      $grpc.ServiceCall call, $0.ListJournalEntryRequest request);
}

class JournalSubjectsClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$0.ListJournalSubjectRequest,
          $0.ListJournalSubjectResponse>(
      '/service.JournalSubjects/List',
      ($0.ListJournalSubjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListJournalSubjectResponse.fromBuffer(value));

  JournalSubjectsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.ListJournalSubjectResponse> list(
      $0.ListJournalSubjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class JournalSubjectsServiceBase extends $grpc.Service {
  $core.String get $name => 'service.JournalSubjects';

  JournalSubjectsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListJournalSubjectRequest,
            $0.ListJournalSubjectResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListJournalSubjectRequest.fromBuffer(value),
        ($0.ListJournalSubjectResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListJournalSubjectResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListJournalSubjectRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ListJournalSubjectResponse> list(
      $grpc.ServiceCall call, $0.ListJournalSubjectRequest request);
}

class ProfilesClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CreateProfileRequest, $0.CreateProfileResponse>(
          '/service.Profiles/Create',
          ($0.CreateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateProfileResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$0.ReadProfileRequest, $0.ReadProfileResponse>(
          '/service.Profiles/Read',
          ($0.ReadProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadProfileResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
          '/service.Profiles/Update',
          ($0.UpdateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateProfileResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.DeleteProfileRequest, $0.DeleteProfileResponse>(
          '/service.Profiles/Delete',
          ($0.DeleteProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteProfileResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ListProfileRequest, $0.ListProfilesResponse>(
          '/service.Profiles/List',
          ($0.ListProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListProfilesResponse.fromBuffer(value));

  ProfilesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CreateProfileResponse> create(
      $0.CreateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ReadProfileResponse> read(
      $0.ReadProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UpdateProfileResponse> update(
      $0.UpdateProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteProfileResponse> delete(
      $0.DeleteProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListProfilesResponse> list(
      $0.ListProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ProfilesServiceBase extends $grpc.Service {
  $core.String get $name => 'service.Profiles';

  ProfilesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateProfileRequest, $0.CreateProfileResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateProfileRequest.fromBuffer(value),
            ($0.CreateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ReadProfileRequest, $0.ReadProfileResponse>(
            'Read',
            read_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ReadProfileRequest.fromBuffer(value),
            ($0.ReadProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateProfileRequest.fromBuffer(value),
            ($0.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteProfileRequest, $0.DeleteProfileResponse>(
            'Delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteProfileRequest.fromBuffer(value),
            ($0.DeleteProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListProfileRequest, $0.ListProfilesResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListProfileRequest.fromBuffer(value),
            ($0.ListProfilesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateProfileResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateProfileRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ReadProfileResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$0.ReadProfileRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.UpdateProfileResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateProfileRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteProfileResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteProfileRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ListProfilesResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListProfileRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.CreateProfileResponse> create(
      $grpc.ServiceCall call, $0.CreateProfileRequest request);
  $async.Future<$0.ReadProfileResponse> read(
      $grpc.ServiceCall call, $0.ReadProfileRequest request);
  $async.Future<$0.UpdateProfileResponse> update(
      $grpc.ServiceCall call, $0.UpdateProfileRequest request);
  $async.Future<$0.DeleteProfileResponse> delete(
      $grpc.ServiceCall call, $0.DeleteProfileRequest request);
  $async.Future<$0.ListProfilesResponse> list(
      $grpc.ServiceCall call, $0.ListProfileRequest request);
}

class GroupsClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CreateGroupRequest, $0.CreateGroupResponse>(
          '/service.Groups/Create',
          ($0.CreateGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateGroupResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$0.ReadGroupRequest, $0.ReadGroupResponse>(
          '/service.Groups/Read',
          ($0.ReadGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadGroupResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.UpdateGroupRequest, $0.UpdateGroupResponse>(
          '/service.Groups/Update',
          ($0.UpdateGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateGroupResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.DeleteGroupRequest, $0.DeleteGroupResponse>(
          '/service.Groups/Delete',
          ($0.DeleteGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteGroupResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ListGroupRequest, $0.ListGroupResponse>(
          '/service.Groups/List',
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
  $core.String get $name => 'service.Groups';

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
