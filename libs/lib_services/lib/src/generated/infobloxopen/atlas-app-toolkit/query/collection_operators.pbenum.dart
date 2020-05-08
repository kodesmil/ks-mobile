///
//  Generated code. Do not modify.
//  source: infobloxopen/atlas-app-toolkit/query/collection_operators.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SortCriteria_Order extends $pb.ProtobufEnum {
  static const SortCriteria_Order ASC = SortCriteria_Order._(0, 'ASC');
  static const SortCriteria_Order DESC = SortCriteria_Order._(1, 'DESC');

  static const $core.List<SortCriteria_Order> values = <SortCriteria_Order>[
    ASC,
    DESC,
  ];

  static final $core.Map<$core.int, SortCriteria_Order> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SortCriteria_Order valueOf($core.int value) => _byValue[value];

  const SortCriteria_Order._($core.int v, $core.String n) : super(v, n);
}

class LogicalOperator_Type extends $pb.ProtobufEnum {
  static const LogicalOperator_Type AND = LogicalOperator_Type._(0, 'AND');
  static const LogicalOperator_Type OR = LogicalOperator_Type._(1, 'OR');

  static const $core.List<LogicalOperator_Type> values = <LogicalOperator_Type>[
    AND,
    OR,
  ];

  static final $core.Map<$core.int, LogicalOperator_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static LogicalOperator_Type valueOf($core.int value) => _byValue[value];

  const LogicalOperator_Type._($core.int v, $core.String n) : super(v, n);
}

class StringCondition_Type extends $pb.ProtobufEnum {
  static const StringCondition_Type EQ = StringCondition_Type._(0, 'EQ');
  static const StringCondition_Type MATCH = StringCondition_Type._(1, 'MATCH');
  static const StringCondition_Type GT = StringCondition_Type._(2, 'GT');
  static const StringCondition_Type GE = StringCondition_Type._(3, 'GE');
  static const StringCondition_Type LT = StringCondition_Type._(4, 'LT');
  static const StringCondition_Type LE = StringCondition_Type._(5, 'LE');
  static const StringCondition_Type IEQ = StringCondition_Type._(6, 'IEQ');

  static const $core.List<StringCondition_Type> values = <StringCondition_Type>[
    EQ,
    MATCH,
    GT,
    GE,
    LT,
    LE,
    IEQ,
  ];

  static final $core.Map<$core.int, StringCondition_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StringCondition_Type valueOf($core.int value) => _byValue[value];

  const StringCondition_Type._($core.int v, $core.String n) : super(v, n);
}

class NumberCondition_Type extends $pb.ProtobufEnum {
  static const NumberCondition_Type EQ = NumberCondition_Type._(0, 'EQ');
  static const NumberCondition_Type GT = NumberCondition_Type._(1, 'GT');
  static const NumberCondition_Type GE = NumberCondition_Type._(2, 'GE');
  static const NumberCondition_Type LT = NumberCondition_Type._(3, 'LT');
  static const NumberCondition_Type LE = NumberCondition_Type._(4, 'LE');

  static const $core.List<NumberCondition_Type> values = <NumberCondition_Type>[
    EQ,
    GT,
    GE,
    LT,
    LE,
  ];

  static final $core.Map<$core.int, NumberCondition_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static NumberCondition_Type valueOf($core.int value) => _byValue[value];

  const NumberCondition_Type._($core.int v, $core.String n) : super(v, n);
}

class StringArrayCondition_Type extends $pb.ProtobufEnum {
  static const StringArrayCondition_Type IN =
      StringArrayCondition_Type._(0, 'IN');

  static const $core.List<StringArrayCondition_Type> values =
      <StringArrayCondition_Type>[
    IN,
  ];

  static final $core.Map<$core.int, StringArrayCondition_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StringArrayCondition_Type valueOf($core.int value) => _byValue[value];

  const StringArrayCondition_Type._($core.int v, $core.String n) : super(v, n);
}

class NumberArrayCondition_Type extends $pb.ProtobufEnum {
  static const NumberArrayCondition_Type IN =
      NumberArrayCondition_Type._(0, 'IN');

  static const $core.List<NumberArrayCondition_Type> values =
      <NumberArrayCondition_Type>[
    IN,
  ];

  static final $core.Map<$core.int, NumberArrayCondition_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static NumberArrayCondition_Type valueOf($core.int value) => _byValue[value];

  const NumberArrayCondition_Type._($core.int v, $core.String n) : super(v, n);
}
