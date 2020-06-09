///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/period.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $7;
import '../../../google/protobuf/timestamp.pb.dart' as $9;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $8;

import 'period.pbenum.dart';

export 'period.pbenum.dart';

class PeriodInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeriodInfo', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..a<$core.int>(4, 'periodLengthInDays', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'cycleLengthInDays', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PeriodInfo._() : super();
  factory PeriodInfo() => create();
  factory PeriodInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeriodInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PeriodInfo clone() => PeriodInfo()..mergeFromMessage(this);
  PeriodInfo copyWith(void Function(PeriodInfo) updates) => super.copyWith((message) => updates(message as PeriodInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeriodInfo create() => PeriodInfo._();
  PeriodInfo createEmptyInstance() => create();
  static $pb.PbList<PeriodInfo> createRepeated() => $pb.PbList<PeriodInfo>();
  @$core.pragma('dart2js:noInline')
  static PeriodInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeriodInfo>(create);
  static PeriodInfo _defaultInstance;

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
  $core.int get periodLengthInDays => $_getIZ(3);
  @$pb.TagNumber(4)
  set periodLengthInDays($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeriodLengthInDays() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeriodLengthInDays() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cycleLengthInDays => $_getIZ(4);
  @$pb.TagNumber(5)
  set cycleLengthInDays($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCycleLengthInDays() => $_has(4);
  @$pb.TagNumber(5)
  void clearCycleLengthInDays() => clearField(5);
}

class PeriodDailyEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeriodDailyEntry', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(4, 'day', subBuilder: $9.Timestamp.create)
    ..e<PeriodDailyEntry_Severity>(5, 'severity', $pb.PbFieldType.OE, defaultOrMaker: PeriodDailyEntry_Severity.NONE, valueOf: PeriodDailyEntry_Severity.valueOf, enumValues: PeriodDailyEntry_Severity.values)
    ..hasRequiredFields = false
  ;

  PeriodDailyEntry._() : super();
  factory PeriodDailyEntry() => create();
  factory PeriodDailyEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeriodDailyEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PeriodDailyEntry clone() => PeriodDailyEntry()..mergeFromMessage(this);
  PeriodDailyEntry copyWith(void Function(PeriodDailyEntry) updates) => super.copyWith((message) => updates(message as PeriodDailyEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeriodDailyEntry create() => PeriodDailyEntry._();
  PeriodDailyEntry createEmptyInstance() => create();
  static $pb.PbList<PeriodDailyEntry> createRepeated() => $pb.PbList<PeriodDailyEntry>();
  @$core.pragma('dart2js:noInline')
  static PeriodDailyEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeriodDailyEntry>(create);
  static PeriodDailyEntry _defaultInstance;

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
  $9.Timestamp get day => $_getN(3);
  @$pb.TagNumber(4)
  set day($9.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDay() => $_has(3);
  @$pb.TagNumber(4)
  void clearDay() => clearField(4);
  @$pb.TagNumber(4)
  $9.Timestamp ensureDay() => $_ensure(3);

  @$pb.TagNumber(5)
  PeriodDailyEntry_Severity get severity => $_getN(4);
  @$pb.TagNumber(5)
  set severity(PeriodDailyEntry_Severity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeverity() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeverity() => clearField(5);
}

class CreatePeriodDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePeriodDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodDailyEntry>(1, 'payload', subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  CreatePeriodDailyEntryRequest._() : super();
  factory CreatePeriodDailyEntryRequest() => create();
  factory CreatePeriodDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePeriodDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreatePeriodDailyEntryRequest clone() => CreatePeriodDailyEntryRequest()..mergeFromMessage(this);
  CreatePeriodDailyEntryRequest copyWith(void Function(CreatePeriodDailyEntryRequest) updates) => super.copyWith((message) => updates(message as CreatePeriodDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePeriodDailyEntryRequest create() => CreatePeriodDailyEntryRequest._();
  CreatePeriodDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePeriodDailyEntryRequest> createRepeated() => $pb.PbList<CreatePeriodDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePeriodDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePeriodDailyEntryRequest>(create);
  static CreatePeriodDailyEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  PeriodDailyEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PeriodDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PeriodDailyEntry ensurePayload() => $_ensure(0);
}

class CreatePeriodDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePeriodDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodDailyEntry>(1, 'result', subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  CreatePeriodDailyEntryResponse._() : super();
  factory CreatePeriodDailyEntryResponse() => create();
  factory CreatePeriodDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePeriodDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreatePeriodDailyEntryResponse clone() => CreatePeriodDailyEntryResponse()..mergeFromMessage(this);
  CreatePeriodDailyEntryResponse copyWith(void Function(CreatePeriodDailyEntryResponse) updates) => super.copyWith((message) => updates(message as CreatePeriodDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePeriodDailyEntryResponse create() => CreatePeriodDailyEntryResponse._();
  CreatePeriodDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePeriodDailyEntryResponse> createRepeated() => $pb.PbList<CreatePeriodDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePeriodDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePeriodDailyEntryResponse>(create);
  static CreatePeriodDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodDailyEntry ensureResult() => $_ensure(0);
}

class ReadPeriodDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPeriodDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadPeriodDailyEntryRequest._() : super();
  factory ReadPeriodDailyEntryRequest() => create();
  factory ReadPeriodDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPeriodDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPeriodDailyEntryRequest clone() => ReadPeriodDailyEntryRequest()..mergeFromMessage(this);
  ReadPeriodDailyEntryRequest copyWith(void Function(ReadPeriodDailyEntryRequest) updates) => super.copyWith((message) => updates(message as ReadPeriodDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPeriodDailyEntryRequest create() => ReadPeriodDailyEntryRequest._();
  ReadPeriodDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ReadPeriodDailyEntryRequest> createRepeated() => $pb.PbList<ReadPeriodDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadPeriodDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPeriodDailyEntryRequest>(create);
  static ReadPeriodDailyEntryRequest _defaultInstance;

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

class ReadPeriodDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPeriodDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodDailyEntry>(1, 'result', subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  ReadPeriodDailyEntryResponse._() : super();
  factory ReadPeriodDailyEntryResponse() => create();
  factory ReadPeriodDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPeriodDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPeriodDailyEntryResponse clone() => ReadPeriodDailyEntryResponse()..mergeFromMessage(this);
  ReadPeriodDailyEntryResponse copyWith(void Function(ReadPeriodDailyEntryResponse) updates) => super.copyWith((message) => updates(message as ReadPeriodDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPeriodDailyEntryResponse create() => ReadPeriodDailyEntryResponse._();
  ReadPeriodDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ReadPeriodDailyEntryResponse> createRepeated() => $pb.PbList<ReadPeriodDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadPeriodDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPeriodDailyEntryResponse>(create);
  static ReadPeriodDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodDailyEntry ensureResult() => $_ensure(0);
}

class UpdatePeriodDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdatePeriodDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodDailyEntry>(1, 'payload', subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  UpdatePeriodDailyEntryRequest._() : super();
  factory UpdatePeriodDailyEntryRequest() => create();
  factory UpdatePeriodDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePeriodDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdatePeriodDailyEntryRequest clone() => UpdatePeriodDailyEntryRequest()..mergeFromMessage(this);
  UpdatePeriodDailyEntryRequest copyWith(void Function(UpdatePeriodDailyEntryRequest) updates) => super.copyWith((message) => updates(message as UpdatePeriodDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodDailyEntryRequest create() => UpdatePeriodDailyEntryRequest._();
  UpdatePeriodDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePeriodDailyEntryRequest> createRepeated() => $pb.PbList<UpdatePeriodDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePeriodDailyEntryRequest>(create);
  static UpdatePeriodDailyEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  PeriodDailyEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PeriodDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PeriodDailyEntry ensurePayload() => $_ensure(0);
}

class UpdatePeriodDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdatePeriodDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodDailyEntry>(1, 'result', subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  UpdatePeriodDailyEntryResponse._() : super();
  factory UpdatePeriodDailyEntryResponse() => create();
  factory UpdatePeriodDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePeriodDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdatePeriodDailyEntryResponse clone() => UpdatePeriodDailyEntryResponse()..mergeFromMessage(this);
  UpdatePeriodDailyEntryResponse copyWith(void Function(UpdatePeriodDailyEntryResponse) updates) => super.copyWith((message) => updates(message as UpdatePeriodDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodDailyEntryResponse create() => UpdatePeriodDailyEntryResponse._();
  UpdatePeriodDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePeriodDailyEntryResponse> createRepeated() => $pb.PbList<UpdatePeriodDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePeriodDailyEntryResponse>(create);
  static UpdatePeriodDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodDailyEntry ensureResult() => $_ensure(0);
}

class DeletePeriodDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePeriodDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeletePeriodDailyEntryRequest._() : super();
  factory DeletePeriodDailyEntryRequest() => create();
  factory DeletePeriodDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePeriodDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePeriodDailyEntryRequest clone() => DeletePeriodDailyEntryRequest()..mergeFromMessage(this);
  DeletePeriodDailyEntryRequest copyWith(void Function(DeletePeriodDailyEntryRequest) updates) => super.copyWith((message) => updates(message as DeletePeriodDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePeriodDailyEntryRequest create() => DeletePeriodDailyEntryRequest._();
  DeletePeriodDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePeriodDailyEntryRequest> createRepeated() => $pb.PbList<DeletePeriodDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePeriodDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePeriodDailyEntryRequest>(create);
  static DeletePeriodDailyEntryRequest _defaultInstance;

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

class DeletePeriodDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePeriodDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeletePeriodDailyEntryResponse._() : super();
  factory DeletePeriodDailyEntryResponse() => create();
  factory DeletePeriodDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePeriodDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePeriodDailyEntryResponse clone() => DeletePeriodDailyEntryResponse()..mergeFromMessage(this);
  DeletePeriodDailyEntryResponse copyWith(void Function(DeletePeriodDailyEntryResponse) updates) => super.copyWith((message) => updates(message as DeletePeriodDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePeriodDailyEntryResponse create() => DeletePeriodDailyEntryResponse._();
  DeletePeriodDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePeriodDailyEntryResponse> createRepeated() => $pb.PbList<DeletePeriodDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePeriodDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePeriodDailyEntryResponse>(create);
  static DeletePeriodDailyEntryResponse _defaultInstance;
}

class ListPeriodDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeriodDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Filtering>(1, 'filter', subBuilder: $8.Filtering.create)
    ..aOM<$8.Sorting>(2, 'orderBy', subBuilder: $8.Sorting.create)
    ..aOM<$8.FieldSelection>(3, 'fields', subBuilder: $8.FieldSelection.create)
    ..aOM<$8.Pagination>(4, 'paging', subBuilder: $8.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListPeriodDailyEntryRequest._() : super();
  factory ListPeriodDailyEntryRequest() => create();
  factory ListPeriodDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeriodDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListPeriodDailyEntryRequest clone() => ListPeriodDailyEntryRequest()..mergeFromMessage(this);
  ListPeriodDailyEntryRequest copyWith(void Function(ListPeriodDailyEntryRequest) updates) => super.copyWith((message) => updates(message as ListPeriodDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeriodDailyEntryRequest create() => ListPeriodDailyEntryRequest._();
  ListPeriodDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ListPeriodDailyEntryRequest> createRepeated() => $pb.PbList<ListPeriodDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPeriodDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeriodDailyEntryRequest>(create);
  static ListPeriodDailyEntryRequest _defaultInstance;

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

class ListPeriodDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeriodDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<PeriodDailyEntry>(1, 'results', $pb.PbFieldType.PM, subBuilder: PeriodDailyEntry.create)
    ..hasRequiredFields = false
  ;

  ListPeriodDailyEntryResponse._() : super();
  factory ListPeriodDailyEntryResponse() => create();
  factory ListPeriodDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeriodDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListPeriodDailyEntryResponse clone() => ListPeriodDailyEntryResponse()..mergeFromMessage(this);
  ListPeriodDailyEntryResponse copyWith(void Function(ListPeriodDailyEntryResponse) updates) => super.copyWith((message) => updates(message as ListPeriodDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeriodDailyEntryResponse create() => ListPeriodDailyEntryResponse._();
  ListPeriodDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ListPeriodDailyEntryResponse> createRepeated() => $pb.PbList<ListPeriodDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPeriodDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeriodDailyEntryResponse>(create);
  static ListPeriodDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PeriodDailyEntry> get results => $_getList(0);
}

class CreatePeriodInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePeriodInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodInfo>(1, 'payload', subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  CreatePeriodInfoRequest._() : super();
  factory CreatePeriodInfoRequest() => create();
  factory CreatePeriodInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePeriodInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreatePeriodInfoRequest clone() => CreatePeriodInfoRequest()..mergeFromMessage(this);
  CreatePeriodInfoRequest copyWith(void Function(CreatePeriodInfoRequest) updates) => super.copyWith((message) => updates(message as CreatePeriodInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePeriodInfoRequest create() => CreatePeriodInfoRequest._();
  CreatePeriodInfoRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePeriodInfoRequest> createRepeated() => $pb.PbList<CreatePeriodInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePeriodInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePeriodInfoRequest>(create);
  static CreatePeriodInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  PeriodInfo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PeriodInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PeriodInfo ensurePayload() => $_ensure(0);
}

class CreatePeriodInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePeriodInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodInfo>(1, 'result', subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  CreatePeriodInfoResponse._() : super();
  factory CreatePeriodInfoResponse() => create();
  factory CreatePeriodInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePeriodInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreatePeriodInfoResponse clone() => CreatePeriodInfoResponse()..mergeFromMessage(this);
  CreatePeriodInfoResponse copyWith(void Function(CreatePeriodInfoResponse) updates) => super.copyWith((message) => updates(message as CreatePeriodInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePeriodInfoResponse create() => CreatePeriodInfoResponse._();
  CreatePeriodInfoResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePeriodInfoResponse> createRepeated() => $pb.PbList<CreatePeriodInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePeriodInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePeriodInfoResponse>(create);
  static CreatePeriodInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodInfo ensureResult() => $_ensure(0);
}

class ReadPeriodInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPeriodInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadPeriodInfoRequest._() : super();
  factory ReadPeriodInfoRequest() => create();
  factory ReadPeriodInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPeriodInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPeriodInfoRequest clone() => ReadPeriodInfoRequest()..mergeFromMessage(this);
  ReadPeriodInfoRequest copyWith(void Function(ReadPeriodInfoRequest) updates) => super.copyWith((message) => updates(message as ReadPeriodInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPeriodInfoRequest create() => ReadPeriodInfoRequest._();
  ReadPeriodInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ReadPeriodInfoRequest> createRepeated() => $pb.PbList<ReadPeriodInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadPeriodInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPeriodInfoRequest>(create);
  static ReadPeriodInfoRequest _defaultInstance;

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

class ReadPeriodInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPeriodInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodInfo>(1, 'result', subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  ReadPeriodInfoResponse._() : super();
  factory ReadPeriodInfoResponse() => create();
  factory ReadPeriodInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPeriodInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPeriodInfoResponse clone() => ReadPeriodInfoResponse()..mergeFromMessage(this);
  ReadPeriodInfoResponse copyWith(void Function(ReadPeriodInfoResponse) updates) => super.copyWith((message) => updates(message as ReadPeriodInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPeriodInfoResponse create() => ReadPeriodInfoResponse._();
  ReadPeriodInfoResponse createEmptyInstance() => create();
  static $pb.PbList<ReadPeriodInfoResponse> createRepeated() => $pb.PbList<ReadPeriodInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadPeriodInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPeriodInfoResponse>(create);
  static ReadPeriodInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodInfo ensureResult() => $_ensure(0);
}

class UpdatePeriodInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdatePeriodInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodInfo>(1, 'payload', subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  UpdatePeriodInfoRequest._() : super();
  factory UpdatePeriodInfoRequest() => create();
  factory UpdatePeriodInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePeriodInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdatePeriodInfoRequest clone() => UpdatePeriodInfoRequest()..mergeFromMessage(this);
  UpdatePeriodInfoRequest copyWith(void Function(UpdatePeriodInfoRequest) updates) => super.copyWith((message) => updates(message as UpdatePeriodInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodInfoRequest create() => UpdatePeriodInfoRequest._();
  UpdatePeriodInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePeriodInfoRequest> createRepeated() => $pb.PbList<UpdatePeriodInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePeriodInfoRequest>(create);
  static UpdatePeriodInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  PeriodInfo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PeriodInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PeriodInfo ensurePayload() => $_ensure(0);
}

class UpdatePeriodInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdatePeriodInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<PeriodInfo>(1, 'result', subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  UpdatePeriodInfoResponse._() : super();
  factory UpdatePeriodInfoResponse() => create();
  factory UpdatePeriodInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePeriodInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdatePeriodInfoResponse clone() => UpdatePeriodInfoResponse()..mergeFromMessage(this);
  UpdatePeriodInfoResponse copyWith(void Function(UpdatePeriodInfoResponse) updates) => super.copyWith((message) => updates(message as UpdatePeriodInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodInfoResponse create() => UpdatePeriodInfoResponse._();
  UpdatePeriodInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePeriodInfoResponse> createRepeated() => $pb.PbList<UpdatePeriodInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePeriodInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePeriodInfoResponse>(create);
  static UpdatePeriodInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  PeriodInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PeriodInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PeriodInfo ensureResult() => $_ensure(0);
}

class DeletePeriodInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePeriodInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeletePeriodInfoRequest._() : super();
  factory DeletePeriodInfoRequest() => create();
  factory DeletePeriodInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePeriodInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePeriodInfoRequest clone() => DeletePeriodInfoRequest()..mergeFromMessage(this);
  DeletePeriodInfoRequest copyWith(void Function(DeletePeriodInfoRequest) updates) => super.copyWith((message) => updates(message as DeletePeriodInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePeriodInfoRequest create() => DeletePeriodInfoRequest._();
  DeletePeriodInfoRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePeriodInfoRequest> createRepeated() => $pb.PbList<DeletePeriodInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePeriodInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePeriodInfoRequest>(create);
  static DeletePeriodInfoRequest _defaultInstance;

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

class DeletePeriodInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeletePeriodInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeletePeriodInfoResponse._() : super();
  factory DeletePeriodInfoResponse() => create();
  factory DeletePeriodInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePeriodInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeletePeriodInfoResponse clone() => DeletePeriodInfoResponse()..mergeFromMessage(this);
  DeletePeriodInfoResponse copyWith(void Function(DeletePeriodInfoResponse) updates) => super.copyWith((message) => updates(message as DeletePeriodInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePeriodInfoResponse create() => DeletePeriodInfoResponse._();
  DeletePeriodInfoResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePeriodInfoResponse> createRepeated() => $pb.PbList<DeletePeriodInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePeriodInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePeriodInfoResponse>(create);
  static DeletePeriodInfoResponse _defaultInstance;
}

class ListPeriodInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeriodInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Filtering>(1, 'filter', subBuilder: $8.Filtering.create)
    ..aOM<$8.Sorting>(2, 'orderBy', subBuilder: $8.Sorting.create)
    ..aOM<$8.FieldSelection>(3, 'fields', subBuilder: $8.FieldSelection.create)
    ..aOM<$8.Pagination>(4, 'paging', subBuilder: $8.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListPeriodInfoRequest._() : super();
  factory ListPeriodInfoRequest() => create();
  factory ListPeriodInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeriodInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListPeriodInfoRequest clone() => ListPeriodInfoRequest()..mergeFromMessage(this);
  ListPeriodInfoRequest copyWith(void Function(ListPeriodInfoRequest) updates) => super.copyWith((message) => updates(message as ListPeriodInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeriodInfoRequest create() => ListPeriodInfoRequest._();
  ListPeriodInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ListPeriodInfoRequest> createRepeated() => $pb.PbList<ListPeriodInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPeriodInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeriodInfoRequest>(create);
  static ListPeriodInfoRequest _defaultInstance;

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

class ListPeriodInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeriodInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<PeriodInfo>(1, 'results', $pb.PbFieldType.PM, subBuilder: PeriodInfo.create)
    ..hasRequiredFields = false
  ;

  ListPeriodInfoResponse._() : super();
  factory ListPeriodInfoResponse() => create();
  factory ListPeriodInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeriodInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListPeriodInfoResponse clone() => ListPeriodInfoResponse()..mergeFromMessage(this);
  ListPeriodInfoResponse copyWith(void Function(ListPeriodInfoResponse) updates) => super.copyWith((message) => updates(message as ListPeriodInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeriodInfoResponse create() => ListPeriodInfoResponse._();
  ListPeriodInfoResponse createEmptyInstance() => create();
  static $pb.PbList<ListPeriodInfoResponse> createRepeated() => $pb.PbList<ListPeriodInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPeriodInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeriodInfoResponse>(create);
  static ListPeriodInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PeriodInfo> get results => $_getList(0);
}

