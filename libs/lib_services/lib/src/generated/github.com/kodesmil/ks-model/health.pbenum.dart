///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/health.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class HealthMenstruationDailyEntry_Type extends $pb.ProtobufEnum {
  static const HealthMenstruationDailyEntry_Type PERIOD = HealthMenstruationDailyEntry_Type._(0, 'PERIOD');
  static const HealthMenstruationDailyEntry_Type OVULATION = HealthMenstruationDailyEntry_Type._(1, 'OVULATION');

  static const $core.List<HealthMenstruationDailyEntry_Type> values = <HealthMenstruationDailyEntry_Type> [
    PERIOD,
    OVULATION,
  ];

  static final $core.Map<$core.int, HealthMenstruationDailyEntry_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HealthMenstruationDailyEntry_Type valueOf($core.int value) => _byValue[value];

  const HealthMenstruationDailyEntry_Type._($core.int v, $core.String n) : super(v, n);
}

