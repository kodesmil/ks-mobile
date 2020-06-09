///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/period.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PeriodDailyEntry_Severity extends $pb.ProtobufEnum {
  static const PeriodDailyEntry_Severity NONE = PeriodDailyEntry_Severity._(0, 'NONE');
  static const PeriodDailyEntry_Severity LOW = PeriodDailyEntry_Severity._(1, 'LOW');
  static const PeriodDailyEntry_Severity MID = PeriodDailyEntry_Severity._(2, 'MID');
  static const PeriodDailyEntry_Severity HIGH = PeriodDailyEntry_Severity._(3, 'HIGH');

  static const $core.List<PeriodDailyEntry_Severity> values = <PeriodDailyEntry_Severity> [
    NONE,
    LOW,
    MID,
    HIGH,
  ];

  static final $core.Map<$core.int, PeriodDailyEntry_Severity> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeriodDailyEntry_Severity valueOf($core.int value) => _byValue[value];

  const PeriodDailyEntry_Severity._($core.int v, $core.String n) : super(v, n);
}

