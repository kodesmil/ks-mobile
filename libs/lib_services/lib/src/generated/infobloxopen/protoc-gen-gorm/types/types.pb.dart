///
//  Generated code. Do not modify.
//  source: infobloxopen/protoc-gen-gorm/types/types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UUIDValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UUIDValue',
      package: const $pb.PackageName('gorm.types'), createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  UUIDValue._() : super();
  factory UUIDValue() => create();
  factory UUIDValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UUIDValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UUIDValue clone() => UUIDValue()..mergeFromMessage(this);
  UUIDValue copyWith(void Function(UUIDValue) updates) =>
      super.copyWith((message) => updates(message as UUIDValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UUIDValue create() => UUIDValue._();
  UUIDValue createEmptyInstance() => create();
  static $pb.PbList<UUIDValue> createRepeated() => $pb.PbList<UUIDValue>();
  @$core.pragma('dart2js:noInline')
  static UUIDValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UUIDValue>(create);
  static UUIDValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class JSONValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JSONValue',
      package: const $pb.PackageName('gorm.types'), createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  JSONValue._() : super();
  factory JSONValue() => create();
  factory JSONValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JSONValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  JSONValue clone() => JSONValue()..mergeFromMessage(this);
  JSONValue copyWith(void Function(JSONValue) updates) =>
      super.copyWith((message) => updates(message as JSONValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JSONValue create() => JSONValue._();
  JSONValue createEmptyInstance() => create();
  static $pb.PbList<JSONValue> createRepeated() => $pb.PbList<JSONValue>();
  @$core.pragma('dart2js:noInline')
  static JSONValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONValue>(create);
  static JSONValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class UUID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UUID',
      package: const $pb.PackageName('gorm.types'), createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  UUID._() : super();
  factory UUID() => create();
  factory UUID.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UUID.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UUID clone() => UUID()..mergeFromMessage(this);
  UUID copyWith(void Function(UUID) updates) =>
      super.copyWith((message) => updates(message as UUID));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UUID create() => UUID._();
  UUID createEmptyInstance() => create();
  static $pb.PbList<UUID> createRepeated() => $pb.PbList<UUID>();
  @$core.pragma('dart2js:noInline')
  static UUID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UUID>(create);
  static UUID _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class InetValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InetValue',
      package: const $pb.PackageName('gorm.types'), createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  InetValue._() : super();
  factory InetValue() => create();
  factory InetValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InetValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InetValue clone() => InetValue()..mergeFromMessage(this);
  InetValue copyWith(void Function(InetValue) updates) =>
      super.copyWith((message) => updates(message as InetValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InetValue create() => InetValue._();
  InetValue createEmptyInstance() => create();
  static $pb.PbList<InetValue> createRepeated() => $pb.PbList<InetValue>();
  @$core.pragma('dart2js:noInline')
  static InetValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InetValue>(create);
  static InetValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class TimeOnly extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TimeOnly',
      package: const $pb.PackageName('gorm.types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  TimeOnly._() : super();
  factory TimeOnly() => create();
  factory TimeOnly.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TimeOnly.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TimeOnly clone() => TimeOnly()..mergeFromMessage(this);
  TimeOnly copyWith(void Function(TimeOnly) updates) =>
      super.copyWith((message) => updates(message as TimeOnly));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeOnly create() => TimeOnly._();
  TimeOnly createEmptyInstance() => create();
  static $pb.PbList<TimeOnly> createRepeated() => $pb.PbList<TimeOnly>();
  @$core.pragma('dart2js:noInline')
  static TimeOnly getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeOnly>(create);
  static TimeOnly _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}
