///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Service_Type extends $pb.ProtobufEnum {
  static const Service_Type MEDICAL = Service_Type._(0, 'MEDICAL');
  static const Service_Type FITNESS = Service_Type._(1, 'FITNESS');

  static const $core.List<Service_Type> values = <Service_Type> [
    MEDICAL,
    FITNESS,
  ];

  static final $core.Map<$core.int, Service_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Service_Type valueOf($core.int value) => _byValue[value];

  const Service_Type._($core.int v, $core.String n) : super(v, n);
}

class ServiceSession_Status extends $pb.ProtobufEnum {
  static const ServiceSession_Status NOT_STARTED = ServiceSession_Status._(0, 'NOT_STARTED');
  static const ServiceSession_Status WAITING_FOR_ATTENDEES = ServiceSession_Status._(1, 'WAITING_FOR_ATTENDEES');
  static const ServiceSession_Status ONGOING = ServiceSession_Status._(2, 'ONGOING');
  static const ServiceSession_Status FINISHED = ServiceSession_Status._(3, 'FINISHED');

  static const $core.List<ServiceSession_Status> values = <ServiceSession_Status> [
    NOT_STARTED,
    WAITING_FOR_ATTENDEES,
    ONGOING,
    FINISHED,
  ];

  static final $core.Map<$core.int, ServiceSession_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServiceSession_Status valueOf($core.int value) => _byValue[value];

  const ServiceSession_Status._($core.int v, $core.String n) : super(v, n);
}

