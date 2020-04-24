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
      $grpc.ClientMethod<$0.ListGroupRequest, $0.ListGroupsResponse>(
          '/service.Groups/List',
          ($0.ListGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListGroupsResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$0.ListGroupsResponse> list($0.ListGroupRequest request,
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
    $addMethod($grpc.ServiceMethod<$0.ListGroupRequest, $0.ListGroupsResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListGroupRequest.fromBuffer(value),
        ($0.ListGroupsResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.ListGroupsResponse> list_Pre($grpc.ServiceCall call,
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
  $async.Future<$0.ListGroupsResponse> list(
      $grpc.ServiceCall call, $0.ListGroupRequest request);
}

class ContactsClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CreateContactRequest, $0.CreateContactResponse>(
          '/service.Contacts/Create',
          ($0.CreateContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateContactResponse.fromBuffer(value));
  static final _$read =
      $grpc.ClientMethod<$0.ReadContactRequest, $0.ReadContactResponse>(
          '/service.Contacts/Read',
          ($0.ReadContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadContactResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.UpdateContactRequest, $0.UpdateContactResponse>(
          '/service.Contacts/Update',
          ($0.UpdateContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateContactResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.DeleteContactRequest, $0.DeleteContactResponse>(
          '/service.Contacts/Delete',
          ($0.DeleteContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteContactResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ListContactRequest, $0.ListContactsResponse>(
          '/service.Contacts/List',
          ($0.ListContactRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListContactsResponse.fromBuffer(value));
  static final _$sendSMS = $grpc.ClientMethod<$0.SMSRequest, $0.SMSResponse>(
      '/service.Contacts/SendSMS',
      ($0.SMSRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SMSResponse.fromBuffer(value));

  ContactsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CreateContactResponse> create(
      $0.CreateContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ReadContactResponse> read(
      $0.ReadContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UpdateContactResponse> update(
      $0.UpdateContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteContactResponse> delete(
      $0.DeleteContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListContactsResponse> list(
      $0.ListContactRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SMSResponse> sendSMS($0.SMSRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendSMS, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ContactsServiceBase extends $grpc.Service {
  $core.String get $name => 'service.Contacts';

  ContactsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateContactRequest, $0.CreateContactResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateContactRequest.fromBuffer(value),
            ($0.CreateContactResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ReadContactRequest, $0.ReadContactResponse>(
            'Read',
            read_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ReadContactRequest.fromBuffer(value),
            ($0.ReadContactResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateContactRequest, $0.UpdateContactResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateContactRequest.fromBuffer(value),
            ($0.UpdateContactResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteContactRequest, $0.DeleteContactResponse>(
            'Delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteContactRequest.fromBuffer(value),
            ($0.DeleteContactResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListContactRequest, $0.ListContactsResponse>(
            'List',
            list_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListContactRequest.fromBuffer(value),
            ($0.ListContactsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SMSRequest, $0.SMSResponse>(
        'SendSMS',
        sendSMS_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SMSRequest.fromBuffer(value),
        ($0.SMSResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateContactResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateContactRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ReadContactResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$0.ReadContactRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.UpdateContactResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateContactRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteContactResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteContactRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ListContactsResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListContactRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.SMSResponse> sendSMS_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SMSRequest> request) async {
    return sendSMS(call, await request);
  }

  $async.Future<$0.CreateContactResponse> create(
      $grpc.ServiceCall call, $0.CreateContactRequest request);
  $async.Future<$0.ReadContactResponse> read(
      $grpc.ServiceCall call, $0.ReadContactRequest request);
  $async.Future<$0.UpdateContactResponse> update(
      $grpc.ServiceCall call, $0.UpdateContactRequest request);
  $async.Future<$0.DeleteContactResponse> delete(
      $grpc.ServiceCall call, $0.DeleteContactRequest request);
  $async.Future<$0.ListContactsResponse> list(
      $grpc.ServiceCall call, $0.ListContactRequest request);
  $async.Future<$0.SMSResponse> sendSMS(
      $grpc.ServiceCall call, $0.SMSRequest request);
}
