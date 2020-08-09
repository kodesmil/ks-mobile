///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/journal.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $11;
import '../../../google/protobuf/timestamp.pb.dart' as $9;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $10;

import 'journal.pbenum.dart';

export 'journal.pbenum.dart';

class JournalSubjectType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalSubjectType', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$11.Identifier>(1, 'id', subBuilder: $11.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOS(4, 'name')
    ..hasRequiredFields = false
  ;

  JournalSubjectType._() : super();
  factory JournalSubjectType() => create();
  factory JournalSubjectType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalSubjectType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JournalSubjectType clone() => JournalSubjectType()..mergeFromMessage(this);
  JournalSubjectType copyWith(void Function(JournalSubjectType) updates) => super.copyWith((message) => updates(message as JournalSubjectType));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JournalSubjectType create() => JournalSubjectType._();
  JournalSubjectType createEmptyInstance() => create();
  static $pb.PbList<JournalSubjectType> createRepeated() => $pb.PbList<JournalSubjectType>();
  @$core.pragma('dart2js:noInline')
  static JournalSubjectType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalSubjectType>(create);
  static JournalSubjectType _defaultInstance;

  @$pb.TagNumber(1)
  $11.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($11.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $11.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($9.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $9.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($9.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $9.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

class JournalSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalSubject', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$11.Identifier>(1, 'id', subBuilder: $11.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOS(4, 'name')
    ..pc<JournalSubjectType>(5, 'types', $pb.PbFieldType.PM, subBuilder: JournalSubjectType.create)
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
  $11.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($11.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $11.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($9.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $9.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($9.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $9.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<JournalSubjectType> get types => $_getList(4);
}

class JournalEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalEntry', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$11.Identifier>(1, 'id', subBuilder: $11.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOS(4, 'profileId')
    ..aOM<$9.Timestamp>(5, 'day', subBuilder: $9.Timestamp.create)
    ..e<JournalEntry_Severity>(6, 'severity', $pb.PbFieldType.OE, defaultOrMaker: JournalEntry_Severity.NONE, valueOf: JournalEntry_Severity.valueOf, enumValues: JournalEntry_Severity.values)
    ..aOS(7, 'note')
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
  $11.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($11.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $11.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($9.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $9.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($9.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $9.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get profileId => $_getSZ(3);
  @$pb.TagNumber(4)
  set profileId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileId() => clearField(4);

  @$pb.TagNumber(5)
  $9.Timestamp get day => $_getN(4);
  @$pb.TagNumber(5)
  set day($9.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDay() => $_has(4);
  @$pb.TagNumber(5)
  void clearDay() => clearField(5);
  @$pb.TagNumber(5)
  $9.Timestamp ensureDay() => $_ensure(4);

  @$pb.TagNumber(6)
  JournalEntry_Severity get severity => $_getN(5);
  @$pb.TagNumber(6)
  set severity(JournalEntry_Severity v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSeverity() => $_has(5);
  @$pb.TagNumber(6)
  void clearSeverity() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get note => $_getSZ(6);
  @$pb.TagNumber(7)
  set note($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNote() => $_has(6);
  @$pb.TagNumber(7)
  void clearNote() => clearField(7);
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
    ..aOM<$11.Identifier>(1, 'id', subBuilder: $11.Identifier.create)
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
  $11.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($11.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $11.Identifier ensureId() => $_ensure(0);
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
    ..aOM<$11.Identifier>(1, 'id', subBuilder: $11.Identifier.create)
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
  $11.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($11.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $11.Identifier ensureId() => $_ensure(0);
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
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
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
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
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

