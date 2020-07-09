///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/log.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $8;
import '../../../google/protobuf/timestamp.pb.dart' as $10;

class LogActivity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogActivity', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(3, 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOS(4, 'ip')
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
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get ip => $_getSZ(3);
  @$pb.TagNumber(4)
  set ip($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIp() => clearField(4);
}

