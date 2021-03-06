///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/go-patient-registry/pkg/pb/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class JournalSubject_Type extends $pb.ProtobufEnum {
  static const JournalSubject_Type ACTIVITY =
      JournalSubject_Type._(0, 'ACTIVITY');
  static const JournalSubject_Type SYMPTOM =
      JournalSubject_Type._(1, 'SYMPTOM');

  static const $core.List<JournalSubject_Type> values = <JournalSubject_Type>[
    ACTIVITY,
    SYMPTOM,
  ];

  static final $core.Map<$core.int, JournalSubject_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static JournalSubject_Type valueOf($core.int value) => _byValue[value];

  const JournalSubject_Type._($core.int v, $core.String n) : super(v, n);
}

class JournalEntry_Severity extends $pb.ProtobufEnum {
  static const JournalEntry_Severity NONE = JournalEntry_Severity._(0, 'NONE');
  static const JournalEntry_Severity LOW = JournalEntry_Severity._(1, 'LOW');
  static const JournalEntry_Severity MID = JournalEntry_Severity._(2, 'MID');
  static const JournalEntry_Severity HIGH = JournalEntry_Severity._(3, 'HIGH');

  static const $core.List<JournalEntry_Severity> values =
      <JournalEntry_Severity>[
    NONE,
    LOW,
    MID,
    HIGH,
  ];

  static final $core.Map<$core.int, JournalEntry_Severity> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static JournalEntry_Severity valueOf($core.int value) => _byValue[value];

  const JournalEntry_Severity._($core.int v, $core.String n) : super(v, n);
}
