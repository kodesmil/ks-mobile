///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/profile.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $6;
import 'group.pb.dart' as $0;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $7;

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..aOS(2, 'notes')
    ..aOS(3, 'firstName')
    ..aOS(4, 'lastName')
    ..aOS(5, 'primaryEmail')
    ..pc<$0.Group>(6, 'groups', $pb.PbFieldType.PM, subBuilder: $0.Group.create)
    ..aOS(7, 'profilePictureUrl')
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get primaryEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set primaryEmail($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrimaryEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrimaryEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$0.Group> get groups => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get profilePictureUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set profilePictureUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasProfilePictureUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearProfilePictureUrl() => clearField(7);
}

class CreateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  CreateProfileRequest._() : super();
  factory CreateProfileRequest() => create();
  factory CreateProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateProfileRequest clone() => CreateProfileRequest()..mergeFromMessage(this);
  CreateProfileRequest copyWith(void Function(CreateProfileRequest) updates) => super.copyWith((message) => updates(message as CreateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest create() => CreateProfileRequest._();
  CreateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProfileRequest> createRepeated() => $pb.PbList<CreateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateProfileRequest>(create);
  static CreateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class CreateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  CreateProfileResponse._() : super();
  factory CreateProfileResponse() => create();
  factory CreateProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateProfileResponse clone() => CreateProfileResponse()..mergeFromMessage(this);
  CreateProfileResponse copyWith(void Function(CreateProfileResponse) updates) => super.copyWith((message) => updates(message as CreateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse create() => CreateProfileResponse._();
  CreateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<CreateProfileResponse> createRepeated() => $pb.PbList<CreateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateProfileResponse>(create);
  static CreateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class ReadProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadProfileRequest._() : super();
  factory ReadProfileRequest() => create();
  factory ReadProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadProfileRequest clone() => ReadProfileRequest()..mergeFromMessage(this);
  ReadProfileRequest copyWith(void Function(ReadProfileRequest) updates) => super.copyWith((message) => updates(message as ReadProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest create() => ReadProfileRequest._();
  ReadProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ReadProfileRequest> createRepeated() => $pb.PbList<ReadProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadProfileRequest>(create);
  static ReadProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);
}

class ReadProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  ReadProfileResponse._() : super();
  factory ReadProfileResponse() => create();
  factory ReadProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadProfileResponse clone() => ReadProfileResponse()..mergeFromMessage(this);
  ReadProfileResponse copyWith(void Function(ReadProfileResponse) updates) => super.copyWith((message) => updates(message as ReadProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse create() => ReadProfileResponse._();
  ReadProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ReadProfileResponse> createRepeated() => $pb.PbList<ReadProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadProfileResponse>(create);
  static ReadProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class UpdateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  UpdateProfileRequest._() : super();
  factory UpdateProfileRequest() => create();
  factory UpdateProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateProfileRequest clone() => UpdateProfileRequest()..mergeFromMessage(this);
  UpdateProfileRequest copyWith(void Function(UpdateProfileRequest) updates) => super.copyWith((message) => updates(message as UpdateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest create() => UpdateProfileRequest._();
  UpdateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileRequest> createRepeated() => $pb.PbList<UpdateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileRequest>(create);
  static UpdateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse() => create();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateProfileResponse clone() => UpdateProfileResponse()..mergeFromMessage(this);
  UpdateProfileResponse copyWith(void Function(UpdateProfileResponse) updates) => super.copyWith((message) => updates(message as UpdateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() => $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class DeleteProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteProfileRequest._() : super();
  factory DeleteProfileRequest() => create();
  factory DeleteProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteProfileRequest clone() => DeleteProfileRequest()..mergeFromMessage(this);
  DeleteProfileRequest copyWith(void Function(DeleteProfileRequest) updates) => super.copyWith((message) => updates(message as DeleteProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest create() => DeleteProfileRequest._();
  DeleteProfileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileRequest> createRepeated() => $pb.PbList<DeleteProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteProfileRequest>(create);
  static DeleteProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);
}

class DeleteProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteProfileResponse._() : super();
  factory DeleteProfileResponse() => create();
  factory DeleteProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteProfileResponse clone() => DeleteProfileResponse()..mergeFromMessage(this);
  DeleteProfileResponse copyWith(void Function(DeleteProfileResponse) updates) => super.copyWith((message) => updates(message as DeleteProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse create() => DeleteProfileResponse._();
  DeleteProfileResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileResponse> createRepeated() => $pb.PbList<DeleteProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteProfileResponse>(create);
  static DeleteProfileResponse _defaultInstance;
}

class ListProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Filtering>(1, 'filter', subBuilder: $7.Filtering.create)
    ..aOM<$7.Sorting>(2, 'orderBy', subBuilder: $7.Sorting.create)
    ..aOM<$7.FieldSelection>(3, 'fields', subBuilder: $7.FieldSelection.create)
    ..aOM<$7.Pagination>(4, 'paging', subBuilder: $7.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListProfileRequest._() : super();
  factory ListProfileRequest() => create();
  factory ListProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListProfileRequest clone() => ListProfileRequest()..mergeFromMessage(this);
  ListProfileRequest copyWith(void Function(ListProfileRequest) updates) => super.copyWith((message) => updates(message as ListProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest create() => ListProfileRequest._();
  ListProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfileRequest> createRepeated() => $pb.PbList<ListProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfileRequest>(create);
  static ListProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $7.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($7.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $7.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($7.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $7.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($7.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $7.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($7.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $7.Pagination ensurePaging() => $_ensure(3);
}

class ListProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<Profile>(1, 'results', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  ListProfileResponse._() : super();
  factory ListProfileResponse() => create();
  factory ListProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListProfileResponse clone() => ListProfileResponse()..mergeFromMessage(this);
  ListProfileResponse copyWith(void Function(ListProfileResponse) updates) => super.copyWith((message) => updates(message as ListProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfileResponse create() => ListProfileResponse._();
  ListProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ListProfileResponse> createRepeated() => $pb.PbList<ListProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ListProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfileResponse>(create);
  static ListProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Profile> get results => $_getList(0);
}

