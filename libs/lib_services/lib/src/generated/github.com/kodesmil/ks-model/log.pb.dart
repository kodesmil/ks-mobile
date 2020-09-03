///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/log.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $9;

class LogActivity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogActivity', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.Timestamp>(2, 'createdAt', subBuilder: $9.Timestamp.create)
    ..aOM<$9.Timestamp>(3, 'updatedAt', subBuilder: $9.Timestamp.create)
    ..aOS(4, 'ip')
    ..aOS(5, 'profileId')
    ..hasRequiredFields = false
  ;

  LogActivity._() : super();
  factory LogActivity() => create();
  factory LogActivity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogActivity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LogActivity clone() => LogActivity()..mergeFromMessage(this);
  LogActivity copyWith(void Function(LogActivity) updates) => super.copyWith((message) => updates(message as LogActivity));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogActivity create() => LogActivity._();
  LogActivity createEmptyInstance() => create();
  static $pb.PbList<LogActivity> createRepeated() => $pb.PbList<LogActivity>();
  @$core.pragma('dart2js:noInline')
  static LogActivity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogActivity>(create);
  static LogActivity _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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
  $core.String get ip => $_getSZ(3);
  @$pb.TagNumber(4)
  set ip($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIp() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get profileId => $_getSZ(4);
  @$pb.TagNumber(5)
  set profileId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfileId() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfileId() => clearField(5);
}

