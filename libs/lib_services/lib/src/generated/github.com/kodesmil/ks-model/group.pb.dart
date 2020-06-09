///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/group.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $7;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $8;

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Group', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'notes')
    ..aOM<$7.Identifier>(4, 'profileId', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Group clone() => Group()..mergeFromMessage(this);
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

  @$pb.TagNumber(1)
  $7.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($7.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $7.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $7.Identifier get profileId => $_getN(3);
  @$pb.TagNumber(4)
  set profileId($7.Identifier v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileId() => clearField(4);
  @$pb.TagNumber(4)
  $7.Identifier ensureProfileId() => $_ensure(3);
}

class CreateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  CreateGroupRequest._() : super();
  factory CreateGroupRequest() => create();
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) => super.copyWith((message) => updates(message as CreateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest create() => CreateGroupRequest._();
  CreateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRequest> createRepeated() => $pb.PbList<CreateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupRequest>(create);
  static CreateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class CreateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  CreateGroupResponse._() : super();
  factory CreateGroupResponse() => create();
  factory CreateGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateGroupResponse clone() => CreateGroupResponse()..mergeFromMessage(this);
  CreateGroupResponse copyWith(void Function(CreateGroupResponse) updates) => super.copyWith((message) => updates(message as CreateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse create() => CreateGroupResponse._();
  CreateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<CreateGroupResponse> createRepeated() => $pb.PbList<CreateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupResponse>(create);
  static CreateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class ReadGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadGroupRequest._() : super();
  factory ReadGroupRequest() => create();
  factory ReadGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadGroupRequest clone() => ReadGroupRequest()..mergeFromMessage(this);
  ReadGroupRequest copyWith(void Function(ReadGroupRequest) updates) => super.copyWith((message) => updates(message as ReadGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest create() => ReadGroupRequest._();
  ReadGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ReadGroupRequest> createRepeated() => $pb.PbList<ReadGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadGroupRequest>(create);
  static ReadGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $7.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($7.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $7.Identifier ensureId() => $_ensure(0);
}

class ReadGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  ReadGroupResponse._() : super();
  factory ReadGroupResponse() => create();
  factory ReadGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadGroupResponse clone() => ReadGroupResponse()..mergeFromMessage(this);
  ReadGroupResponse copyWith(void Function(ReadGroupResponse) updates) => super.copyWith((message) => updates(message as ReadGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse create() => ReadGroupResponse._();
  ReadGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ReadGroupResponse> createRepeated() => $pb.PbList<ReadGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadGroupResponse>(create);
  static ReadGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class UpdateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  UpdateGroupRequest._() : super();
  factory UpdateGroupRequest() => create();
  factory UpdateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateGroupRequest clone() => UpdateGroupRequest()..mergeFromMessage(this);
  UpdateGroupRequest copyWith(void Function(UpdateGroupRequest) updates) => super.copyWith((message) => updates(message as UpdateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest create() => UpdateGroupRequest._();
  UpdateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupRequest> createRepeated() => $pb.PbList<UpdateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupRequest>(create);
  static UpdateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class UpdateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  UpdateGroupResponse._() : super();
  factory UpdateGroupResponse() => create();
  factory UpdateGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateGroupResponse clone() => UpdateGroupResponse()..mergeFromMessage(this);
  UpdateGroupResponse copyWith(void Function(UpdateGroupResponse) updates) => super.copyWith((message) => updates(message as UpdateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse create() => UpdateGroupResponse._();
  UpdateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupResponse> createRepeated() => $pb.PbList<UpdateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupResponse>(create);
  static UpdateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class DeleteGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest() => create();
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) => super.copyWith((message) => updates(message as DeleteGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest create() => DeleteGroupRequest._();
  DeleteGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRequest> createRepeated() => $pb.PbList<DeleteGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupRequest>(create);
  static DeleteGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $7.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($7.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $7.Identifier ensureId() => $_ensure(0);
}

class DeleteGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteGroupResponse._() : super();
  factory DeleteGroupResponse() => create();
  factory DeleteGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteGroupResponse clone() => DeleteGroupResponse()..mergeFromMessage(this);
  DeleteGroupResponse copyWith(void Function(DeleteGroupResponse) updates) => super.copyWith((message) => updates(message as DeleteGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse create() => DeleteGroupResponse._();
  DeleteGroupResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupResponse> createRepeated() => $pb.PbList<DeleteGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupResponse>(create);
  static DeleteGroupResponse _defaultInstance;
}

class ListGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Filtering>(1, 'filter', subBuilder: $8.Filtering.create)
    ..aOM<$8.Sorting>(2, 'orderBy', subBuilder: $8.Sorting.create)
    ..aOM<$8.FieldSelection>(3, 'fields', subBuilder: $8.FieldSelection.create)
    ..aOM<$8.Pagination>(4, 'paging', subBuilder: $8.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListGroupRequest._() : super();
  factory ListGroupRequest() => create();
  factory ListGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListGroupRequest clone() => ListGroupRequest()..mergeFromMessage(this);
  ListGroupRequest copyWith(void Function(ListGroupRequest) updates) => super.copyWith((message) => updates(message as ListGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest create() => ListGroupRequest._();
  ListGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ListGroupRequest> createRepeated() => $pb.PbList<ListGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupRequest>(create);
  static ListGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($8.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $8.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($8.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $8.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($8.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $8.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $8.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($8.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $8.Pagination ensurePaging() => $_ensure(3);
}

class ListGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<Group>(1, 'results', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  ListGroupResponse._() : super();
  factory ListGroupResponse() => create();
  factory ListGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListGroupResponse clone() => ListGroupResponse()..mergeFromMessage(this);
  ListGroupResponse copyWith(void Function(ListGroupResponse) updates) => super.copyWith((message) => updates(message as ListGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupResponse create() => ListGroupResponse._();
  ListGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ListGroupResponse> createRepeated() => $pb.PbList<ListGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupResponse>(create);
  static ListGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get results => $_getList(0);
}

