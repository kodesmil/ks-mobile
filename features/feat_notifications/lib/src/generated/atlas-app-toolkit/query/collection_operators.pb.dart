///
//  Generated code. Do not modify.
//  source: atlas-app-toolkit/query/collection_operators.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'collection_operators.pbenum.dart';

export 'collection_operators.pbenum.dart';

class SortCriteria extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SortCriteria',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..aOS(1, 'tag')
    ..e<SortCriteria_Order>(2, 'order', $pb.PbFieldType.OE,
        defaultOrMaker: SortCriteria_Order.ASC,
        valueOf: SortCriteria_Order.valueOf,
        enumValues: SortCriteria_Order.values)
    ..hasRequiredFields = false;

  SortCriteria._() : super();
  factory SortCriteria() => create();
  factory SortCriteria.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortCriteria.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SortCriteria clone() => SortCriteria()..mergeFromMessage(this);
  SortCriteria copyWith(void Function(SortCriteria) updates) =>
      super.copyWith((message) => updates(message as SortCriteria));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SortCriteria create() => SortCriteria._();
  SortCriteria createEmptyInstance() => create();
  static $pb.PbList<SortCriteria> createRepeated() =>
      $pb.PbList<SortCriteria>();
  @$core.pragma('dart2js:noInline')
  static SortCriteria getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortCriteria>(create);
  static SortCriteria _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);

  @$pb.TagNumber(2)
  SortCriteria_Order get order => $_getN(1);
  @$pb.TagNumber(2)
  set order(SortCriteria_Order v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrder() => clearField(2);
}

class Sorting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sorting',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pc<SortCriteria>(1, 'criterias', $pb.PbFieldType.PM,
        subBuilder: SortCriteria.create)
    ..hasRequiredFields = false;

  Sorting._() : super();
  factory Sorting() => create();
  factory Sorting.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Sorting.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Sorting clone() => Sorting()..mergeFromMessage(this);
  Sorting copyWith(void Function(Sorting) updates) =>
      super.copyWith((message) => updates(message as Sorting));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sorting create() => Sorting._();
  Sorting createEmptyInstance() => create();
  static $pb.PbList<Sorting> createRepeated() => $pb.PbList<Sorting>();
  @$core.pragma('dart2js:noInline')
  static Sorting getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sorting>(create);
  static Sorting _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SortCriteria> get criterias => $_getList(0);
}

class FieldSelection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FieldSelection',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..m<$core.String, Field>(1, 'fields',
        entryClassName: 'FieldSelection.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Field.create,
        packageName: const $pb.PackageName('infoblox.api'))
    ..hasRequiredFields = false;

  FieldSelection._() : super();
  factory FieldSelection() => create();
  factory FieldSelection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FieldSelection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FieldSelection clone() => FieldSelection()..mergeFromMessage(this);
  FieldSelection copyWith(void Function(FieldSelection) updates) =>
      super.copyWith((message) => updates(message as FieldSelection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FieldSelection create() => FieldSelection._();
  FieldSelection createEmptyInstance() => create();
  static $pb.PbList<FieldSelection> createRepeated() =>
      $pb.PbList<FieldSelection>();
  @$core.pragma('dart2js:noInline')
  static FieldSelection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldSelection>(create);
  static FieldSelection _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Field> get fields => $_getMap(0);
}

class Field extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Field',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..m<$core.String, Field>(2, 'subs',
        entryClassName: 'Field.SubsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Field.create,
        packageName: const $pb.PackageName('infoblox.api'))
    ..hasRequiredFields = false;

  Field._() : super();
  factory Field() => create();
  factory Field.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Field.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Field clone() => Field()..mergeFromMessage(this);
  Field copyWith(void Function(Field) updates) =>
      super.copyWith((message) => updates(message as Field));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Field create() => Field._();
  Field createEmptyInstance() => create();
  static $pb.PbList<Field> createRepeated() => $pb.PbList<Field>();
  @$core.pragma('dart2js:noInline')
  static Field getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Field>(create);
  static Field _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, Field> get subs => $_getMap(1);
}

enum Filtering_Root {
  operator,
  stringCondition,
  numberCondition,
  nullCondition,
  stringArrayCondition,
  numberArrayCondition,
  notSet
}

class Filtering extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Filtering_Root> _Filtering_RootByTag = {
    1: Filtering_Root.operator,
    2: Filtering_Root.stringCondition,
    3: Filtering_Root.numberCondition,
    4: Filtering_Root.nullCondition,
    5: Filtering_Root.stringArrayCondition,
    6: Filtering_Root.numberArrayCondition,
    0: Filtering_Root.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Filtering',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<LogicalOperator>(1, 'operator', subBuilder: LogicalOperator.create)
    ..aOM<StringCondition>(2, 'stringCondition',
        subBuilder: StringCondition.create)
    ..aOM<NumberCondition>(3, 'numberCondition',
        subBuilder: NumberCondition.create)
    ..aOM<NullCondition>(4, 'nullCondition', subBuilder: NullCondition.create)
    ..aOM<StringArrayCondition>(5, 'stringArrayCondition',
        subBuilder: StringArrayCondition.create)
    ..aOM<NumberArrayCondition>(6, 'numberArrayCondition',
        subBuilder: NumberArrayCondition.create)
    ..hasRequiredFields = false;

  Filtering._() : super();
  factory Filtering() => create();
  factory Filtering.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Filtering.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Filtering clone() => Filtering()..mergeFromMessage(this);
  Filtering copyWith(void Function(Filtering) updates) =>
      super.copyWith((message) => updates(message as Filtering));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Filtering create() => Filtering._();
  Filtering createEmptyInstance() => create();
  static $pb.PbList<Filtering> createRepeated() => $pb.PbList<Filtering>();
  @$core.pragma('dart2js:noInline')
  static Filtering getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Filtering>(create);
  static Filtering _defaultInstance;

  Filtering_Root whichRoot() => _Filtering_RootByTag[$_whichOneof(0)];
  void clearRoot() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LogicalOperator get operator => $_getN(0);
  @$pb.TagNumber(1)
  set operator(LogicalOperator v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperator() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperator() => clearField(1);
  @$pb.TagNumber(1)
  LogicalOperator ensureOperator() => $_ensure(0);

  @$pb.TagNumber(2)
  StringCondition get stringCondition => $_getN(1);
  @$pb.TagNumber(2)
  set stringCondition(StringCondition v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStringCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringCondition() => clearField(2);
  @$pb.TagNumber(2)
  StringCondition ensureStringCondition() => $_ensure(1);

  @$pb.TagNumber(3)
  NumberCondition get numberCondition => $_getN(2);
  @$pb.TagNumber(3)
  set numberCondition(NumberCondition v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNumberCondition() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumberCondition() => clearField(3);
  @$pb.TagNumber(3)
  NumberCondition ensureNumberCondition() => $_ensure(2);

  @$pb.TagNumber(4)
  NullCondition get nullCondition => $_getN(3);
  @$pb.TagNumber(4)
  set nullCondition(NullCondition v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNullCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearNullCondition() => clearField(4);
  @$pb.TagNumber(4)
  NullCondition ensureNullCondition() => $_ensure(3);

  @$pb.TagNumber(5)
  StringArrayCondition get stringArrayCondition => $_getN(4);
  @$pb.TagNumber(5)
  set stringArrayCondition(StringArrayCondition v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStringArrayCondition() => $_has(4);
  @$pb.TagNumber(5)
  void clearStringArrayCondition() => clearField(5);
  @$pb.TagNumber(5)
  StringArrayCondition ensureStringArrayCondition() => $_ensure(4);

  @$pb.TagNumber(6)
  NumberArrayCondition get numberArrayCondition => $_getN(5);
  @$pb.TagNumber(6)
  set numberArrayCondition(NumberArrayCondition v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNumberArrayCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumberArrayCondition() => clearField(6);
  @$pb.TagNumber(6)
  NumberArrayCondition ensureNumberArrayCondition() => $_ensure(5);
}

enum LogicalOperator_Left {
  leftOperator,
  leftStringCondition,
  leftNumberCondition,
  leftNullCondition,
  leftStringArrayCondition,
  leftNumberArrayCondition,
  notSet
}

enum LogicalOperator_Right {
  rightOperator,
  rightStringCondition,
  rightNumberCondition,
  rightNullCondition,
  rightStringArrayCondition,
  rightNumberArrayCondition,
  notSet
}

class LogicalOperator extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LogicalOperator_Left>
      _LogicalOperator_LeftByTag = {
    1: LogicalOperator_Left.leftOperator,
    2: LogicalOperator_Left.leftStringCondition,
    3: LogicalOperator_Left.leftNumberCondition,
    4: LogicalOperator_Left.leftNullCondition,
    11: LogicalOperator_Left.leftStringArrayCondition,
    12: LogicalOperator_Left.leftNumberArrayCondition,
    0: LogicalOperator_Left.notSet
  };
  static const $core.Map<$core.int, LogicalOperator_Right>
      _LogicalOperator_RightByTag = {
    5: LogicalOperator_Right.rightOperator,
    6: LogicalOperator_Right.rightStringCondition,
    7: LogicalOperator_Right.rightNumberCondition,
    8: LogicalOperator_Right.rightNullCondition,
    13: LogicalOperator_Right.rightStringArrayCondition,
    14: LogicalOperator_Right.rightNumberArrayCondition,
    0: LogicalOperator_Right.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogicalOperator',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 11, 12])
    ..oo(1, [5, 6, 7, 8, 13, 14])
    ..aOM<LogicalOperator>(1, 'leftOperator',
        subBuilder: LogicalOperator.create)
    ..aOM<StringCondition>(2, 'leftStringCondition',
        subBuilder: StringCondition.create)
    ..aOM<NumberCondition>(3, 'leftNumberCondition',
        subBuilder: NumberCondition.create)
    ..aOM<NullCondition>(4, 'leftNullCondition',
        subBuilder: NullCondition.create)
    ..aOM<LogicalOperator>(5, 'rightOperator',
        subBuilder: LogicalOperator.create)
    ..aOM<StringCondition>(6, 'rightStringCondition',
        subBuilder: StringCondition.create)
    ..aOM<NumberCondition>(7, 'rightNumberCondition',
        subBuilder: NumberCondition.create)
    ..aOM<NullCondition>(8, 'rightNullCondition',
        subBuilder: NullCondition.create)
    ..e<LogicalOperator_Type>(9, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: LogicalOperator_Type.AND,
        valueOf: LogicalOperator_Type.valueOf,
        enumValues: LogicalOperator_Type.values)
    ..aOB(10, 'isNegative')
    ..aOM<StringArrayCondition>(11, 'leftStringArrayCondition',
        subBuilder: StringArrayCondition.create)
    ..aOM<NumberArrayCondition>(12, 'leftNumberArrayCondition',
        subBuilder: NumberArrayCondition.create)
    ..aOM<StringArrayCondition>(13, 'rightStringArrayCondition',
        subBuilder: StringArrayCondition.create)
    ..aOM<NumberArrayCondition>(14, 'rightNumberArrayCondition',
        subBuilder: NumberArrayCondition.create)
    ..hasRequiredFields = false;

  LogicalOperator._() : super();
  factory LogicalOperator() => create();
  factory LogicalOperator.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LogicalOperator.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LogicalOperator clone() => LogicalOperator()..mergeFromMessage(this);
  LogicalOperator copyWith(void Function(LogicalOperator) updates) =>
      super.copyWith((message) => updates(message as LogicalOperator));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogicalOperator create() => LogicalOperator._();
  LogicalOperator createEmptyInstance() => create();
  static $pb.PbList<LogicalOperator> createRepeated() =>
      $pb.PbList<LogicalOperator>();
  @$core.pragma('dart2js:noInline')
  static LogicalOperator getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogicalOperator>(create);
  static LogicalOperator _defaultInstance;

  LogicalOperator_Left whichLeft() =>
      _LogicalOperator_LeftByTag[$_whichOneof(0)];
  void clearLeft() => clearField($_whichOneof(0));

  LogicalOperator_Right whichRight() =>
      _LogicalOperator_RightByTag[$_whichOneof(1)];
  void clearRight() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  LogicalOperator get leftOperator => $_getN(0);
  @$pb.TagNumber(1)
  set leftOperator(LogicalOperator v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLeftOperator() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftOperator() => clearField(1);
  @$pb.TagNumber(1)
  LogicalOperator ensureLeftOperator() => $_ensure(0);

  @$pb.TagNumber(2)
  StringCondition get leftStringCondition => $_getN(1);
  @$pb.TagNumber(2)
  set leftStringCondition(StringCondition v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLeftStringCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeftStringCondition() => clearField(2);
  @$pb.TagNumber(2)
  StringCondition ensureLeftStringCondition() => $_ensure(1);

  @$pb.TagNumber(3)
  NumberCondition get leftNumberCondition => $_getN(2);
  @$pb.TagNumber(3)
  set leftNumberCondition(NumberCondition v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLeftNumberCondition() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeftNumberCondition() => clearField(3);
  @$pb.TagNumber(3)
  NumberCondition ensureLeftNumberCondition() => $_ensure(2);

  @$pb.TagNumber(4)
  NullCondition get leftNullCondition => $_getN(3);
  @$pb.TagNumber(4)
  set leftNullCondition(NullCondition v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLeftNullCondition() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeftNullCondition() => clearField(4);
  @$pb.TagNumber(4)
  NullCondition ensureLeftNullCondition() => $_ensure(3);

  @$pb.TagNumber(5)
  LogicalOperator get rightOperator => $_getN(4);
  @$pb.TagNumber(5)
  set rightOperator(LogicalOperator v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRightOperator() => $_has(4);
  @$pb.TagNumber(5)
  void clearRightOperator() => clearField(5);
  @$pb.TagNumber(5)
  LogicalOperator ensureRightOperator() => $_ensure(4);

  @$pb.TagNumber(6)
  StringCondition get rightStringCondition => $_getN(5);
  @$pb.TagNumber(6)
  set rightStringCondition(StringCondition v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRightStringCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearRightStringCondition() => clearField(6);
  @$pb.TagNumber(6)
  StringCondition ensureRightStringCondition() => $_ensure(5);

  @$pb.TagNumber(7)
  NumberCondition get rightNumberCondition => $_getN(6);
  @$pb.TagNumber(7)
  set rightNumberCondition(NumberCondition v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRightNumberCondition() => $_has(6);
  @$pb.TagNumber(7)
  void clearRightNumberCondition() => clearField(7);
  @$pb.TagNumber(7)
  NumberCondition ensureRightNumberCondition() => $_ensure(6);

  @$pb.TagNumber(8)
  NullCondition get rightNullCondition => $_getN(7);
  @$pb.TagNumber(8)
  set rightNullCondition(NullCondition v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasRightNullCondition() => $_has(7);
  @$pb.TagNumber(8)
  void clearRightNullCondition() => clearField(8);
  @$pb.TagNumber(8)
  NullCondition ensureRightNullCondition() => $_ensure(7);

  @$pb.TagNumber(9)
  LogicalOperator_Type get type => $_getN(8);
  @$pb.TagNumber(9)
  set type(LogicalOperator_Type v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isNegative => $_getBF(9);
  @$pb.TagNumber(10)
  set isNegative($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsNegative() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsNegative() => clearField(10);

  @$pb.TagNumber(11)
  StringArrayCondition get leftStringArrayCondition => $_getN(10);
  @$pb.TagNumber(11)
  set leftStringArrayCondition(StringArrayCondition v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasLeftStringArrayCondition() => $_has(10);
  @$pb.TagNumber(11)
  void clearLeftStringArrayCondition() => clearField(11);
  @$pb.TagNumber(11)
  StringArrayCondition ensureLeftStringArrayCondition() => $_ensure(10);

  @$pb.TagNumber(12)
  NumberArrayCondition get leftNumberArrayCondition => $_getN(11);
  @$pb.TagNumber(12)
  set leftNumberArrayCondition(NumberArrayCondition v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasLeftNumberArrayCondition() => $_has(11);
  @$pb.TagNumber(12)
  void clearLeftNumberArrayCondition() => clearField(12);
  @$pb.TagNumber(12)
  NumberArrayCondition ensureLeftNumberArrayCondition() => $_ensure(11);

  @$pb.TagNumber(13)
  StringArrayCondition get rightStringArrayCondition => $_getN(12);
  @$pb.TagNumber(13)
  set rightStringArrayCondition(StringArrayCondition v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasRightStringArrayCondition() => $_has(12);
  @$pb.TagNumber(13)
  void clearRightStringArrayCondition() => clearField(13);
  @$pb.TagNumber(13)
  StringArrayCondition ensureRightStringArrayCondition() => $_ensure(12);

  @$pb.TagNumber(14)
  NumberArrayCondition get rightNumberArrayCondition => $_getN(13);
  @$pb.TagNumber(14)
  set rightNumberArrayCondition(NumberArrayCondition v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasRightNumberArrayCondition() => $_has(13);
  @$pb.TagNumber(14)
  void clearRightNumberArrayCondition() => clearField(14);
  @$pb.TagNumber(14)
  NumberArrayCondition ensureRightNumberArrayCondition() => $_ensure(13);
}

class StringCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StringCondition',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pPS(1, 'fieldPath')
    ..aOS(2, 'value')
    ..e<StringCondition_Type>(3, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: StringCondition_Type.EQ,
        valueOf: StringCondition_Type.valueOf,
        enumValues: StringCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false;

  StringCondition._() : super();
  factory StringCondition() => create();
  factory StringCondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StringCondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StringCondition clone() => StringCondition()..mergeFromMessage(this);
  StringCondition copyWith(void Function(StringCondition) updates) =>
      super.copyWith((message) => updates(message as StringCondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringCondition create() => StringCondition._();
  StringCondition createEmptyInstance() => create();
  static $pb.PbList<StringCondition> createRepeated() =>
      $pb.PbList<StringCondition>();
  @$core.pragma('dart2js:noInline')
  static StringCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringCondition>(create);
  static StringCondition _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  StringCondition_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(StringCondition_Type v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNegative => $_getBF(3);
  @$pb.TagNumber(4)
  set isNegative($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNegative() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNegative() => clearField(4);
}

class NumberCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NumberCondition',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pPS(1, 'fieldPath')
    ..a<$core.double>(2, 'value', $pb.PbFieldType.OD)
    ..e<NumberCondition_Type>(3, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: NumberCondition_Type.EQ,
        valueOf: NumberCondition_Type.valueOf,
        enumValues: NumberCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false;

  NumberCondition._() : super();
  factory NumberCondition() => create();
  factory NumberCondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NumberCondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NumberCondition clone() => NumberCondition()..mergeFromMessage(this);
  NumberCondition copyWith(void Function(NumberCondition) updates) =>
      super.copyWith((message) => updates(message as NumberCondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NumberCondition create() => NumberCondition._();
  NumberCondition createEmptyInstance() => create();
  static $pb.PbList<NumberCondition> createRepeated() =>
      $pb.PbList<NumberCondition>();
  @$core.pragma('dart2js:noInline')
  static NumberCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NumberCondition>(create);
  static NumberCondition _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  NumberCondition_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(NumberCondition_Type v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNegative => $_getBF(3);
  @$pb.TagNumber(4)
  set isNegative($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNegative() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNegative() => clearField(4);
}

class NullCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NullCondition',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pPS(1, 'fieldPath')
    ..aOB(2, 'isNegative')
    ..hasRequiredFields = false;

  NullCondition._() : super();
  factory NullCondition() => create();
  factory NullCondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NullCondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NullCondition clone() => NullCondition()..mergeFromMessage(this);
  NullCondition copyWith(void Function(NullCondition) updates) =>
      super.copyWith((message) => updates(message as NullCondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullCondition create() => NullCondition._();
  NullCondition createEmptyInstance() => create();
  static $pb.PbList<NullCondition> createRepeated() =>
      $pb.PbList<NullCondition>();
  @$core.pragma('dart2js:noInline')
  static NullCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NullCondition>(create);
  static NullCondition _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isNegative => $_getBF(1);
  @$pb.TagNumber(2)
  set isNegative($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsNegative() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNegative() => clearField(2);
}

class StringArrayCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StringArrayCondition',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pPS(1, 'fieldPath')
    ..pPS(2, 'values')
    ..e<StringArrayCondition_Type>(3, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: StringArrayCondition_Type.IN,
        valueOf: StringArrayCondition_Type.valueOf,
        enumValues: StringArrayCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false;

  StringArrayCondition._() : super();
  factory StringArrayCondition() => create();
  factory StringArrayCondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StringArrayCondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StringArrayCondition clone() =>
      StringArrayCondition()..mergeFromMessage(this);
  StringArrayCondition copyWith(void Function(StringArrayCondition) updates) =>
      super.copyWith((message) => updates(message as StringArrayCondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringArrayCondition create() => StringArrayCondition._();
  StringArrayCondition createEmptyInstance() => create();
  static $pb.PbList<StringArrayCondition> createRepeated() =>
      $pb.PbList<StringArrayCondition>();
  @$core.pragma('dart2js:noInline')
  static StringArrayCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringArrayCondition>(create);
  static StringArrayCondition _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get values => $_getList(1);

  @$pb.TagNumber(3)
  StringArrayCondition_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(StringArrayCondition_Type v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNegative => $_getBF(3);
  @$pb.TagNumber(4)
  set isNegative($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNegative() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNegative() => clearField(4);
}

class NumberArrayCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NumberArrayCondition',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..pPS(1, 'fieldPath')
    ..p<$core.double>(2, 'values', $pb.PbFieldType.PD)
    ..e<NumberArrayCondition_Type>(3, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: NumberArrayCondition_Type.IN,
        valueOf: NumberArrayCondition_Type.valueOf,
        enumValues: NumberArrayCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false;

  NumberArrayCondition._() : super();
  factory NumberArrayCondition() => create();
  factory NumberArrayCondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NumberArrayCondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NumberArrayCondition clone() =>
      NumberArrayCondition()..mergeFromMessage(this);
  NumberArrayCondition copyWith(void Function(NumberArrayCondition) updates) =>
      super.copyWith((message) => updates(message as NumberArrayCondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NumberArrayCondition create() => NumberArrayCondition._();
  NumberArrayCondition createEmptyInstance() => create();
  static $pb.PbList<NumberArrayCondition> createRepeated() =>
      $pb.PbList<NumberArrayCondition>();
  @$core.pragma('dart2js:noInline')
  static NumberArrayCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NumberArrayCondition>(create);
  static NumberArrayCondition _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPath => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get values => $_getList(1);

  @$pb.TagNumber(3)
  NumberArrayCondition_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(NumberArrayCondition_Type v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNegative => $_getBF(3);
  @$pb.TagNumber(4)
  set isNegative($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNegative() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNegative() => clearField(4);
}

class Pagination extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pagination',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..aOS(1, 'pageToken')
    ..a<$core.int>(2, 'offset', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Pagination._() : super();
  factory Pagination() => create();
  factory Pagination.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Pagination.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Pagination clone() => Pagination()..mergeFromMessage(this);
  Pagination copyWith(void Function(Pagination) updates) =>
      super.copyWith((message) => updates(message as Pagination));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pagination create() => Pagination._();
  Pagination createEmptyInstance() => create();
  static $pb.PbList<Pagination> createRepeated() => $pb.PbList<Pagination>();
  @$core.pragma('dart2js:noInline')
  static Pagination getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Pagination>(create);
  static Pagination _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPageToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);
}

class PageInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PageInfo',
      package: const $pb.PackageName('infoblox.api'),
      createEmptyInstance: create)
    ..aOS(1, 'pageToken')
    ..a<$core.int>(2, 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  PageInfo._() : super();
  factory PageInfo() => create();
  factory PageInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PageInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PageInfo clone() => PageInfo()..mergeFromMessage(this);
  PageInfo copyWith(void Function(PageInfo) updates) =>
      super.copyWith((message) => updates(message as PageInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PageInfo create() => PageInfo._();
  PageInfo createEmptyInstance() => create();
  static $pb.PbList<PageInfo> createRepeated() => $pb.PbList<PageInfo>();
  @$core.pragma('dart2js:noInline')
  static PageInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageInfo>(create);
  static PageInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPageToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}
