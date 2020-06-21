///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/health.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $7;
import '../../../google/protobuf/timestamp.pb.dart' as $9;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $8;

import 'health.pbenum.dart';

export 'health.pbenum.dart';

class HealthMenstruationPersonalInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HealthMenstruationPersonalInfo', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..a<$core.int>(4, 'periodLengthInDays', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'cycleLengthInDays', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HealthMenstruationPersonalInfo._() : super();
  factory HealthMenstruationPersonalInfo() => create();
  factory HealthMenstruationPersonalInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthMenstruationPersonalInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HealthMenstruationPersonalInfo clone() => HealthMenstruationPersonalInfo()..mergeFromMessage(this);
  HealthMenstruationPersonalInfo copyWith(void Function(HealthMenstruationPersonalInfo) updates) => super.copyWith((message) => updates(message as HealthMenstruationPersonalInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthMenstruationPersonalInfo create() => HealthMenstruationPersonalInfo._();
  HealthMenstruationPersonalInfo createEmptyInstance() => create();
  static $pb.PbList<HealthMenstruationPersonalInfo> createRepeated() => $pb.PbList<HealthMenstruationPersonalInfo>();
  @$core.pragma('dart2js:noInline')
  static HealthMenstruationPersonalInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthMenstruationPersonalInfo>(create);
  static HealthMenstruationPersonalInfo _defaultInstance;

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

class HealthMenstruationDailyEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HealthMenstruationDailyEntry', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(4, 'day', subBuilder: $9.Timestamp.create)
    ..a<$core.int>(5, 'intensityPercentage', $pb.PbFieldType.O3)
    ..e<HealthMenstruationDailyEntry_Type>(6, 'type', $pb.PbFieldType.OE, defaultOrMaker: HealthMenstruationDailyEntry_Type.PERIOD, valueOf: HealthMenstruationDailyEntry_Type.valueOf, enumValues: HealthMenstruationDailyEntry_Type.values)
    ..aOB(7, 'manual')
    ..aOB(8, 'basedOnPrediction')
    ..hasRequiredFields = false
  ;

  HealthMenstruationDailyEntry._() : super();
  factory HealthMenstruationDailyEntry() => create();
  factory HealthMenstruationDailyEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthMenstruationDailyEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HealthMenstruationDailyEntry clone() => HealthMenstruationDailyEntry()..mergeFromMessage(this);
  HealthMenstruationDailyEntry copyWith(void Function(HealthMenstruationDailyEntry) updates) => super.copyWith((message) => updates(message as HealthMenstruationDailyEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthMenstruationDailyEntry create() => HealthMenstruationDailyEntry._();
  HealthMenstruationDailyEntry createEmptyInstance() => create();
  static $pb.PbList<HealthMenstruationDailyEntry> createRepeated() => $pb.PbList<HealthMenstruationDailyEntry>();
  @$core.pragma('dart2js:noInline')
  static HealthMenstruationDailyEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthMenstruationDailyEntry>(create);
  static HealthMenstruationDailyEntry _defaultInstance;

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
  $core.int get intensityPercentage => $_getIZ(4);
  @$pb.TagNumber(5)
  set intensityPercentage($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIntensityPercentage() => $_has(4);
  @$pb.TagNumber(5)
  void clearIntensityPercentage() => clearField(5);

  @$pb.TagNumber(6)
  HealthMenstruationDailyEntry_Type get type => $_getN(5);
  @$pb.TagNumber(6)
  set type(HealthMenstruationDailyEntry_Type v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get manual => $_getBF(6);
  @$pb.TagNumber(7)
  set manual($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasManual() => $_has(6);
  @$pb.TagNumber(7)
  void clearManual() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get basedOnPrediction => $_getBF(7);
  @$pb.TagNumber(8)
  set basedOnPrediction($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBasedOnPrediction() => $_has(7);
  @$pb.TagNumber(8)
  void clearBasedOnPrediction() => clearField(8);
}

class CreateHealthMenstruationDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHealthMenstruationDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationDailyEntry>(1, 'payload', subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  CreateHealthMenstruationDailyEntryRequest._() : super();
  factory CreateHealthMenstruationDailyEntryRequest() => create();
  factory CreateHealthMenstruationDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateHealthMenstruationDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateHealthMenstruationDailyEntryRequest clone() => CreateHealthMenstruationDailyEntryRequest()..mergeFromMessage(this);
  CreateHealthMenstruationDailyEntryRequest copyWith(void Function(CreateHealthMenstruationDailyEntryRequest) updates) => super.copyWith((message) => updates(message as CreateHealthMenstruationDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationDailyEntryRequest create() => CreateHealthMenstruationDailyEntryRequest._();
  CreateHealthMenstruationDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<CreateHealthMenstruationDailyEntryRequest> createRepeated() => $pb.PbList<CreateHealthMenstruationDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateHealthMenstruationDailyEntryRequest>(create);
  static CreateHealthMenstruationDailyEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(HealthMenstruationDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry ensurePayload() => $_ensure(0);
}

class CreateHealthMenstruationDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHealthMenstruationDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationDailyEntry>(1, 'result', subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  CreateHealthMenstruationDailyEntryResponse._() : super();
  factory CreateHealthMenstruationDailyEntryResponse() => create();
  factory CreateHealthMenstruationDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateHealthMenstruationDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateHealthMenstruationDailyEntryResponse clone() => CreateHealthMenstruationDailyEntryResponse()..mergeFromMessage(this);
  CreateHealthMenstruationDailyEntryResponse copyWith(void Function(CreateHealthMenstruationDailyEntryResponse) updates) => super.copyWith((message) => updates(message as CreateHealthMenstruationDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationDailyEntryResponse create() => CreateHealthMenstruationDailyEntryResponse._();
  CreateHealthMenstruationDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<CreateHealthMenstruationDailyEntryResponse> createRepeated() => $pb.PbList<CreateHealthMenstruationDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateHealthMenstruationDailyEntryResponse>(create);
  static CreateHealthMenstruationDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry ensureResult() => $_ensure(0);
}

class ReadHealthMenstruationDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadHealthMenstruationDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadHealthMenstruationDailyEntryRequest._() : super();
  factory ReadHealthMenstruationDailyEntryRequest() => create();
  factory ReadHealthMenstruationDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadHealthMenstruationDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadHealthMenstruationDailyEntryRequest clone() => ReadHealthMenstruationDailyEntryRequest()..mergeFromMessage(this);
  ReadHealthMenstruationDailyEntryRequest copyWith(void Function(ReadHealthMenstruationDailyEntryRequest) updates) => super.copyWith((message) => updates(message as ReadHealthMenstruationDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationDailyEntryRequest create() => ReadHealthMenstruationDailyEntryRequest._();
  ReadHealthMenstruationDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ReadHealthMenstruationDailyEntryRequest> createRepeated() => $pb.PbList<ReadHealthMenstruationDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadHealthMenstruationDailyEntryRequest>(create);
  static ReadHealthMenstruationDailyEntryRequest _defaultInstance;

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

class ReadHealthMenstruationDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadHealthMenstruationDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationDailyEntry>(1, 'result', subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  ReadHealthMenstruationDailyEntryResponse._() : super();
  factory ReadHealthMenstruationDailyEntryResponse() => create();
  factory ReadHealthMenstruationDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadHealthMenstruationDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadHealthMenstruationDailyEntryResponse clone() => ReadHealthMenstruationDailyEntryResponse()..mergeFromMessage(this);
  ReadHealthMenstruationDailyEntryResponse copyWith(void Function(ReadHealthMenstruationDailyEntryResponse) updates) => super.copyWith((message) => updates(message as ReadHealthMenstruationDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationDailyEntryResponse create() => ReadHealthMenstruationDailyEntryResponse._();
  ReadHealthMenstruationDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ReadHealthMenstruationDailyEntryResponse> createRepeated() => $pb.PbList<ReadHealthMenstruationDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadHealthMenstruationDailyEntryResponse>(create);
  static ReadHealthMenstruationDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry ensureResult() => $_ensure(0);
}

class UpdateHealthMenstruationDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateHealthMenstruationDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationDailyEntry>(1, 'payload', subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  UpdateHealthMenstruationDailyEntryRequest._() : super();
  factory UpdateHealthMenstruationDailyEntryRequest() => create();
  factory UpdateHealthMenstruationDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHealthMenstruationDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateHealthMenstruationDailyEntryRequest clone() => UpdateHealthMenstruationDailyEntryRequest()..mergeFromMessage(this);
  UpdateHealthMenstruationDailyEntryRequest copyWith(void Function(UpdateHealthMenstruationDailyEntryRequest) updates) => super.copyWith((message) => updates(message as UpdateHealthMenstruationDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationDailyEntryRequest create() => UpdateHealthMenstruationDailyEntryRequest._();
  UpdateHealthMenstruationDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateHealthMenstruationDailyEntryRequest> createRepeated() => $pb.PbList<UpdateHealthMenstruationDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHealthMenstruationDailyEntryRequest>(create);
  static UpdateHealthMenstruationDailyEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(HealthMenstruationDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry ensurePayload() => $_ensure(0);
}

class UpdateHealthMenstruationDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateHealthMenstruationDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationDailyEntry>(1, 'result', subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  UpdateHealthMenstruationDailyEntryResponse._() : super();
  factory UpdateHealthMenstruationDailyEntryResponse() => create();
  factory UpdateHealthMenstruationDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHealthMenstruationDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateHealthMenstruationDailyEntryResponse clone() => UpdateHealthMenstruationDailyEntryResponse()..mergeFromMessage(this);
  UpdateHealthMenstruationDailyEntryResponse copyWith(void Function(UpdateHealthMenstruationDailyEntryResponse) updates) => super.copyWith((message) => updates(message as UpdateHealthMenstruationDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationDailyEntryResponse create() => UpdateHealthMenstruationDailyEntryResponse._();
  UpdateHealthMenstruationDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateHealthMenstruationDailyEntryResponse> createRepeated() => $pb.PbList<UpdateHealthMenstruationDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHealthMenstruationDailyEntryResponse>(create);
  static UpdateHealthMenstruationDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationDailyEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationDailyEntry ensureResult() => $_ensure(0);
}

class DeleteHealthMenstruationDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteHealthMenstruationDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteHealthMenstruationDailyEntryRequest._() : super();
  factory DeleteHealthMenstruationDailyEntryRequest() => create();
  factory DeleteHealthMenstruationDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteHealthMenstruationDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteHealthMenstruationDailyEntryRequest clone() => DeleteHealthMenstruationDailyEntryRequest()..mergeFromMessage(this);
  DeleteHealthMenstruationDailyEntryRequest copyWith(void Function(DeleteHealthMenstruationDailyEntryRequest) updates) => super.copyWith((message) => updates(message as DeleteHealthMenstruationDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationDailyEntryRequest create() => DeleteHealthMenstruationDailyEntryRequest._();
  DeleteHealthMenstruationDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteHealthMenstruationDailyEntryRequest> createRepeated() => $pb.PbList<DeleteHealthMenstruationDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteHealthMenstruationDailyEntryRequest>(create);
  static DeleteHealthMenstruationDailyEntryRequest _defaultInstance;

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

class DeleteHealthMenstruationDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteHealthMenstruationDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteHealthMenstruationDailyEntryResponse._() : super();
  factory DeleteHealthMenstruationDailyEntryResponse() => create();
  factory DeleteHealthMenstruationDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteHealthMenstruationDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteHealthMenstruationDailyEntryResponse clone() => DeleteHealthMenstruationDailyEntryResponse()..mergeFromMessage(this);
  DeleteHealthMenstruationDailyEntryResponse copyWith(void Function(DeleteHealthMenstruationDailyEntryResponse) updates) => super.copyWith((message) => updates(message as DeleteHealthMenstruationDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationDailyEntryResponse create() => DeleteHealthMenstruationDailyEntryResponse._();
  DeleteHealthMenstruationDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteHealthMenstruationDailyEntryResponse> createRepeated() => $pb.PbList<DeleteHealthMenstruationDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteHealthMenstruationDailyEntryResponse>(create);
  static DeleteHealthMenstruationDailyEntryResponse _defaultInstance;
}

class ListHealthMenstruationDailyEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHealthMenstruationDailyEntryRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Filtering>(1, 'filter', subBuilder: $8.Filtering.create)
    ..aOM<$8.Sorting>(2, 'orderBy', subBuilder: $8.Sorting.create)
    ..aOM<$8.FieldSelection>(3, 'fields', subBuilder: $8.FieldSelection.create)
    ..aOM<$8.Pagination>(4, 'paging', subBuilder: $8.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListHealthMenstruationDailyEntryRequest._() : super();
  factory ListHealthMenstruationDailyEntryRequest() => create();
  factory ListHealthMenstruationDailyEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHealthMenstruationDailyEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHealthMenstruationDailyEntryRequest clone() => ListHealthMenstruationDailyEntryRequest()..mergeFromMessage(this);
  ListHealthMenstruationDailyEntryRequest copyWith(void Function(ListHealthMenstruationDailyEntryRequest) updates) => super.copyWith((message) => updates(message as ListHealthMenstruationDailyEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationDailyEntryRequest create() => ListHealthMenstruationDailyEntryRequest._();
  ListHealthMenstruationDailyEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ListHealthMenstruationDailyEntryRequest> createRepeated() => $pb.PbList<ListHealthMenstruationDailyEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationDailyEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHealthMenstruationDailyEntryRequest>(create);
  static ListHealthMenstruationDailyEntryRequest _defaultInstance;

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

class ListHealthMenstruationDailyEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHealthMenstruationDailyEntryResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<HealthMenstruationDailyEntry>(1, 'results', $pb.PbFieldType.PM, subBuilder: HealthMenstruationDailyEntry.create)
    ..hasRequiredFields = false
  ;

  ListHealthMenstruationDailyEntryResponse._() : super();
  factory ListHealthMenstruationDailyEntryResponse() => create();
  factory ListHealthMenstruationDailyEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHealthMenstruationDailyEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHealthMenstruationDailyEntryResponse clone() => ListHealthMenstruationDailyEntryResponse()..mergeFromMessage(this);
  ListHealthMenstruationDailyEntryResponse copyWith(void Function(ListHealthMenstruationDailyEntryResponse) updates) => super.copyWith((message) => updates(message as ListHealthMenstruationDailyEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationDailyEntryResponse create() => ListHealthMenstruationDailyEntryResponse._();
  ListHealthMenstruationDailyEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ListHealthMenstruationDailyEntryResponse> createRepeated() => $pb.PbList<ListHealthMenstruationDailyEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationDailyEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHealthMenstruationDailyEntryResponse>(create);
  static ListHealthMenstruationDailyEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HealthMenstruationDailyEntry> get results => $_getList(0);
}

class CreateHealthMenstruationPersonalInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHealthMenstruationPersonalInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationPersonalInfo>(1, 'payload', subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  CreateHealthMenstruationPersonalInfoRequest._() : super();
  factory CreateHealthMenstruationPersonalInfoRequest() => create();
  factory CreateHealthMenstruationPersonalInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateHealthMenstruationPersonalInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateHealthMenstruationPersonalInfoRequest clone() => CreateHealthMenstruationPersonalInfoRequest()..mergeFromMessage(this);
  CreateHealthMenstruationPersonalInfoRequest copyWith(void Function(CreateHealthMenstruationPersonalInfoRequest) updates) => super.copyWith((message) => updates(message as CreateHealthMenstruationPersonalInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationPersonalInfoRequest create() => CreateHealthMenstruationPersonalInfoRequest._();
  CreateHealthMenstruationPersonalInfoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateHealthMenstruationPersonalInfoRequest> createRepeated() => $pb.PbList<CreateHealthMenstruationPersonalInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationPersonalInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateHealthMenstruationPersonalInfoRequest>(create);
  static CreateHealthMenstruationPersonalInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(HealthMenstruationPersonalInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo ensurePayload() => $_ensure(0);
}

class CreateHealthMenstruationPersonalInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateHealthMenstruationPersonalInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationPersonalInfo>(1, 'result', subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  CreateHealthMenstruationPersonalInfoResponse._() : super();
  factory CreateHealthMenstruationPersonalInfoResponse() => create();
  factory CreateHealthMenstruationPersonalInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateHealthMenstruationPersonalInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateHealthMenstruationPersonalInfoResponse clone() => CreateHealthMenstruationPersonalInfoResponse()..mergeFromMessage(this);
  CreateHealthMenstruationPersonalInfoResponse copyWith(void Function(CreateHealthMenstruationPersonalInfoResponse) updates) => super.copyWith((message) => updates(message as CreateHealthMenstruationPersonalInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationPersonalInfoResponse create() => CreateHealthMenstruationPersonalInfoResponse._();
  CreateHealthMenstruationPersonalInfoResponse createEmptyInstance() => create();
  static $pb.PbList<CreateHealthMenstruationPersonalInfoResponse> createRepeated() => $pb.PbList<CreateHealthMenstruationPersonalInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateHealthMenstruationPersonalInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateHealthMenstruationPersonalInfoResponse>(create);
  static CreateHealthMenstruationPersonalInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationPersonalInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo ensureResult() => $_ensure(0);
}

class ReadHealthMenstruationPersonalInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadHealthMenstruationPersonalInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadHealthMenstruationPersonalInfoRequest._() : super();
  factory ReadHealthMenstruationPersonalInfoRequest() => create();
  factory ReadHealthMenstruationPersonalInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadHealthMenstruationPersonalInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadHealthMenstruationPersonalInfoRequest clone() => ReadHealthMenstruationPersonalInfoRequest()..mergeFromMessage(this);
  ReadHealthMenstruationPersonalInfoRequest copyWith(void Function(ReadHealthMenstruationPersonalInfoRequest) updates) => super.copyWith((message) => updates(message as ReadHealthMenstruationPersonalInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationPersonalInfoRequest create() => ReadHealthMenstruationPersonalInfoRequest._();
  ReadHealthMenstruationPersonalInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ReadHealthMenstruationPersonalInfoRequest> createRepeated() => $pb.PbList<ReadHealthMenstruationPersonalInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationPersonalInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadHealthMenstruationPersonalInfoRequest>(create);
  static ReadHealthMenstruationPersonalInfoRequest _defaultInstance;

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

class ReadHealthMenstruationPersonalInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadHealthMenstruationPersonalInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationPersonalInfo>(1, 'result', subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  ReadHealthMenstruationPersonalInfoResponse._() : super();
  factory ReadHealthMenstruationPersonalInfoResponse() => create();
  factory ReadHealthMenstruationPersonalInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadHealthMenstruationPersonalInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadHealthMenstruationPersonalInfoResponse clone() => ReadHealthMenstruationPersonalInfoResponse()..mergeFromMessage(this);
  ReadHealthMenstruationPersonalInfoResponse copyWith(void Function(ReadHealthMenstruationPersonalInfoResponse) updates) => super.copyWith((message) => updates(message as ReadHealthMenstruationPersonalInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationPersonalInfoResponse create() => ReadHealthMenstruationPersonalInfoResponse._();
  ReadHealthMenstruationPersonalInfoResponse createEmptyInstance() => create();
  static $pb.PbList<ReadHealthMenstruationPersonalInfoResponse> createRepeated() => $pb.PbList<ReadHealthMenstruationPersonalInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadHealthMenstruationPersonalInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadHealthMenstruationPersonalInfoResponse>(create);
  static ReadHealthMenstruationPersonalInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationPersonalInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo ensureResult() => $_ensure(0);
}

class UpdateHealthMenstruationPersonalInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateHealthMenstruationPersonalInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationPersonalInfo>(1, 'payload', subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateHealthMenstruationPersonalInfoRequest._() : super();
  factory UpdateHealthMenstruationPersonalInfoRequest() => create();
  factory UpdateHealthMenstruationPersonalInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHealthMenstruationPersonalInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateHealthMenstruationPersonalInfoRequest clone() => UpdateHealthMenstruationPersonalInfoRequest()..mergeFromMessage(this);
  UpdateHealthMenstruationPersonalInfoRequest copyWith(void Function(UpdateHealthMenstruationPersonalInfoRequest) updates) => super.copyWith((message) => updates(message as UpdateHealthMenstruationPersonalInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationPersonalInfoRequest create() => UpdateHealthMenstruationPersonalInfoRequest._();
  UpdateHealthMenstruationPersonalInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateHealthMenstruationPersonalInfoRequest> createRepeated() => $pb.PbList<UpdateHealthMenstruationPersonalInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationPersonalInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHealthMenstruationPersonalInfoRequest>(create);
  static UpdateHealthMenstruationPersonalInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(HealthMenstruationPersonalInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo ensurePayload() => $_ensure(0);
}

class UpdateHealthMenstruationPersonalInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateHealthMenstruationPersonalInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<HealthMenstruationPersonalInfo>(1, 'result', subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateHealthMenstruationPersonalInfoResponse._() : super();
  factory UpdateHealthMenstruationPersonalInfoResponse() => create();
  factory UpdateHealthMenstruationPersonalInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHealthMenstruationPersonalInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateHealthMenstruationPersonalInfoResponse clone() => UpdateHealthMenstruationPersonalInfoResponse()..mergeFromMessage(this);
  UpdateHealthMenstruationPersonalInfoResponse copyWith(void Function(UpdateHealthMenstruationPersonalInfoResponse) updates) => super.copyWith((message) => updates(message as UpdateHealthMenstruationPersonalInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationPersonalInfoResponse create() => UpdateHealthMenstruationPersonalInfoResponse._();
  UpdateHealthMenstruationPersonalInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateHealthMenstruationPersonalInfoResponse> createRepeated() => $pb.PbList<UpdateHealthMenstruationPersonalInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateHealthMenstruationPersonalInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHealthMenstruationPersonalInfoResponse>(create);
  static UpdateHealthMenstruationPersonalInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(HealthMenstruationPersonalInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  HealthMenstruationPersonalInfo ensureResult() => $_ensure(0);
}

class DeleteHealthMenstruationPersonalInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteHealthMenstruationPersonalInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Identifier>(1, 'id', subBuilder: $7.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteHealthMenstruationPersonalInfoRequest._() : super();
  factory DeleteHealthMenstruationPersonalInfoRequest() => create();
  factory DeleteHealthMenstruationPersonalInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteHealthMenstruationPersonalInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteHealthMenstruationPersonalInfoRequest clone() => DeleteHealthMenstruationPersonalInfoRequest()..mergeFromMessage(this);
  DeleteHealthMenstruationPersonalInfoRequest copyWith(void Function(DeleteHealthMenstruationPersonalInfoRequest) updates) => super.copyWith((message) => updates(message as DeleteHealthMenstruationPersonalInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationPersonalInfoRequest create() => DeleteHealthMenstruationPersonalInfoRequest._();
  DeleteHealthMenstruationPersonalInfoRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteHealthMenstruationPersonalInfoRequest> createRepeated() => $pb.PbList<DeleteHealthMenstruationPersonalInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationPersonalInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteHealthMenstruationPersonalInfoRequest>(create);
  static DeleteHealthMenstruationPersonalInfoRequest _defaultInstance;

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

class DeleteHealthMenstruationPersonalInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteHealthMenstruationPersonalInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteHealthMenstruationPersonalInfoResponse._() : super();
  factory DeleteHealthMenstruationPersonalInfoResponse() => create();
  factory DeleteHealthMenstruationPersonalInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteHealthMenstruationPersonalInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteHealthMenstruationPersonalInfoResponse clone() => DeleteHealthMenstruationPersonalInfoResponse()..mergeFromMessage(this);
  DeleteHealthMenstruationPersonalInfoResponse copyWith(void Function(DeleteHealthMenstruationPersonalInfoResponse) updates) => super.copyWith((message) => updates(message as DeleteHealthMenstruationPersonalInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationPersonalInfoResponse create() => DeleteHealthMenstruationPersonalInfoResponse._();
  DeleteHealthMenstruationPersonalInfoResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteHealthMenstruationPersonalInfoResponse> createRepeated() => $pb.PbList<DeleteHealthMenstruationPersonalInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteHealthMenstruationPersonalInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteHealthMenstruationPersonalInfoResponse>(create);
  static DeleteHealthMenstruationPersonalInfoResponse _defaultInstance;
}

class ListHealthMenstruationPersonalInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHealthMenstruationPersonalInfoRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Filtering>(1, 'filter', subBuilder: $8.Filtering.create)
    ..aOM<$8.Sorting>(2, 'orderBy', subBuilder: $8.Sorting.create)
    ..aOM<$8.FieldSelection>(3, 'fields', subBuilder: $8.FieldSelection.create)
    ..aOM<$8.Pagination>(4, 'paging', subBuilder: $8.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListHealthMenstruationPersonalInfoRequest._() : super();
  factory ListHealthMenstruationPersonalInfoRequest() => create();
  factory ListHealthMenstruationPersonalInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHealthMenstruationPersonalInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHealthMenstruationPersonalInfoRequest clone() => ListHealthMenstruationPersonalInfoRequest()..mergeFromMessage(this);
  ListHealthMenstruationPersonalInfoRequest copyWith(void Function(ListHealthMenstruationPersonalInfoRequest) updates) => super.copyWith((message) => updates(message as ListHealthMenstruationPersonalInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationPersonalInfoRequest create() => ListHealthMenstruationPersonalInfoRequest._();
  ListHealthMenstruationPersonalInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ListHealthMenstruationPersonalInfoRequest> createRepeated() => $pb.PbList<ListHealthMenstruationPersonalInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationPersonalInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHealthMenstruationPersonalInfoRequest>(create);
  static ListHealthMenstruationPersonalInfoRequest _defaultInstance;

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

class ListHealthMenstruationPersonalInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListHealthMenstruationPersonalInfoResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<HealthMenstruationPersonalInfo>(1, 'results', $pb.PbFieldType.PM, subBuilder: HealthMenstruationPersonalInfo.create)
    ..hasRequiredFields = false
  ;

  ListHealthMenstruationPersonalInfoResponse._() : super();
  factory ListHealthMenstruationPersonalInfoResponse() => create();
  factory ListHealthMenstruationPersonalInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHealthMenstruationPersonalInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListHealthMenstruationPersonalInfoResponse clone() => ListHealthMenstruationPersonalInfoResponse()..mergeFromMessage(this);
  ListHealthMenstruationPersonalInfoResponse copyWith(void Function(ListHealthMenstruationPersonalInfoResponse) updates) => super.copyWith((message) => updates(message as ListHealthMenstruationPersonalInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationPersonalInfoResponse create() => ListHealthMenstruationPersonalInfoResponse._();
  ListHealthMenstruationPersonalInfoResponse createEmptyInstance() => create();
  static $pb.PbList<ListHealthMenstruationPersonalInfoResponse> createRepeated() => $pb.PbList<ListHealthMenstruationPersonalInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHealthMenstruationPersonalInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHealthMenstruationPersonalInfoResponse>(create);
  static ListHealthMenstruationPersonalInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HealthMenstruationPersonalInfo> get results => $_getList(0);
}

