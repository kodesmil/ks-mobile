///
//  Generated code. Do not modify.
//  source: infobloxopen/protoc-gen-gorm/options/gorm.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GormFileOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GormFileOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GormFileOptions._() : super();
  factory GormFileOptions() => create();
  factory GormFileOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GormFileOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GormFileOptions clone() => GormFileOptions()..mergeFromMessage(this);
  GormFileOptions copyWith(void Function(GormFileOptions) updates) =>
      super.copyWith((message) => updates(message as GormFileOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GormFileOptions create() => GormFileOptions._();
  GormFileOptions createEmptyInstance() => create();
  static $pb.PbList<GormFileOptions> createRepeated() =>
      $pb.PbList<GormFileOptions>();
  @$core.pragma('dart2js:noInline')
  static GormFileOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GormFileOptions>(create);
  static GormFileOptions _defaultInstance;
}

class GormMessageOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GormMessageOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..a<$core.bool>(1, 'ormable', $pb.PbFieldType.QB)
    ..pc<ExtraField>(2, 'include', $pb.PbFieldType.PM,
        subBuilder: ExtraField.create)
    ..aOS(3, 'table')
    ..aOB(4, 'multiAccount');

  GormMessageOptions._() : super();
  factory GormMessageOptions() => create();
  factory GormMessageOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GormMessageOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GormMessageOptions clone() => GormMessageOptions()..mergeFromMessage(this);
  GormMessageOptions copyWith(void Function(GormMessageOptions) updates) =>
      super.copyWith((message) => updates(message as GormMessageOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GormMessageOptions create() => GormMessageOptions._();
  GormMessageOptions createEmptyInstance() => create();
  static $pb.PbList<GormMessageOptions> createRepeated() =>
      $pb.PbList<GormMessageOptions>();
  @$core.pragma('dart2js:noInline')
  static GormMessageOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GormMessageOptions>(create);
  static GormMessageOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ormable => $_getBF(0);
  @$pb.TagNumber(1)
  set ormable($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOrmable() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrmable() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ExtraField> get include => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get table => $_getSZ(2);
  @$pb.TagNumber(3)
  set table($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTable() => $_has(2);
  @$pb.TagNumber(3)
  void clearTable() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get multiAccount => $_getBF(3);
  @$pb.TagNumber(4)
  set multiAccount($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMultiAccount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultiAccount() => clearField(4);
}

class ExtraField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExtraField',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aQS(1, 'type')
    ..aQS(2, 'name')
    ..aOM<GormTag>(3, 'tag', subBuilder: GormTag.create)
    ..aOS(4, 'package');

  ExtraField._() : super();
  factory ExtraField() => create();
  factory ExtraField.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExtraField.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExtraField clone() => ExtraField()..mergeFromMessage(this);
  ExtraField copyWith(void Function(ExtraField) updates) =>
      super.copyWith((message) => updates(message as ExtraField));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExtraField create() => ExtraField._();
  ExtraField createEmptyInstance() => create();
  static $pb.PbList<ExtraField> createRepeated() => $pb.PbList<ExtraField>();
  @$core.pragma('dart2js:noInline')
  static ExtraField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtraField>(create);
  static ExtraField _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  GormTag get tag => $_getN(2);
  @$pb.TagNumber(3)
  set tag(GormTag v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTag() => $_has(2);
  @$pb.TagNumber(3)
  void clearTag() => clearField(3);
  @$pb.TagNumber(3)
  GormTag ensureTag() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get package => $_getSZ(3);
  @$pb.TagNumber(4)
  set package($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPackage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPackage() => clearField(4);
}

enum GormFieldOptions_Association {
  hasOne,
  belongsTo,
  hasMany,
  manyToMany,
  notSet
}

class GormFieldOptions extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GormFieldOptions_Association>
      _GormFieldOptions_AssociationByTag = {
    3: GormFieldOptions_Association.hasOne,
    4: GormFieldOptions_Association.belongsTo,
    5: GormFieldOptions_Association.hasMany,
    6: GormFieldOptions_Association.manyToMany,
    0: GormFieldOptions_Association.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GormFieldOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6])
    ..aOM<GormTag>(1, 'tag', subBuilder: GormTag.create)
    ..aOB(2, 'drop')
    ..aOM<HasOneOptions>(3, 'hasOne', subBuilder: HasOneOptions.create)
    ..aOM<BelongsToOptions>(4, 'belongsTo', subBuilder: BelongsToOptions.create)
    ..aOM<HasManyOptions>(5, 'hasMany', subBuilder: HasManyOptions.create)
    ..aOM<ManyToManyOptions>(6, 'manyToMany',
        subBuilder: ManyToManyOptions.create)
    ..aOS(7, 'referenceOf')
    ..hasRequiredFields = false;

  GormFieldOptions._() : super();
  factory GormFieldOptions() => create();
  factory GormFieldOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GormFieldOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GormFieldOptions clone() => GormFieldOptions()..mergeFromMessage(this);
  GormFieldOptions copyWith(void Function(GormFieldOptions) updates) =>
      super.copyWith((message) => updates(message as GormFieldOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GormFieldOptions create() => GormFieldOptions._();
  GormFieldOptions createEmptyInstance() => create();
  static $pb.PbList<GormFieldOptions> createRepeated() =>
      $pb.PbList<GormFieldOptions>();
  @$core.pragma('dart2js:noInline')
  static GormFieldOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GormFieldOptions>(create);
  static GormFieldOptions _defaultInstance;

  GormFieldOptions_Association whichAssociation() =>
      _GormFieldOptions_AssociationByTag[$_whichOneof(0)];
  void clearAssociation() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GormTag get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag(GormTag v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
  @$pb.TagNumber(1)
  GormTag ensureTag() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get drop => $_getBF(1);
  @$pb.TagNumber(2)
  set drop($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDrop() => $_has(1);
  @$pb.TagNumber(2)
  void clearDrop() => clearField(2);

  @$pb.TagNumber(3)
  HasOneOptions get hasOne => $_getN(2);
  @$pb.TagNumber(3)
  set hasOne(HasOneOptions v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHasOne() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasOne() => clearField(3);
  @$pb.TagNumber(3)
  HasOneOptions ensureHasOne() => $_ensure(2);

  @$pb.TagNumber(4)
  BelongsToOptions get belongsTo => $_getN(3);
  @$pb.TagNumber(4)
  set belongsTo(BelongsToOptions v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBelongsTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearBelongsTo() => clearField(4);
  @$pb.TagNumber(4)
  BelongsToOptions ensureBelongsTo() => $_ensure(3);

  @$pb.TagNumber(5)
  HasManyOptions get hasMany => $_getN(4);
  @$pb.TagNumber(5)
  set hasMany(HasManyOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasMany() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasMany() => clearField(5);
  @$pb.TagNumber(5)
  HasManyOptions ensureHasMany() => $_ensure(4);

  @$pb.TagNumber(6)
  ManyToManyOptions get manyToMany => $_getN(5);
  @$pb.TagNumber(6)
  set manyToMany(ManyToManyOptions v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasManyToMany() => $_has(5);
  @$pb.TagNumber(6)
  void clearManyToMany() => clearField(6);
  @$pb.TagNumber(6)
  ManyToManyOptions ensureManyToMany() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get referenceOf => $_getSZ(6);
  @$pb.TagNumber(7)
  set referenceOf($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReferenceOf() => $_has(6);
  @$pb.TagNumber(7)
  void clearReferenceOf() => clearField(7);
}

class GormTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GormTag',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'column')
    ..aOS(2, 'type')
    ..a<$core.int>(3, 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'precision', $pb.PbFieldType.O3)
    ..aOB(5, 'primaryKey')
    ..aOB(6, 'unique')
    ..aOS(7, 'default')
    ..aOB(8, 'notNull')
    ..aOB(9, 'autoIncrement')
    ..aOS(10, 'index')
    ..aOS(11, 'uniqueIndex')
    ..aOB(12, 'embedded')
    ..aOS(13, 'embeddedPrefix')
    ..aOB(14, 'ignore')
    ..aOS(15, 'foreignkey')
    ..aOS(16, 'associationForeignkey')
    ..aOS(17, 'manyToMany')
    ..aOS(18, 'jointableForeignkey')
    ..aOS(19, 'associationJointableForeignkey')
    ..aOB(20, 'associationAutoupdate')
    ..aOB(21, 'associationAutocreate')
    ..aOB(22, 'associationSaveReference')
    ..aOB(23, 'preload')
    ..hasRequiredFields = false;

  GormTag._() : super();
  factory GormTag() => create();
  factory GormTag.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GormTag.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GormTag clone() => GormTag()..mergeFromMessage(this);
  GormTag copyWith(void Function(GormTag) updates) =>
      super.copyWith((message) => updates(message as GormTag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GormTag create() => GormTag._();
  GormTag createEmptyInstance() => create();
  static $pb.PbList<GormTag> createRepeated() => $pb.PbList<GormTag>();
  @$core.pragma('dart2js:noInline')
  static GormTag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GormTag>(create);
  static GormTag _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get column => $_getSZ(0);
  @$pb.TagNumber(1)
  set column($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColumn() => $_has(0);
  @$pb.TagNumber(1)
  void clearColumn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get precision => $_getIZ(3);
  @$pb.TagNumber(4)
  set precision($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPrecision() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrecision() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get primaryKey => $_getBF(4);
  @$pb.TagNumber(5)
  set primaryKey($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPrimaryKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrimaryKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get unique => $_getBF(5);
  @$pb.TagNumber(6)
  set unique($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUnique() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnique() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get default_7 => $_getSZ(6);
  @$pb.TagNumber(7)
  set default_7($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDefault_7() => $_has(6);
  @$pb.TagNumber(7)
  void clearDefault_7() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get notNull => $_getBF(7);
  @$pb.TagNumber(8)
  set notNull($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasNotNull() => $_has(7);
  @$pb.TagNumber(8)
  void clearNotNull() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get autoIncrement => $_getBF(8);
  @$pb.TagNumber(9)
  set autoIncrement($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAutoIncrement() => $_has(8);
  @$pb.TagNumber(9)
  void clearAutoIncrement() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get index => $_getSZ(9);
  @$pb.TagNumber(10)
  set index($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIndex() => $_has(9);
  @$pb.TagNumber(10)
  void clearIndex() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get uniqueIndex => $_getSZ(10);
  @$pb.TagNumber(11)
  set uniqueIndex($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUniqueIndex() => $_has(10);
  @$pb.TagNumber(11)
  void clearUniqueIndex() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get embedded => $_getBF(11);
  @$pb.TagNumber(12)
  set embedded($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasEmbedded() => $_has(11);
  @$pb.TagNumber(12)
  void clearEmbedded() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get embeddedPrefix => $_getSZ(12);
  @$pb.TagNumber(13)
  set embeddedPrefix($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasEmbeddedPrefix() => $_has(12);
  @$pb.TagNumber(13)
  void clearEmbeddedPrefix() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get ignore => $_getBF(13);
  @$pb.TagNumber(14)
  set ignore($core.bool v) {
    $_setBool(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasIgnore() => $_has(13);
  @$pb.TagNumber(14)
  void clearIgnore() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get foreignkey => $_getSZ(14);
  @$pb.TagNumber(15)
  set foreignkey($core.String v) {
    $_setString(14, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasForeignkey() => $_has(14);
  @$pb.TagNumber(15)
  void clearForeignkey() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get associationForeignkey => $_getSZ(15);
  @$pb.TagNumber(16)
  set associationForeignkey($core.String v) {
    $_setString(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasAssociationForeignkey() => $_has(15);
  @$pb.TagNumber(16)
  void clearAssociationForeignkey() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get manyToMany => $_getSZ(16);
  @$pb.TagNumber(17)
  set manyToMany($core.String v) {
    $_setString(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasManyToMany() => $_has(16);
  @$pb.TagNumber(17)
  void clearManyToMany() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get jointableForeignkey => $_getSZ(17);
  @$pb.TagNumber(18)
  set jointableForeignkey($core.String v) {
    $_setString(17, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasJointableForeignkey() => $_has(17);
  @$pb.TagNumber(18)
  void clearJointableForeignkey() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get associationJointableForeignkey => $_getSZ(18);
  @$pb.TagNumber(19)
  set associationJointableForeignkey($core.String v) {
    $_setString(18, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasAssociationJointableForeignkey() => $_has(18);
  @$pb.TagNumber(19)
  void clearAssociationJointableForeignkey() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get associationAutoupdate => $_getBF(19);
  @$pb.TagNumber(20)
  set associationAutoupdate($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasAssociationAutoupdate() => $_has(19);
  @$pb.TagNumber(20)
  void clearAssociationAutoupdate() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get associationAutocreate => $_getBF(20);
  @$pb.TagNumber(21)
  set associationAutocreate($core.bool v) {
    $_setBool(20, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasAssociationAutocreate() => $_has(20);
  @$pb.TagNumber(21)
  void clearAssociationAutocreate() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get associationSaveReference => $_getBF(21);
  @$pb.TagNumber(22)
  set associationSaveReference($core.bool v) {
    $_setBool(21, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasAssociationSaveReference() => $_has(21);
  @$pb.TagNumber(22)
  void clearAssociationSaveReference() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get preload => $_getBF(22);
  @$pb.TagNumber(23)
  set preload($core.bool v) {
    $_setBool(22, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasPreload() => $_has(22);
  @$pb.TagNumber(23)
  void clearPreload() => clearField(23);
}

class HasOneOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HasOneOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'foreignkey')
    ..aOM<GormTag>(2, 'foreignkeyTag', subBuilder: GormTag.create)
    ..aOS(3, 'associationForeignkey')
    ..aOB(4, 'associationAutoupdate')
    ..aOB(5, 'associationAutocreate')
    ..aOB(6, 'associationSaveReference')
    ..aOB(7, 'preload')
    ..hasRequiredFields = false;

  HasOneOptions._() : super();
  factory HasOneOptions() => create();
  factory HasOneOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HasOneOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  HasOneOptions clone() => HasOneOptions()..mergeFromMessage(this);
  HasOneOptions copyWith(void Function(HasOneOptions) updates) =>
      super.copyWith((message) => updates(message as HasOneOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HasOneOptions create() => HasOneOptions._();
  HasOneOptions createEmptyInstance() => create();
  static $pb.PbList<HasOneOptions> createRepeated() =>
      $pb.PbList<HasOneOptions>();
  @$core.pragma('dart2js:noInline')
  static HasOneOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HasOneOptions>(create);
  static HasOneOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get foreignkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set foreignkey($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasForeignkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearForeignkey() => clearField(1);

  @$pb.TagNumber(2)
  GormTag get foreignkeyTag => $_getN(1);
  @$pb.TagNumber(2)
  set foreignkeyTag(GormTag v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForeignkeyTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearForeignkeyTag() => clearField(2);
  @$pb.TagNumber(2)
  GormTag ensureForeignkeyTag() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get associationForeignkey => $_getSZ(2);
  @$pb.TagNumber(3)
  set associationForeignkey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAssociationForeignkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociationForeignkey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get associationAutoupdate => $_getBF(3);
  @$pb.TagNumber(4)
  set associationAutoupdate($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAssociationAutoupdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssociationAutoupdate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get associationAutocreate => $_getBF(4);
  @$pb.TagNumber(5)
  set associationAutocreate($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAssociationAutocreate() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssociationAutocreate() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get associationSaveReference => $_getBF(5);
  @$pb.TagNumber(6)
  set associationSaveReference($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAssociationSaveReference() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociationSaveReference() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get preload => $_getBF(6);
  @$pb.TagNumber(7)
  set preload($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPreload() => $_has(6);
  @$pb.TagNumber(7)
  void clearPreload() => clearField(7);
}

class BelongsToOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BelongsToOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'foreignkey')
    ..aOM<GormTag>(2, 'foreignkeyTag', subBuilder: GormTag.create)
    ..aOS(3, 'associationForeignkey')
    ..aOB(4, 'associationAutoupdate')
    ..aOB(5, 'associationAutocreate')
    ..aOB(6, 'associationSaveReference')
    ..aOB(7, 'preload')
    ..hasRequiredFields = false;

  BelongsToOptions._() : super();
  factory BelongsToOptions() => create();
  factory BelongsToOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BelongsToOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BelongsToOptions clone() => BelongsToOptions()..mergeFromMessage(this);
  BelongsToOptions copyWith(void Function(BelongsToOptions) updates) =>
      super.copyWith((message) => updates(message as BelongsToOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BelongsToOptions create() => BelongsToOptions._();
  BelongsToOptions createEmptyInstance() => create();
  static $pb.PbList<BelongsToOptions> createRepeated() =>
      $pb.PbList<BelongsToOptions>();
  @$core.pragma('dart2js:noInline')
  static BelongsToOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BelongsToOptions>(create);
  static BelongsToOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get foreignkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set foreignkey($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasForeignkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearForeignkey() => clearField(1);

  @$pb.TagNumber(2)
  GormTag get foreignkeyTag => $_getN(1);
  @$pb.TagNumber(2)
  set foreignkeyTag(GormTag v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForeignkeyTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearForeignkeyTag() => clearField(2);
  @$pb.TagNumber(2)
  GormTag ensureForeignkeyTag() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get associationForeignkey => $_getSZ(2);
  @$pb.TagNumber(3)
  set associationForeignkey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAssociationForeignkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociationForeignkey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get associationAutoupdate => $_getBF(3);
  @$pb.TagNumber(4)
  set associationAutoupdate($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAssociationAutoupdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssociationAutoupdate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get associationAutocreate => $_getBF(4);
  @$pb.TagNumber(5)
  set associationAutocreate($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAssociationAutocreate() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssociationAutocreate() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get associationSaveReference => $_getBF(5);
  @$pb.TagNumber(6)
  set associationSaveReference($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAssociationSaveReference() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociationSaveReference() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get preload => $_getBF(6);
  @$pb.TagNumber(7)
  set preload($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPreload() => $_has(6);
  @$pb.TagNumber(7)
  void clearPreload() => clearField(7);
}

class HasManyOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HasManyOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'foreignkey')
    ..aOM<GormTag>(2, 'foreignkeyTag', subBuilder: GormTag.create)
    ..aOS(3, 'associationForeignkey')
    ..aOS(4, 'positionField')
    ..aOM<GormTag>(5, 'positionFieldTag', subBuilder: GormTag.create)
    ..aOB(6, 'associationAutoupdate')
    ..aOB(7, 'associationAutocreate')
    ..aOB(8, 'associationSaveReference')
    ..aOB(9, 'preload')
    ..hasRequiredFields = false;

  HasManyOptions._() : super();
  factory HasManyOptions() => create();
  factory HasManyOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HasManyOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  HasManyOptions clone() => HasManyOptions()..mergeFromMessage(this);
  HasManyOptions copyWith(void Function(HasManyOptions) updates) =>
      super.copyWith((message) => updates(message as HasManyOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HasManyOptions create() => HasManyOptions._();
  HasManyOptions createEmptyInstance() => create();
  static $pb.PbList<HasManyOptions> createRepeated() =>
      $pb.PbList<HasManyOptions>();
  @$core.pragma('dart2js:noInline')
  static HasManyOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HasManyOptions>(create);
  static HasManyOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get foreignkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set foreignkey($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasForeignkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearForeignkey() => clearField(1);

  @$pb.TagNumber(2)
  GormTag get foreignkeyTag => $_getN(1);
  @$pb.TagNumber(2)
  set foreignkeyTag(GormTag v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForeignkeyTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearForeignkeyTag() => clearField(2);
  @$pb.TagNumber(2)
  GormTag ensureForeignkeyTag() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get associationForeignkey => $_getSZ(2);
  @$pb.TagNumber(3)
  set associationForeignkey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAssociationForeignkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociationForeignkey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get positionField => $_getSZ(3);
  @$pb.TagNumber(4)
  set positionField($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPositionField() => $_has(3);
  @$pb.TagNumber(4)
  void clearPositionField() => clearField(4);

  @$pb.TagNumber(5)
  GormTag get positionFieldTag => $_getN(4);
  @$pb.TagNumber(5)
  set positionFieldTag(GormTag v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPositionFieldTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearPositionFieldTag() => clearField(5);
  @$pb.TagNumber(5)
  GormTag ensurePositionFieldTag() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get associationAutoupdate => $_getBF(5);
  @$pb.TagNumber(6)
  set associationAutoupdate($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAssociationAutoupdate() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociationAutoupdate() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get associationAutocreate => $_getBF(6);
  @$pb.TagNumber(7)
  set associationAutocreate($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAssociationAutocreate() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssociationAutocreate() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get associationSaveReference => $_getBF(7);
  @$pb.TagNumber(8)
  set associationSaveReference($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAssociationSaveReference() => $_has(7);
  @$pb.TagNumber(8)
  void clearAssociationSaveReference() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get preload => $_getBF(8);
  @$pb.TagNumber(9)
  set preload($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPreload() => $_has(8);
  @$pb.TagNumber(9)
  void clearPreload() => clearField(9);
}

class ManyToManyOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ManyToManyOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'jointable')
    ..aOS(2, 'foreignkey')
    ..aOS(3, 'jointableForeignkey')
    ..aOS(4, 'associationForeignkey')
    ..aOS(5, 'associationJointableForeignkey')
    ..aOB(6, 'associationAutoupdate')
    ..aOB(7, 'associationAutocreate')
    ..aOB(8, 'associationSaveReference')
    ..aOB(9, 'preload')
    ..hasRequiredFields = false;

  ManyToManyOptions._() : super();
  factory ManyToManyOptions() => create();
  factory ManyToManyOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ManyToManyOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ManyToManyOptions clone() => ManyToManyOptions()..mergeFromMessage(this);
  ManyToManyOptions copyWith(void Function(ManyToManyOptions) updates) =>
      super.copyWith((message) => updates(message as ManyToManyOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManyToManyOptions create() => ManyToManyOptions._();
  ManyToManyOptions createEmptyInstance() => create();
  static $pb.PbList<ManyToManyOptions> createRepeated() =>
      $pb.PbList<ManyToManyOptions>();
  @$core.pragma('dart2js:noInline')
  static ManyToManyOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManyToManyOptions>(create);
  static ManyToManyOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jointable => $_getSZ(0);
  @$pb.TagNumber(1)
  set jointable($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJointable() => $_has(0);
  @$pb.TagNumber(1)
  void clearJointable() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get foreignkey => $_getSZ(1);
  @$pb.TagNumber(2)
  set foreignkey($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForeignkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearForeignkey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jointableForeignkey => $_getSZ(2);
  @$pb.TagNumber(3)
  set jointableForeignkey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasJointableForeignkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearJointableForeignkey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get associationForeignkey => $_getSZ(3);
  @$pb.TagNumber(4)
  set associationForeignkey($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAssociationForeignkey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssociationForeignkey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get associationJointableForeignkey => $_getSZ(4);
  @$pb.TagNumber(5)
  set associationJointableForeignkey($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAssociationJointableForeignkey() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssociationJointableForeignkey() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get associationAutoupdate => $_getBF(5);
  @$pb.TagNumber(6)
  set associationAutoupdate($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAssociationAutoupdate() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociationAutoupdate() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get associationAutocreate => $_getBF(6);
  @$pb.TagNumber(7)
  set associationAutocreate($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAssociationAutocreate() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssociationAutocreate() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get associationSaveReference => $_getBF(7);
  @$pb.TagNumber(8)
  set associationSaveReference($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAssociationSaveReference() => $_has(7);
  @$pb.TagNumber(8)
  void clearAssociationSaveReference() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get preload => $_getBF(8);
  @$pb.TagNumber(9)
  set preload($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPreload() => $_has(8);
  @$pb.TagNumber(9)
  void clearPreload() => clearField(9);
}

class AutoServerOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AutoServerOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOB(1, 'autogen')
    ..aOB(2, 'txnMiddleware')
    ..aOB(3, 'withTracing')
    ..hasRequiredFields = false;

  AutoServerOptions._() : super();
  factory AutoServerOptions() => create();
  factory AutoServerOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AutoServerOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AutoServerOptions clone() => AutoServerOptions()..mergeFromMessage(this);
  AutoServerOptions copyWith(void Function(AutoServerOptions) updates) =>
      super.copyWith((message) => updates(message as AutoServerOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoServerOptions create() => AutoServerOptions._();
  AutoServerOptions createEmptyInstance() => create();
  static $pb.PbList<AutoServerOptions> createRepeated() =>
      $pb.PbList<AutoServerOptions>();
  @$core.pragma('dart2js:noInline')
  static AutoServerOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutoServerOptions>(create);
  static AutoServerOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get autogen => $_getBF(0);
  @$pb.TagNumber(1)
  set autogen($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAutogen() => $_has(0);
  @$pb.TagNumber(1)
  void clearAutogen() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get txnMiddleware => $_getBF(1);
  @$pb.TagNumber(2)
  set txnMiddleware($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTxnMiddleware() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxnMiddleware() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get withTracing => $_getBF(2);
  @$pb.TagNumber(3)
  set withTracing($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWithTracing() => $_has(2);
  @$pb.TagNumber(3)
  void clearWithTracing() => clearField(3);
}

class MethodOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MethodOptions',
      package: const $pb.PackageName('gorm'), createEmptyInstance: create)
    ..aOS(1, 'objectType')
    ..hasRequiredFields = false;

  MethodOptions._() : super();
  factory MethodOptions() => create();
  factory MethodOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MethodOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MethodOptions clone() => MethodOptions()..mergeFromMessage(this);
  MethodOptions copyWith(void Function(MethodOptions) updates) =>
      super.copyWith((message) => updates(message as MethodOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MethodOptions create() => MethodOptions._();
  MethodOptions createEmptyInstance() => create();
  static $pb.PbList<MethodOptions> createRepeated() =>
      $pb.PbList<MethodOptions>();
  @$core.pragma('dart2js:noInline')
  static MethodOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MethodOptions>(create);
  static MethodOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get objectType => $_getSZ(0);
  @$pb.TagNumber(1)
  set objectType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasObjectType() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjectType() => clearField(1);
}

class Gorm {
  static final $pb.Extension fileOpts = $pb.Extension<GormFileOptions>(
      'google.protobuf.FileOptions', 'fileOpts', 52119, $pb.PbFieldType.OM,
      defaultOrMaker: GormFileOptions.getDefault,
      subBuilder: GormFileOptions.create);
  static final $pb.Extension opts = $pb.Extension<GormMessageOptions>(
      'google.protobuf.MessageOptions', 'opts', 52119, $pb.PbFieldType.OM,
      defaultOrMaker: GormMessageOptions.getDefault,
      subBuilder: GormMessageOptions.create);
  static final $pb.Extension field_52119 = $pb.Extension<GormFieldOptions>(
      'google.protobuf.FieldOptions', 'field', 52119, $pb.PbFieldType.OM,
      defaultOrMaker: GormFieldOptions.getDefault,
      subBuilder: GormFieldOptions.create);
  static final $pb.Extension server = $pb.Extension<AutoServerOptions>(
      'google.protobuf.ServiceOptions', 'server', 52119, $pb.PbFieldType.OM,
      defaultOrMaker: AutoServerOptions.getDefault,
      subBuilder: AutoServerOptions.create);
  static final $pb.Extension method = $pb.Extension<MethodOptions>(
      'google.protobuf.MethodOptions', 'method', 52119, $pb.PbFieldType.OM,
      defaultOrMaker: MethodOptions.getDefault,
      subBuilder: MethodOptions.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(fileOpts);
    registry.add(opts);
    registry.add(field_52119);
    registry.add(server);
    registry.add(method);
  }
}
