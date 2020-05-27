///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/journal.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $6;
import '../../../google/protobuf/timestamp.pb.dart' as $8;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $7;

import 'journal.pbenum.dart';

export 'journal.pbenum.dart';

class JournalSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalSubject', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..aOS(2, 'key')
    ..aOS(3, 'name')
    ..e<JournalSubject_Type>(4, 'type', $pb.PbFieldType.OE, defaultOrMaker: JournalSubject_Type.ACTIVITY, valueOf: JournalSubject_Type.valueOf, enumValues: JournalSubject_Type.values)
    ..hasRequiredFields = false
  ;

  JournalSubject._() : super();
  factory JournalSubject() => create();
  factory JournalSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JournalSubject clone() => JournalSubject()..mergeFromMessage(this);
  JournalSubject copyWith(void Function(JournalSubject) updates) => super.copyWith((message) => updates(message as JournalSubject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JournalSubject create() => JournalSubject._();
  JournalSubject createEmptyInstance() => create();
  static $pb.PbList<JournalSubject> createRepeated() => $pb.PbList<JournalSubject>();
  @$core.pragma('dart2js:noInline')
  static JournalSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalSubject>(create);
  static JournalSubject _defaultInstance;

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
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  JournalSubject_Type get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(JournalSubject_Type v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class JournalEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalEntry', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..e<JournalEntry_Severity>(2, 'severity', $pb.PbFieldType.OE, defaultOrMaker: JournalEntry_Severity.NONE, valueOf: JournalEntry_Severity.valueOf, enumValues: JournalEntry_Severity.values)
    ..aOS(3, 'note')
    ..aOM<$8.Timestamp>(4, 'createdAt', subBuilder: $8.Timestamp.create)
    ..aInt64(5, 'journalSubjectId')
    ..hasRequiredFields = false
  ;

  JournalEntry._() : super();
  factory JournalEntry() => create();
  factory JournalEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JournalEntry clone() => JournalEntry()..mergeFromMessage(this);
  JournalEntry copyWith(void Function(JournalEntry) updates) => super.copyWith((message) => updates(message as JournalEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JournalEntry create() => JournalEntry._();
  JournalEntry createEmptyInstance() => create();
  static $pb.PbList<JournalEntry> createRepeated() => $pb.PbList<JournalEntry>();
  @$core.pragma('dart2js:noInline')
  static JournalEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalEntry>(create);
  static JournalEntry _defaultInstance;

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
  JournalEntry_Severity get severity => $_getN(1);
  @$pb.TagNumber(2)
  set severity(JournalEntry_Severity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeverity() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeverity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get note => $_getSZ(2);
  @$pb.TagNumber(3)
  set note($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNote() => $_has(2);
  @$pb.TagNumber(3)
  void clearNote() => clearField(3);

  @$pb.TagNumber(4)
  $8.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($8.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $8.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get journalSubjectId => $_getI64(4);
  @$pb.TagNumber(5)
  set journalSubjectId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasJournalSubjectId() => $_has(4);
  @$pb.TagNumber(5)
  void clearJournalSubjectId() => clearField(5);
}

class CreateJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateJournalEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'payload', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  CreateJournalEntryRequest._() : super();
  factory CreateJournalEntryRequest() => create();
  factory CreateJournalEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateJournalEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateJournalEntryRequest clone() => CreateJournalEntryRequest()..mergeFromMessage(this);
  CreateJournalEntryRequest copyWith(void Function(CreateJournalEntryRequest) updates) => super.copyWith((message) => updates(message as CreateJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryRequest create() => CreateJournalEntryRequest._();
  CreateJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<CreateJournalEntryRequest> createRepeated() => $pb.PbList<CreateJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateJournalEntryRequest>(create);
  static CreateJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(JournalEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensurePayload() => $_ensure(0);
}

class CreateJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateJournalEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  CreateJournalEntryResponse._() : super();
  factory CreateJournalEntryResponse() => create();
  factory CreateJournalEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateJournalEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateJournalEntryResponse clone() => CreateJournalEntryResponse()..mergeFromMessage(this);
  CreateJournalEntryResponse copyWith(void Function(CreateJournalEntryResponse) updates) => super.copyWith((message) => updates(message as CreateJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryResponse create() => CreateJournalEntryResponse._();
  CreateJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<CreateJournalEntryResponse> createRepeated() => $pb.PbList<CreateJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateJournalEntryResponse>(create);
  static CreateJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class ReadJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJournalEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadJournalEntryRequest._() : super();
  factory ReadJournalEntryRequest() => create();
  factory ReadJournalEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadJournalEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadJournalEntryRequest clone() => ReadJournalEntryRequest()..mergeFromMessage(this);
  ReadJournalEntryRequest copyWith(void Function(ReadJournalEntryRequest) updates) => super.copyWith((message) => updates(message as ReadJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryRequest create() => ReadJournalEntryRequest._();
  ReadJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ReadJournalEntryRequest> createRepeated() => $pb.PbList<ReadJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadJournalEntryRequest>(create);
  static ReadJournalEntryRequest _defaultInstance;

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

class ReadJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJournalEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  ReadJournalEntryResponse._() : super();
  factory ReadJournalEntryResponse() => create();
  factory ReadJournalEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadJournalEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadJournalEntryResponse clone() => ReadJournalEntryResponse()..mergeFromMessage(this);
  ReadJournalEntryResponse copyWith(void Function(ReadJournalEntryResponse) updates) => super.copyWith((message) => updates(message as ReadJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryResponse create() => ReadJournalEntryResponse._();
  ReadJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ReadJournalEntryResponse> createRepeated() => $pb.PbList<ReadJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadJournalEntryResponse>(create);
  static ReadJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class UpdateJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateJournalEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'payload', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  UpdateJournalEntryRequest._() : super();
  factory UpdateJournalEntryRequest() => create();
  factory UpdateJournalEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateJournalEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateJournalEntryRequest clone() => UpdateJournalEntryRequest()..mergeFromMessage(this);
  UpdateJournalEntryRequest copyWith(void Function(UpdateJournalEntryRequest) updates) => super.copyWith((message) => updates(message as UpdateJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryRequest create() => UpdateJournalEntryRequest._();
  UpdateJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateJournalEntryRequest> createRepeated() => $pb.PbList<UpdateJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateJournalEntryRequest>(create);
  static UpdateJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(JournalEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensurePayload() => $_ensure(0);
}

class UpdateJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateJournalEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  UpdateJournalEntryResponse._() : super();
  factory UpdateJournalEntryResponse() => create();
  factory UpdateJournalEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateJournalEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateJournalEntryResponse clone() => UpdateJournalEntryResponse()..mergeFromMessage(this);
  UpdateJournalEntryResponse copyWith(void Function(UpdateJournalEntryResponse) updates) => super.copyWith((message) => updates(message as UpdateJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryResponse create() => UpdateJournalEntryResponse._();
  UpdateJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateJournalEntryResponse> createRepeated() => $pb.PbList<UpdateJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateJournalEntryResponse>(create);
  static UpdateJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class DeleteJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteJournalEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteJournalEntryRequest._() : super();
  factory DeleteJournalEntryRequest() => create();
  factory DeleteJournalEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteJournalEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteJournalEntryRequest clone() => DeleteJournalEntryRequest()..mergeFromMessage(this);
  DeleteJournalEntryRequest copyWith(void Function(DeleteJournalEntryRequest) updates) => super.copyWith((message) => updates(message as DeleteJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryRequest create() => DeleteJournalEntryRequest._();
  DeleteJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteJournalEntryRequest> createRepeated() => $pb.PbList<DeleteJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteJournalEntryRequest>(create);
  static DeleteJournalEntryRequest _defaultInstance;

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

class DeleteJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteJournalEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteJournalEntryResponse._() : super();
  factory DeleteJournalEntryResponse() => create();
  factory DeleteJournalEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteJournalEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteJournalEntryResponse clone() => DeleteJournalEntryResponse()..mergeFromMessage(this);
  DeleteJournalEntryResponse copyWith(void Function(DeleteJournalEntryResponse) updates) => super.copyWith((message) => updates(message as DeleteJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryResponse create() => DeleteJournalEntryResponse._();
  DeleteJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteJournalEntryResponse> createRepeated() => $pb.PbList<DeleteJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteJournalEntryResponse>(create);
  static DeleteJournalEntryResponse _defaultInstance;
}

class ListJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Filtering>(1, 'filter', subBuilder: $7.Filtering.create)
    ..aOM<$7.Sorting>(2, 'orderBy', subBuilder: $7.Sorting.create)
    ..aOM<$7.FieldSelection>(3, 'fields', subBuilder: $7.FieldSelection.create)
    ..aOM<$7.Pagination>(4, 'paging', subBuilder: $7.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListJournalEntryRequest._() : super();
  factory ListJournalEntryRequest() => create();
  factory ListJournalEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJournalEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJournalEntryRequest clone() => ListJournalEntryRequest()..mergeFromMessage(this);
  ListJournalEntryRequest copyWith(void Function(ListJournalEntryRequest) updates) => super.copyWith((message) => updates(message as ListJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryRequest create() => ListJournalEntryRequest._();
  ListJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ListJournalEntryRequest> createRepeated() => $pb.PbList<ListJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJournalEntryRequest>(create);
  static ListJournalEntryRequest _defaultInstance;

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

class ListJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<JournalEntry>(1, 'results', $pb.PbFieldType.PM, subBuilder: JournalEntry.create)
    ..hasRequiredFields = false
  ;

  ListJournalEntryResponse._() : super();
  factory ListJournalEntryResponse() => create();
  factory ListJournalEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJournalEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJournalEntryResponse clone() => ListJournalEntryResponse()..mergeFromMessage(this);
  ListJournalEntryResponse copyWith(void Function(ListJournalEntryResponse) updates) => super.copyWith((message) => updates(message as ListJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryResponse create() => ListJournalEntryResponse._();
  ListJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ListJournalEntryResponse> createRepeated() => $pb.PbList<ListJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJournalEntryResponse>(create);
  static ListJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<JournalEntry> get results => $_getList(0);
}

class ListJournalSubjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalSubjectRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Filtering>(1, 'filter', subBuilder: $7.Filtering.create)
    ..aOM<$7.Sorting>(2, 'orderBy', subBuilder: $7.Sorting.create)
    ..aOM<$7.FieldSelection>(3, 'fields', subBuilder: $7.FieldSelection.create)
    ..aOM<$7.Pagination>(4, 'paging', subBuilder: $7.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListJournalSubjectRequest._() : super();
  factory ListJournalSubjectRequest() => create();
  factory ListJournalSubjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJournalSubjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJournalSubjectRequest clone() => ListJournalSubjectRequest()..mergeFromMessage(this);
  ListJournalSubjectRequest copyWith(void Function(ListJournalSubjectRequest) updates) => super.copyWith((message) => updates(message as ListJournalSubjectRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectRequest create() => ListJournalSubjectRequest._();
  ListJournalSubjectRequest createEmptyInstance() => create();
  static $pb.PbList<ListJournalSubjectRequest> createRepeated() => $pb.PbList<ListJournalSubjectRequest>();
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJournalSubjectRequest>(create);
  static ListJournalSubjectRequest _defaultInstance;

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

class ListJournalSubjectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalSubjectResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<JournalSubject>(1, 'results', $pb.PbFieldType.PM, subBuilder: JournalSubject.create)
    ..hasRequiredFields = false
  ;

  ListJournalSubjectResponse._() : super();
  factory ListJournalSubjectResponse() => create();
  factory ListJournalSubjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJournalSubjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJournalSubjectResponse clone() => ListJournalSubjectResponse()..mergeFromMessage(this);
  ListJournalSubjectResponse copyWith(void Function(ListJournalSubjectResponse) updates) => super.copyWith((message) => updates(message as ListJournalSubjectResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectResponse create() => ListJournalSubjectResponse._();
  ListJournalSubjectResponse createEmptyInstance() => create();
  static $pb.PbList<ListJournalSubjectResponse> createRepeated() => $pb.PbList<ListJournalSubjectResponse>();
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJournalSubjectResponse>(create);
  static ListJournalSubjectResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<JournalSubject> get results => $_getList(0);
}

