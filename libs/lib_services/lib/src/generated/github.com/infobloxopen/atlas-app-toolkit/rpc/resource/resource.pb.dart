///
//  Generated code. Do not modify.
//  source: github.com/infobloxopen/atlas-app-toolkit/rpc/resource/resource.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Identifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Identifier',
      package: const $pb.PackageName('atlas.rpc'), createEmptyInstance: create)
    ..aOS(1, 'applicationName')
    ..aOS(2, 'resourceType')
    ..aOS(3, 'resourceId')
    ..hasRequiredFields = false;

  Identifier._() : super();
  factory Identifier() => create();
  factory Identifier.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Identifier.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Identifier clone() => Identifier()..mergeFromMessage(this);
  Identifier copyWith(void Function(Identifier) updates) =>
      super.copyWith((message) => updates(message as Identifier));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Identifier create() => Identifier._();
  Identifier createEmptyInstance() => create();
  static $pb.PbList<Identifier> createRepeated() => $pb.PbList<Identifier>();
  @$core.pragma('dart2js:noInline')
  static Identifier getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Identifier>(create);
  static Identifier _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationName => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasApplicationName() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get resourceType => $_getSZ(1);
  @$pb.TagNumber(2)
  set resourceType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResourceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get resourceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set resourceId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResourceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearResourceId() => clearField(3);
}
