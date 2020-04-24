///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'atlas-app-toolkit/rpc/resource/resource.pb.dart' as $1;
import 'atlas-app-toolkit/query/collection_operators.pb.dart' as $2;
import 'protoc-gen-gorm/types/types.pb.dart' as $3;
import 'google/protobuf/field_mask.pb.dart' as $4;

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'notes')
    ..pc<Contact>(4, 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..pc<Group>(5, 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Contact> get contacts => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Group> get groups => $_getList(4);
}

class CreateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  CreateProfileRequest._() : super();
  factory CreateProfileRequest() => create();
  factory CreateProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateProfileRequest clone() =>
      CreateProfileRequest()..mergeFromMessage(this);
  CreateProfileRequest copyWith(void Function(CreateProfileRequest) updates) =>
      super.copyWith((message) => updates(message as CreateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest create() => CreateProfileRequest._();
  CreateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProfileRequest> createRepeated() =>
      $pb.PbList<CreateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProfileRequest>(create);
  static CreateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class CreateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  CreateProfileResponse._() : super();
  factory CreateProfileResponse() => create();
  factory CreateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateProfileResponse clone() =>
      CreateProfileResponse()..mergeFromMessage(this);
  CreateProfileResponse copyWith(
          void Function(CreateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as CreateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse create() => CreateProfileResponse._();
  CreateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<CreateProfileResponse> createRepeated() =>
      $pb.PbList<CreateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProfileResponse>(create);
  static CreateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class ReadProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadProfileRequest._() : super();
  factory ReadProfileRequest() => create();
  factory ReadProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadProfileRequest clone() => ReadProfileRequest()..mergeFromMessage(this);
  ReadProfileRequest copyWith(void Function(ReadProfileRequest) updates) =>
      super.copyWith((message) => updates(message as ReadProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest create() => ReadProfileRequest._();
  ReadProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ReadProfileRequest> createRepeated() =>
      $pb.PbList<ReadProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadProfileRequest>(create);
  static ReadProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ReadProfileResponse._() : super();
  factory ReadProfileResponse() => create();
  factory ReadProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadProfileResponse clone() => ReadProfileResponse()..mergeFromMessage(this);
  ReadProfileResponse copyWith(void Function(ReadProfileResponse) updates) =>
      super.copyWith((message) => updates(message as ReadProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse create() => ReadProfileResponse._();
  ReadProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ReadProfileResponse> createRepeated() =>
      $pb.PbList<ReadProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadProfileResponse>(create);
  static ReadProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class UpdateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  UpdateProfileRequest._() : super();
  factory UpdateProfileRequest() => create();
  factory UpdateProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateProfileRequest clone() =>
      UpdateProfileRequest()..mergeFromMessage(this);
  UpdateProfileRequest copyWith(void Function(UpdateProfileRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest create() => UpdateProfileRequest._();
  UpdateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileRequest> createRepeated() =>
      $pb.PbList<UpdateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileRequest>(create);
  static UpdateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse() => create();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateProfileResponse clone() =>
      UpdateProfileResponse()..mergeFromMessage(this);
  UpdateProfileResponse copyWith(
          void Function(UpdateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() =>
      $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class DeleteProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteProfileRequest._() : super();
  factory DeleteProfileRequest() => create();
  factory DeleteProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteProfileRequest clone() =>
      DeleteProfileRequest()..mergeFromMessage(this);
  DeleteProfileRequest copyWith(void Function(DeleteProfileRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest create() => DeleteProfileRequest._();
  DeleteProfileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileRequest> createRepeated() =>
      $pb.PbList<DeleteProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProfileRequest>(create);
  static DeleteProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteProfileResponse._() : super();
  factory DeleteProfileResponse() => create();
  factory DeleteProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteProfileResponse clone() =>
      DeleteProfileResponse()..mergeFromMessage(this);
  DeleteProfileResponse copyWith(
          void Function(DeleteProfileResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse create() => DeleteProfileResponse._();
  DeleteProfileResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileResponse> createRepeated() =>
      $pb.PbList<DeleteProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProfileResponse>(create);
  static DeleteProfileResponse _defaultInstance;
}

class ListProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$2.Filtering>(1, 'filter', subBuilder: $2.Filtering.create)
    ..aOM<$2.Sorting>(2, 'orderBy', subBuilder: $2.Sorting.create)
    ..aOM<$2.FieldSelection>(3, 'fields', subBuilder: $2.FieldSelection.create)
    ..aOM<$2.Pagination>(4, 'paging', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false;

  ListProfileRequest._() : super();
  factory ListProfileRequest() => create();
  factory ListProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListProfileRequest clone() => ListProfileRequest()..mergeFromMessage(this);
  ListProfileRequest copyWith(void Function(ListProfileRequest) updates) =>
      super.copyWith((message) => updates(message as ListProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest create() => ListProfileRequest._();
  ListProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfileRequest> createRepeated() =>
      $pb.PbList<ListProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfileRequest>(create);
  static ListProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $2.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($2.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $2.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($2.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $2.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($2.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $2.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($2.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $2.Pagination ensurePaging() => $_ensure(3);
}

class ListProfilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfilesResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Profile>(1, 'results', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ListProfilesResponse._() : super();
  factory ListProfilesResponse() => create();
  factory ListProfilesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfilesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListProfilesResponse clone() =>
      ListProfilesResponse()..mergeFromMessage(this);
  ListProfilesResponse copyWith(void Function(ListProfilesResponse) updates) =>
      super.copyWith((message) => updates(message as ListProfilesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfilesResponse create() => ListProfilesResponse._();
  ListProfilesResponse createEmptyInstance() => create();
  static $pb.PbList<ListProfilesResponse> createRepeated() =>
      $pb.PbList<ListProfilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListProfilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfilesResponse>(create);
  static ListProfilesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Profile> get results => $_getList(0);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Group',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'notes')
    ..aOM<$1.Identifier>(4, 'profileId', subBuilder: $1.Identifier.create)
    ..pc<Contact>(5, 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..hasRequiredFields = false;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Group clone() => Group()..mergeFromMessage(this);
  Group copyWith(void Function(Group) updates) =>
      super.copyWith((message) => updates(message as Group));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $1.Identifier get profileId => $_getN(3);
  @$pb.TagNumber(4)
  set profileId($1.Identifier v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProfileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileId() => clearField(4);
  @$pb.TagNumber(4)
  $1.Identifier ensureProfileId() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<Contact> get contacts => $_getList(4);
}

class CreateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false;

  CreateGroupRequest._() : super();
  factory CreateGroupRequest() => create();
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as CreateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest create() => CreateGroupRequest._();
  CreateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRequest> createRepeated() =>
      $pb.PbList<CreateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateGroupRequest>(create);
  static CreateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class CreateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  CreateGroupResponse._() : super();
  factory CreateGroupResponse() => create();
  factory CreateGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateGroupResponse clone() => CreateGroupResponse()..mergeFromMessage(this);
  CreateGroupResponse copyWith(void Function(CreateGroupResponse) updates) =>
      super.copyWith((message) => updates(message as CreateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse create() => CreateGroupResponse._();
  CreateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<CreateGroupResponse> createRepeated() =>
      $pb.PbList<CreateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateGroupResponse>(create);
  static CreateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class ReadGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadGroupRequest._() : super();
  factory ReadGroupRequest() => create();
  factory ReadGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadGroupRequest clone() => ReadGroupRequest()..mergeFromMessage(this);
  ReadGroupRequest copyWith(void Function(ReadGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ReadGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest create() => ReadGroupRequest._();
  ReadGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ReadGroupRequest> createRepeated() =>
      $pb.PbList<ReadGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadGroupRequest>(create);
  static ReadGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  ReadGroupResponse._() : super();
  factory ReadGroupResponse() => create();
  factory ReadGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadGroupResponse clone() => ReadGroupResponse()..mergeFromMessage(this);
  ReadGroupResponse copyWith(void Function(ReadGroupResponse) updates) =>
      super.copyWith((message) => updates(message as ReadGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse create() => ReadGroupResponse._();
  ReadGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ReadGroupResponse> createRepeated() =>
      $pb.PbList<ReadGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadGroupResponse>(create);
  static ReadGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class UpdateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false;

  UpdateGroupRequest._() : super();
  factory UpdateGroupRequest() => create();
  factory UpdateGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateGroupRequest clone() => UpdateGroupRequest()..mergeFromMessage(this);
  UpdateGroupRequest copyWith(void Function(UpdateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest create() => UpdateGroupRequest._();
  UpdateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupRequest> createRepeated() =>
      $pb.PbList<UpdateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateGroupRequest>(create);
  static UpdateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class UpdateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  UpdateGroupResponse._() : super();
  factory UpdateGroupResponse() => create();
  factory UpdateGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateGroupResponse clone() => UpdateGroupResponse()..mergeFromMessage(this);
  UpdateGroupResponse copyWith(void Function(UpdateGroupResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse create() => UpdateGroupResponse._();
  UpdateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupResponse> createRepeated() =>
      $pb.PbList<UpdateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateGroupResponse>(create);
  static UpdateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class DeleteGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest() => create();
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest create() => DeleteGroupRequest._();
  DeleteGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRequest> createRepeated() =>
      $pb.PbList<DeleteGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteGroupRequest>(create);
  static DeleteGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteGroupResponse._() : super();
  factory DeleteGroupResponse() => create();
  factory DeleteGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteGroupResponse clone() => DeleteGroupResponse()..mergeFromMessage(this);
  DeleteGroupResponse copyWith(void Function(DeleteGroupResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse create() => DeleteGroupResponse._();
  DeleteGroupResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupResponse> createRepeated() =>
      $pb.PbList<DeleteGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteGroupResponse>(create);
  static DeleteGroupResponse _defaultInstance;
}

class ListGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$2.Filtering>(1, 'filter', subBuilder: $2.Filtering.create)
    ..aOM<$2.Sorting>(2, 'orderBy', subBuilder: $2.Sorting.create)
    ..aOM<$2.FieldSelection>(3, 'fields', subBuilder: $2.FieldSelection.create)
    ..aOM<$2.Pagination>(4, 'paging', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false;

  ListGroupRequest._() : super();
  factory ListGroupRequest() => create();
  factory ListGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListGroupRequest clone() => ListGroupRequest()..mergeFromMessage(this);
  ListGroupRequest copyWith(void Function(ListGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ListGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest create() => ListGroupRequest._();
  ListGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ListGroupRequest> createRepeated() =>
      $pb.PbList<ListGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGroupRequest>(create);
  static ListGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $2.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($2.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $2.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($2.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $2.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($2.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $2.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($2.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $2.Pagination ensurePaging() => $_ensure(3);
}

class ListGroupsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupsResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Group>(1, 'results', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false;

  ListGroupsResponse._() : super();
  factory ListGroupsResponse() => create();
  factory ListGroupsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListGroupsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListGroupsResponse clone() => ListGroupsResponse()..mergeFromMessage(this);
  ListGroupsResponse copyWith(void Function(ListGroupsResponse) updates) =>
      super.copyWith((message) => updates(message as ListGroupsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupsResponse create() => ListGroupsResponse._();
  ListGroupsResponse createEmptyInstance() => create();
  static $pb.PbList<ListGroupsResponse> createRepeated() =>
      $pb.PbList<ListGroupsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGroupsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGroupsResponse>(create);
  static ListGroupsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get results => $_getList(0);
}

class Contact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Contact',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'firstName')
    ..aOS(3, 'middleName')
    ..aOS(4, 'lastName')
    ..aOS(5, 'primaryEmail')
    ..aOS(6, 'notes')
    ..pc<Email>(7, 'emails', $pb.PbFieldType.PM, subBuilder: Email.create)
    ..aOM<Address>(8, 'homeAddress', subBuilder: Address.create)
    ..aOM<Address>(9, 'workAddress', subBuilder: Address.create)
    ..aOM<$1.Identifier>(10, 'profileId', subBuilder: $1.Identifier.create)
    ..pc<Group>(11, 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..aOM<$3.JSONValue>(12, 'nicknames', subBuilder: $3.JSONValue.create)
    ..hasRequiredFields = false;

  Contact._() : super();
  factory Contact() => create();
  factory Contact.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Contact clone() => Contact()..mergeFromMessage(this);
  Contact copyWith(void Function(Contact) updates) =>
      super.copyWith((message) => updates(message as Contact));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get middleName => $_getSZ(2);
  @$pb.TagNumber(3)
  set middleName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMiddleName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMiddleName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get primaryEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set primaryEmail($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPrimaryEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrimaryEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get notes => $_getSZ(5);
  @$pb.TagNumber(6)
  set notes($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNotes() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotes() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Email> get emails => $_getList(6);

  @$pb.TagNumber(8)
  Address get homeAddress => $_getN(7);
  @$pb.TagNumber(8)
  set homeAddress(Address v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasHomeAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearHomeAddress() => clearField(8);
  @$pb.TagNumber(8)
  Address ensureHomeAddress() => $_ensure(7);

  @$pb.TagNumber(9)
  Address get workAddress => $_getN(8);
  @$pb.TagNumber(9)
  set workAddress(Address v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasWorkAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearWorkAddress() => clearField(9);
  @$pb.TagNumber(9)
  Address ensureWorkAddress() => $_ensure(8);

  @$pb.TagNumber(10)
  $1.Identifier get profileId => $_getN(9);
  @$pb.TagNumber(10)
  set profileId($1.Identifier v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasProfileId() => $_has(9);
  @$pb.TagNumber(10)
  void clearProfileId() => clearField(10);
  @$pb.TagNumber(10)
  $1.Identifier ensureProfileId() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<Group> get groups => $_getList(10);

  @$pb.TagNumber(12)
  $3.JSONValue get nicknames => $_getN(11);
  @$pb.TagNumber(12)
  set nicknames($3.JSONValue v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasNicknames() => $_has(11);
  @$pb.TagNumber(12)
  void clearNicknames() => clearField(12);
  @$pb.TagNumber(12)
  $3.JSONValue ensureNicknames() => $_ensure(11);
}

class Email extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Email',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, 'address')
    ..hasRequiredFields = false;

  Email._() : super();
  factory Email() => create();
  factory Email.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Email.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Email clone() => Email()..mergeFromMessage(this);
  Email copyWith(void Function(Email) updates) =>
      super.copyWith((message) => updates(message as Email));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Email create() => Email._();
  Email createEmptyInstance() => create();
  static $pb.PbList<Email> createRepeated() => $pb.PbList<Email>();
  @$core.pragma('dart2js:noInline')
  static Email getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Email>(create);
  static Email _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Address',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'city')
    ..aOS(3, 'state')
    ..aOS(4, 'zip')
    ..aOS(5, 'country')
    ..hasRequiredFields = false;

  Address._() : super();
  factory Address() => create();
  factory Address.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Address.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Address clone() => Address()..mergeFromMessage(this);
  Address copyWith(void Function(Address) updates) =>
      super.copyWith((message) => updates(message as Address));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Address create() => Address._();
  Address createEmptyInstance() => create();
  static $pb.PbList<Address> createRepeated() => $pb.PbList<Address>();
  @$core.pragma('dart2js:noInline')
  static Address getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Address>(create);
  static Address _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get zip => $_getSZ(3);
  @$pb.TagNumber(4)
  set zip($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasZip() => $_has(3);
  @$pb.TagNumber(4)
  void clearZip() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get country => $_getSZ(4);
  @$pb.TagNumber(5)
  set country($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCountry() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountry() => clearField(5);
}

class CreateContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateContactRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Contact>(1, 'payload', subBuilder: Contact.create)
    ..hasRequiredFields = false;

  CreateContactRequest._() : super();
  factory CreateContactRequest() => create();
  factory CreateContactRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateContactRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateContactRequest clone() =>
      CreateContactRequest()..mergeFromMessage(this);
  CreateContactRequest copyWith(void Function(CreateContactRequest) updates) =>
      super.copyWith((message) => updates(message as CreateContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateContactRequest create() => CreateContactRequest._();
  CreateContactRequest createEmptyInstance() => create();
  static $pb.PbList<CreateContactRequest> createRepeated() =>
      $pb.PbList<CreateContactRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateContactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateContactRequest>(create);
  static CreateContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  Contact get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Contact v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Contact ensurePayload() => $_ensure(0);
}

class CreateContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateContactResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Contact>(1, 'result', subBuilder: Contact.create)
    ..hasRequiredFields = false;

  CreateContactResponse._() : super();
  factory CreateContactResponse() => create();
  factory CreateContactResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateContactResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateContactResponse clone() =>
      CreateContactResponse()..mergeFromMessage(this);
  CreateContactResponse copyWith(
          void Function(CreateContactResponse) updates) =>
      super.copyWith((message) => updates(message as CreateContactResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateContactResponse create() => CreateContactResponse._();
  CreateContactResponse createEmptyInstance() => create();
  static $pb.PbList<CreateContactResponse> createRepeated() =>
      $pb.PbList<CreateContactResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateContactResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateContactResponse>(create);
  static CreateContactResponse _defaultInstance;

  @$pb.TagNumber(1)
  Contact get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Contact v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Contact ensureResult() => $_ensure(0);
}

class ReadContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadContactRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadContactRequest._() : super();
  factory ReadContactRequest() => create();
  factory ReadContactRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadContactRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadContactRequest clone() => ReadContactRequest()..mergeFromMessage(this);
  ReadContactRequest copyWith(void Function(ReadContactRequest) updates) =>
      super.copyWith((message) => updates(message as ReadContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadContactRequest create() => ReadContactRequest._();
  ReadContactRequest createEmptyInstance() => create();
  static $pb.PbList<ReadContactRequest> createRepeated() =>
      $pb.PbList<ReadContactRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadContactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadContactRequest>(create);
  static ReadContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadContactResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Contact>(1, 'result', subBuilder: Contact.create)
    ..hasRequiredFields = false;

  ReadContactResponse._() : super();
  factory ReadContactResponse() => create();
  factory ReadContactResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadContactResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadContactResponse clone() => ReadContactResponse()..mergeFromMessage(this);
  ReadContactResponse copyWith(void Function(ReadContactResponse) updates) =>
      super.copyWith((message) => updates(message as ReadContactResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadContactResponse create() => ReadContactResponse._();
  ReadContactResponse createEmptyInstance() => create();
  static $pb.PbList<ReadContactResponse> createRepeated() =>
      $pb.PbList<ReadContactResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadContactResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadContactResponse>(create);
  static ReadContactResponse _defaultInstance;

  @$pb.TagNumber(1)
  Contact get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Contact v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Contact ensureResult() => $_ensure(0);
}

class UpdateContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateContactRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Contact>(1, 'payload', subBuilder: Contact.create)
    ..aOM<$4.FieldMask>(2, 'fields', subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false;

  UpdateContactRequest._() : super();
  factory UpdateContactRequest() => create();
  factory UpdateContactRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateContactRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateContactRequest clone() =>
      UpdateContactRequest()..mergeFromMessage(this);
  UpdateContactRequest copyWith(void Function(UpdateContactRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateContactRequest create() => UpdateContactRequest._();
  UpdateContactRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateContactRequest> createRepeated() =>
      $pb.PbList<UpdateContactRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateContactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateContactRequest>(create);
  static UpdateContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  Contact get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Contact v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Contact ensurePayload() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.FieldMask get fields => $_getN(1);
  @$pb.TagNumber(2)
  set fields($4.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFields() => $_has(1);
  @$pb.TagNumber(2)
  void clearFields() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureFields() => $_ensure(1);
}

class UpdateContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateContactResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Contact>(1, 'result', subBuilder: Contact.create)
    ..hasRequiredFields = false;

  UpdateContactResponse._() : super();
  factory UpdateContactResponse() => create();
  factory UpdateContactResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateContactResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateContactResponse clone() =>
      UpdateContactResponse()..mergeFromMessage(this);
  UpdateContactResponse copyWith(
          void Function(UpdateContactResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateContactResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateContactResponse create() => UpdateContactResponse._();
  UpdateContactResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateContactResponse> createRepeated() =>
      $pb.PbList<UpdateContactResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateContactResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateContactResponse>(create);
  static UpdateContactResponse _defaultInstance;

  @$pb.TagNumber(1)
  Contact get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Contact v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Contact ensureResult() => $_ensure(0);
}

class DeleteContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteContactRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteContactRequest._() : super();
  factory DeleteContactRequest() => create();
  factory DeleteContactRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteContactRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteContactRequest clone() =>
      DeleteContactRequest()..mergeFromMessage(this);
  DeleteContactRequest copyWith(void Function(DeleteContactRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteContactRequest create() => DeleteContactRequest._();
  DeleteContactRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteContactRequest> createRepeated() =>
      $pb.PbList<DeleteContactRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteContactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteContactRequest>(create);
  static DeleteContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteContactResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteContactResponse._() : super();
  factory DeleteContactResponse() => create();
  factory DeleteContactResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteContactResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteContactResponse clone() =>
      DeleteContactResponse()..mergeFromMessage(this);
  DeleteContactResponse copyWith(
          void Function(DeleteContactResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteContactResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteContactResponse create() => DeleteContactResponse._();
  DeleteContactResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteContactResponse> createRepeated() =>
      $pb.PbList<DeleteContactResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteContactResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteContactResponse>(create);
  static DeleteContactResponse _defaultInstance;
}

class ListContactsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListContactsResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Contact>(1, 'results', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..hasRequiredFields = false;

  ListContactsResponse._() : super();
  factory ListContactsResponse() => create();
  factory ListContactsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListContactsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListContactsResponse clone() =>
      ListContactsResponse()..mergeFromMessage(this);
  ListContactsResponse copyWith(void Function(ListContactsResponse) updates) =>
      super.copyWith((message) => updates(message as ListContactsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListContactsResponse create() => ListContactsResponse._();
  ListContactsResponse createEmptyInstance() => create();
  static $pb.PbList<ListContactsResponse> createRepeated() =>
      $pb.PbList<ListContactsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListContactsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListContactsResponse>(create);
  static ListContactsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Contact> get results => $_getList(0);
}

class SMSRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SMSRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, 'message')
    ..hasRequiredFields = false;

  SMSRequest._() : super();
  factory SMSRequest() => create();
  factory SMSRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SMSRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SMSRequest clone() => SMSRequest()..mergeFromMessage(this);
  SMSRequest copyWith(void Function(SMSRequest) updates) =>
      super.copyWith((message) => updates(message as SMSRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SMSRequest create() => SMSRequest._();
  SMSRequest createEmptyInstance() => create();
  static $pb.PbList<SMSRequest> createRepeated() => $pb.PbList<SMSRequest>();
  @$core.pragma('dart2js:noInline')
  static SMSRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SMSRequest>(create);
  static SMSRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class SMSResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SMSResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  SMSResponse._() : super();
  factory SMSResponse() => create();
  factory SMSResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SMSResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SMSResponse clone() => SMSResponse()..mergeFromMessage(this);
  SMSResponse copyWith(void Function(SMSResponse) updates) =>
      super.copyWith((message) => updates(message as SMSResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SMSResponse create() => SMSResponse._();
  SMSResponse createEmptyInstance() => create();
  static $pb.PbList<SMSResponse> createRepeated() => $pb.PbList<SMSResponse>();
  @$core.pragma('dart2js:noInline')
  static SMSResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SMSResponse>(create);
  static SMSResponse _defaultInstance;
}

class ListContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListContactRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$2.Filtering>(1, 'filter', subBuilder: $2.Filtering.create)
    ..aOM<$2.Sorting>(2, 'orderBy', subBuilder: $2.Sorting.create)
    ..aOM<$2.FieldSelection>(3, 'fields', subBuilder: $2.FieldSelection.create)
    ..aOM<$2.Pagination>(4, 'paging', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false;

  ListContactRequest._() : super();
  factory ListContactRequest() => create();
  factory ListContactRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListContactRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListContactRequest clone() => ListContactRequest()..mergeFromMessage(this);
  ListContactRequest copyWith(void Function(ListContactRequest) updates) =>
      super.copyWith((message) => updates(message as ListContactRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListContactRequest create() => ListContactRequest._();
  ListContactRequest createEmptyInstance() => create();
  static $pb.PbList<ListContactRequest> createRepeated() =>
      $pb.PbList<ListContactRequest>();
  @$core.pragma('dart2js:noInline')
  static ListContactRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListContactRequest>(create);
  static ListContactRequest _defaultInstance;

  @$pb.TagNumber(1)
  $2.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($2.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $2.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($2.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $2.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($2.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $2.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($2.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $2.Pagination ensurePaging() => $_ensure(3);
}
