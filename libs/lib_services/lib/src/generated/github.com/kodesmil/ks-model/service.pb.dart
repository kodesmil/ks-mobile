///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $11;
import '../../infobloxopen/protoc-gen-gorm/types/types.pb.dart' as $8;
import 'profile.pb.dart' as $1;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $10;

import 'service.pbenum.dart';

export 'service.pbenum.dart';

class ServiceTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceTag', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, 'key')
    ..aOS(3, 'name')
    ..hasRequiredFields = false
  ;

  ServiceTag._() : super();
  factory ServiceTag() => create();
  factory ServiceTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceTag clone() => ServiceTag()..mergeFromMessage(this);
  ServiceTag copyWith(void Function(ServiceTag) updates) => super.copyWith((message) => updates(message as ServiceTag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceTag create() => ServiceTag._();
  ServiceTag createEmptyInstance() => create();
  static $pb.PbList<ServiceTag> createRepeated() => $pb.PbList<ServiceTag>();
  @$core.pragma('dart2js:noInline')
  static ServiceTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceTag>(create);
  static ServiceTag _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class Service extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Service', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOS(4, 'name')
    ..e<Service_Type>(5, 'type', $pb.PbFieldType.OE, defaultOrMaker: Service_Type.MEDICAL, valueOf: Service_Type.valueOf, enumValues: Service_Type.values)
    ..pc<ServiceTag>(6, 'tags', $pb.PbFieldType.PM, subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  Service._() : super();
  factory Service() => create();
  factory Service.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Service.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Service clone() => Service()..mergeFromMessage(this);
  Service copyWith(void Function(Service) updates) => super.copyWith((message) => updates(message as Service));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Service create() => Service._();
  Service createEmptyInstance() => create();
  static $pb.PbList<Service> createRepeated() => $pb.PbList<Service>();
  @$core.pragma('dart2js:noInline')
  static Service getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Service>(create);
  static Service _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  Service_Type get type => $_getN(4);
  @$pb.TagNumber(5)
  set type(Service_Type v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<ServiceTag> get tags => $_getList(5);
}

class ServiceOffer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceOffer', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..a<$core.double>(4, 'price', $pb.PbFieldType.OF)
    ..aOS(5, 'currency')
    ..aOM<Service>(6, 'service', subBuilder: Service.create)
    ..aOM<ServiceProvider>(7, 'provider', subBuilder: ServiceProvider.create)
    ..aOS(8, 'description')
    ..aOS(9, 'title')
    ..aOS(10, 'pictureUrl')
    ..hasRequiredFields = false
  ;

  ServiceOffer._() : super();
  factory ServiceOffer() => create();
  factory ServiceOffer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceOffer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceOffer clone() => ServiceOffer()..mergeFromMessage(this);
  ServiceOffer copyWith(void Function(ServiceOffer) updates) => super.copyWith((message) => updates(message as ServiceOffer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceOffer create() => ServiceOffer._();
  ServiceOffer createEmptyInstance() => create();
  static $pb.PbList<ServiceOffer> createRepeated() => $pb.PbList<ServiceOffer>();
  @$core.pragma('dart2js:noInline')
  static ServiceOffer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceOffer>(create);
  static ServiceOffer _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => clearField(5);

  @$pb.TagNumber(6)
  Service get service => $_getN(5);
  @$pb.TagNumber(6)
  set service(Service v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasService() => $_has(5);
  @$pb.TagNumber(6)
  void clearService() => clearField(6);
  @$pb.TagNumber(6)
  Service ensureService() => $_ensure(5);

  @$pb.TagNumber(7)
  ServiceProvider get provider => $_getN(6);
  @$pb.TagNumber(7)
  set provider(ServiceProvider v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => clearField(7);
  @$pb.TagNumber(7)
  ServiceProvider ensureProvider() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get title => $_getSZ(8);
  @$pb.TagNumber(9)
  set title($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTitle() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get pictureUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set pictureUrl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPictureUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearPictureUrl() => clearField(10);
}

class ServiceEmployment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceEmployment', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOS(4, 'firstName')
    ..aOS(5, 'lastName')
    ..aOS(6, 'email')
    ..aOS(7, 'phone')
    ..aOB(8, 'canBeContacted')
    ..aOM<$8.UUIDValue>(9, 'serviceProviderId', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ServiceEmployment._() : super();
  factory ServiceEmployment() => create();
  factory ServiceEmployment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceEmployment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceEmployment clone() => ServiceEmployment()..mergeFromMessage(this);
  ServiceEmployment copyWith(void Function(ServiceEmployment) updates) => super.copyWith((message) => updates(message as ServiceEmployment));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceEmployment create() => ServiceEmployment._();
  ServiceEmployment createEmptyInstance() => create();
  static $pb.PbList<ServiceEmployment> createRepeated() => $pb.PbList<ServiceEmployment>();
  @$core.pragma('dart2js:noInline')
  static ServiceEmployment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceEmployment>(create);
  static ServiceEmployment _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get firstName => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastName => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastName() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(6)
  set email($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(6);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get canBeContacted => $_getBF(7);
  @$pb.TagNumber(8)
  set canBeContacted($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCanBeContacted() => $_has(7);
  @$pb.TagNumber(8)
  void clearCanBeContacted() => clearField(8);

  @$pb.TagNumber(9)
  $8.UUIDValue get serviceProviderId => $_getN(8);
  @$pb.TagNumber(9)
  set serviceProviderId($8.UUIDValue v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasServiceProviderId() => $_has(8);
  @$pb.TagNumber(9)
  void clearServiceProviderId() => clearField(9);
  @$pb.TagNumber(9)
  $8.UUIDValue ensureServiceProviderId() => $_ensure(8);
}

class ServiceDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceDetails', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOS(4, 'name')
    ..aOS(5, 'address')
    ..aOS(6, 'phone')
    ..aOS(7, 'logoUrl')
    ..aOS(8, 'email')
    ..hasRequiredFields = false
  ;

  ServiceDetails._() : super();
  factory ServiceDetails() => create();
  factory ServiceDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceDetails clone() => ServiceDetails()..mergeFromMessage(this);
  ServiceDetails copyWith(void Function(ServiceDetails) updates) => super.copyWith((message) => updates(message as ServiceDetails));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceDetails create() => ServiceDetails._();
  ServiceDetails createEmptyInstance() => create();
  static $pb.PbList<ServiceDetails> createRepeated() => $pb.PbList<ServiceDetails>();
  @$core.pragma('dart2js:noInline')
  static ServiceDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceDetails>(create);
  static ServiceDetails _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get address => $_getSZ(4);
  @$pb.TagNumber(5)
  set address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get phone => $_getSZ(5);
  @$pb.TagNumber(6)
  set phone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhone() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhone() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get logoUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set logoUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLogoUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearLogoUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => clearField(8);
}

class ServiceApplication extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceApplication', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOM<ServiceProvider>(4, 'provider', subBuilder: ServiceProvider.create)
    ..pc<ServiceApplicationFile>(5, 'files', $pb.PbFieldType.PM, subBuilder: ServiceApplicationFile.create)
    ..aOM<$11.Timestamp>(6, 'appliedAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(7, 'approvedAt', subBuilder: $11.Timestamp.create)
    ..aOM<$1.Profile>(8, 'approvedBy', subBuilder: $1.Profile.create)
    ..hasRequiredFields = false
  ;

  ServiceApplication._() : super();
  factory ServiceApplication() => create();
  factory ServiceApplication.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceApplication.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceApplication clone() => ServiceApplication()..mergeFromMessage(this);
  ServiceApplication copyWith(void Function(ServiceApplication) updates) => super.copyWith((message) => updates(message as ServiceApplication));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceApplication create() => ServiceApplication._();
  ServiceApplication createEmptyInstance() => create();
  static $pb.PbList<ServiceApplication> createRepeated() => $pb.PbList<ServiceApplication>();
  @$core.pragma('dart2js:noInline')
  static ServiceApplication getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceApplication>(create);
  static ServiceApplication _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  ServiceProvider get provider => $_getN(3);
  @$pb.TagNumber(4)
  set provider(ServiceProvider v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProvider() => $_has(3);
  @$pb.TagNumber(4)
  void clearProvider() => clearField(4);
  @$pb.TagNumber(4)
  ServiceProvider ensureProvider() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<ServiceApplicationFile> get files => $_getList(4);

  @$pb.TagNumber(6)
  $11.Timestamp get appliedAt => $_getN(5);
  @$pb.TagNumber(6)
  set appliedAt($11.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppliedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppliedAt() => clearField(6);
  @$pb.TagNumber(6)
  $11.Timestamp ensureAppliedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $11.Timestamp get approvedAt => $_getN(6);
  @$pb.TagNumber(7)
  set approvedAt($11.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasApprovedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearApprovedAt() => clearField(7);
  @$pb.TagNumber(7)
  $11.Timestamp ensureApprovedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Profile get approvedBy => $_getN(7);
  @$pb.TagNumber(8)
  set approvedBy($1.Profile v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasApprovedBy() => $_has(7);
  @$pb.TagNumber(8)
  void clearApprovedBy() => clearField(8);
  @$pb.TagNumber(8)
  $1.Profile ensureApprovedBy() => $_ensure(7);
}

class ServiceApplicationFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceApplicationFile', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOS(4, 'url')
    ..hasRequiredFields = false
  ;

  ServiceApplicationFile._() : super();
  factory ServiceApplicationFile() => create();
  factory ServiceApplicationFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceApplicationFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceApplicationFile clone() => ServiceApplicationFile()..mergeFromMessage(this);
  ServiceApplicationFile copyWith(void Function(ServiceApplicationFile) updates) => super.copyWith((message) => updates(message as ServiceApplicationFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceApplicationFile create() => ServiceApplicationFile._();
  ServiceApplicationFile createEmptyInstance() => create();
  static $pb.PbList<ServiceApplicationFile> createRepeated() => $pb.PbList<ServiceApplicationFile>();
  @$core.pragma('dart2js:noInline')
  static ServiceApplicationFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceApplicationFile>(create);
  static ServiceApplicationFile _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get url => $_getSZ(3);
  @$pb.TagNumber(4)
  set url($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => clearField(4);
}

class ServiceProvider extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceProvider', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOM<ServiceDetails>(4, 'details', subBuilder: ServiceDetails.create)
    ..pc<ServiceOffer>(5, 'offers', $pb.PbFieldType.PM, subBuilder: ServiceOffer.create)
    ..pc<ServiceEmployment>(6, 'employments', $pb.PbFieldType.PM, subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  ServiceProvider._() : super();
  factory ServiceProvider() => create();
  factory ServiceProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceProvider clone() => ServiceProvider()..mergeFromMessage(this);
  ServiceProvider copyWith(void Function(ServiceProvider) updates) => super.copyWith((message) => updates(message as ServiceProvider));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceProvider create() => ServiceProvider._();
  ServiceProvider createEmptyInstance() => create();
  static $pb.PbList<ServiceProvider> createRepeated() => $pb.PbList<ServiceProvider>();
  @$core.pragma('dart2js:noInline')
  static ServiceProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceProvider>(create);
  static ServiceProvider _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  ServiceDetails get details => $_getN(3);
  @$pb.TagNumber(4)
  set details(ServiceDetails v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  ServiceDetails ensureDetails() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<ServiceOffer> get offers => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<ServiceEmployment> get employments => $_getList(5);
}

class ServiceSessionEvaluation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceSessionEvaluation', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOM<ServiceSession>(4, 'session', subBuilder: ServiceSession.create)
    ..aOS(5, 'comment')
    ..a<$core.double>(6, 'recommendationRate', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ServiceSessionEvaluation._() : super();
  factory ServiceSessionEvaluation() => create();
  factory ServiceSessionEvaluation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceSessionEvaluation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceSessionEvaluation clone() => ServiceSessionEvaluation()..mergeFromMessage(this);
  ServiceSessionEvaluation copyWith(void Function(ServiceSessionEvaluation) updates) => super.copyWith((message) => updates(message as ServiceSessionEvaluation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceSessionEvaluation create() => ServiceSessionEvaluation._();
  ServiceSessionEvaluation createEmptyInstance() => create();
  static $pb.PbList<ServiceSessionEvaluation> createRepeated() => $pb.PbList<ServiceSessionEvaluation>();
  @$core.pragma('dart2js:noInline')
  static ServiceSessionEvaluation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceSessionEvaluation>(create);
  static ServiceSessionEvaluation _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  ServiceSession get session => $_getN(3);
  @$pb.TagNumber(4)
  set session(ServiceSession v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => clearField(4);
  @$pb.TagNumber(4)
  ServiceSession ensureSession() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get recommendationRate => $_getN(5);
  @$pb.TagNumber(6)
  set recommendationRate($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRecommendationRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecommendationRate() => clearField(6);
}

class ServiceSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceSession', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(4, 'scheduledAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(5, 'finishedAt', subBuilder: $11.Timestamp.create)
    ..aOM<ServiceOffer>(6, 'offer', subBuilder: ServiceOffer.create)
    ..pc<ServiceSessionNote>(7, 'notes', $pb.PbFieldType.PM, subBuilder: ServiceSessionNote.create)
    ..aOM<ServiceSessionEvaluation>(8, 'evaluation', subBuilder: ServiceSessionEvaluation.create)
    ..hasRequiredFields = false
  ;

  ServiceSession._() : super();
  factory ServiceSession() => create();
  factory ServiceSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceSession clone() => ServiceSession()..mergeFromMessage(this);
  ServiceSession copyWith(void Function(ServiceSession) updates) => super.copyWith((message) => updates(message as ServiceSession));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceSession create() => ServiceSession._();
  ServiceSession createEmptyInstance() => create();
  static $pb.PbList<ServiceSession> createRepeated() => $pb.PbList<ServiceSession>();
  @$core.pragma('dart2js:noInline')
  static ServiceSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceSession>(create);
  static ServiceSession _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $11.Timestamp get scheduledAt => $_getN(3);
  @$pb.TagNumber(4)
  set scheduledAt($11.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScheduledAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearScheduledAt() => clearField(4);
  @$pb.TagNumber(4)
  $11.Timestamp ensureScheduledAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $11.Timestamp get finishedAt => $_getN(4);
  @$pb.TagNumber(5)
  set finishedAt($11.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFinishedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearFinishedAt() => clearField(5);
  @$pb.TagNumber(5)
  $11.Timestamp ensureFinishedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  ServiceOffer get offer => $_getN(5);
  @$pb.TagNumber(6)
  set offer(ServiceOffer v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOffer() => $_has(5);
  @$pb.TagNumber(6)
  void clearOffer() => clearField(6);
  @$pb.TagNumber(6)
  ServiceOffer ensureOffer() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<ServiceSessionNote> get notes => $_getList(6);

  @$pb.TagNumber(8)
  ServiceSessionEvaluation get evaluation => $_getN(7);
  @$pb.TagNumber(8)
  set evaluation(ServiceSessionEvaluation v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasEvaluation() => $_has(7);
  @$pb.TagNumber(8)
  void clearEvaluation() => clearField(8);
  @$pb.TagNumber(8)
  ServiceSessionEvaluation ensureEvaluation() => $_ensure(7);
}

class ServiceSessionNote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceSessionNote', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..aOM<$11.Timestamp>(2, 'createdAt', subBuilder: $11.Timestamp.create)
    ..aOM<$11.Timestamp>(3, 'updatedAt', subBuilder: $11.Timestamp.create)
    ..pc<ServiceSession>(4, 'session', $pb.PbFieldType.PM, subBuilder: ServiceSession.create)
    ..aOS(5, 'text')
    ..hasRequiredFields = false
  ;

  ServiceSessionNote._() : super();
  factory ServiceSessionNote() => create();
  factory ServiceSessionNote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceSessionNote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceSessionNote clone() => ServiceSessionNote()..mergeFromMessage(this);
  ServiceSessionNote copyWith(void Function(ServiceSessionNote) updates) => super.copyWith((message) => updates(message as ServiceSessionNote));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceSessionNote create() => ServiceSessionNote._();
  ServiceSessionNote createEmptyInstance() => create();
  static $pb.PbList<ServiceSessionNote> createRepeated() => $pb.PbList<ServiceSessionNote>();
  @$core.pragma('dart2js:noInline')
  static ServiceSessionNote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceSessionNote>(create);
  static ServiceSessionNote _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($11.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $11.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $11.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($11.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $11.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<ServiceSession> get session => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => clearField(5);
}

class CreateServiceSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceSessionRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceSession>(1, 'payload', subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  CreateServiceSessionRequest._() : super();
  factory CreateServiceSessionRequest() => create();
  factory CreateServiceSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceSessionRequest clone() => CreateServiceSessionRequest()..mergeFromMessage(this);
  CreateServiceSessionRequest copyWith(void Function(CreateServiceSessionRequest) updates) => super.copyWith((message) => updates(message as CreateServiceSessionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceSessionRequest create() => CreateServiceSessionRequest._();
  CreateServiceSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceSessionRequest> createRepeated() => $pb.PbList<CreateServiceSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceSessionRequest>(create);
  static CreateServiceSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceSession get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceSession ensurePayload() => $_ensure(0);
}

class CreateServiceSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceSessionResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceSession>(1, 'result', subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  CreateServiceSessionResponse._() : super();
  factory CreateServiceSessionResponse() => create();
  factory CreateServiceSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceSessionResponse clone() => CreateServiceSessionResponse()..mergeFromMessage(this);
  CreateServiceSessionResponse copyWith(void Function(CreateServiceSessionResponse) updates) => super.copyWith((message) => updates(message as CreateServiceSessionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceSessionResponse create() => CreateServiceSessionResponse._();
  CreateServiceSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceSessionResponse> createRepeated() => $pb.PbList<CreateServiceSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceSessionResponse>(create);
  static CreateServiceSessionResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceSession get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceSession ensureResult() => $_ensure(0);
}

class ReadServiceSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceSessionRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ReadServiceSessionRequest._() : super();
  factory ReadServiceSessionRequest() => create();
  factory ReadServiceSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceSessionRequest clone() => ReadServiceSessionRequest()..mergeFromMessage(this);
  ReadServiceSessionRequest copyWith(void Function(ReadServiceSessionRequest) updates) => super.copyWith((message) => updates(message as ReadServiceSessionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceSessionRequest create() => ReadServiceSessionRequest._();
  ReadServiceSessionRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceSessionRequest> createRepeated() => $pb.PbList<ReadServiceSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceSessionRequest>(create);
  static ReadServiceSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class ReadServiceSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceSessionResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceSession>(1, 'result', subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  ReadServiceSessionResponse._() : super();
  factory ReadServiceSessionResponse() => create();
  factory ReadServiceSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceSessionResponse clone() => ReadServiceSessionResponse()..mergeFromMessage(this);
  ReadServiceSessionResponse copyWith(void Function(ReadServiceSessionResponse) updates) => super.copyWith((message) => updates(message as ReadServiceSessionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceSessionResponse create() => ReadServiceSessionResponse._();
  ReadServiceSessionResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceSessionResponse> createRepeated() => $pb.PbList<ReadServiceSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceSessionResponse>(create);
  static ReadServiceSessionResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceSession get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceSession ensureResult() => $_ensure(0);
}

class UpdateServiceSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceSessionRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceSession>(1, 'payload', subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceSessionRequest._() : super();
  factory UpdateServiceSessionRequest() => create();
  factory UpdateServiceSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceSessionRequest clone() => UpdateServiceSessionRequest()..mergeFromMessage(this);
  UpdateServiceSessionRequest copyWith(void Function(UpdateServiceSessionRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceSessionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceSessionRequest create() => UpdateServiceSessionRequest._();
  UpdateServiceSessionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceSessionRequest> createRepeated() => $pb.PbList<UpdateServiceSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceSessionRequest>(create);
  static UpdateServiceSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceSession get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceSession ensurePayload() => $_ensure(0);
}

class UpdateServiceSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceSessionResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceSession>(1, 'result', subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceSessionResponse._() : super();
  factory UpdateServiceSessionResponse() => create();
  factory UpdateServiceSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceSessionResponse clone() => UpdateServiceSessionResponse()..mergeFromMessage(this);
  UpdateServiceSessionResponse copyWith(void Function(UpdateServiceSessionResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceSessionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceSessionResponse create() => UpdateServiceSessionResponse._();
  UpdateServiceSessionResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceSessionResponse> createRepeated() => $pb.PbList<UpdateServiceSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceSessionResponse>(create);
  static UpdateServiceSessionResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceSession get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceSession ensureResult() => $_ensure(0);
}

class DeleteServiceSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceSessionRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  DeleteServiceSessionRequest._() : super();
  factory DeleteServiceSessionRequest() => create();
  factory DeleteServiceSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceSessionRequest clone() => DeleteServiceSessionRequest()..mergeFromMessage(this);
  DeleteServiceSessionRequest copyWith(void Function(DeleteServiceSessionRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceSessionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceSessionRequest create() => DeleteServiceSessionRequest._();
  DeleteServiceSessionRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceSessionRequest> createRepeated() => $pb.PbList<DeleteServiceSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceSessionRequest>(create);
  static DeleteServiceSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class DeleteServiceSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceSessionResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceSessionResponse._() : super();
  factory DeleteServiceSessionResponse() => create();
  factory DeleteServiceSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceSessionResponse clone() => DeleteServiceSessionResponse()..mergeFromMessage(this);
  DeleteServiceSessionResponse copyWith(void Function(DeleteServiceSessionResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceSessionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceSessionResponse create() => DeleteServiceSessionResponse._();
  DeleteServiceSessionResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceSessionResponse> createRepeated() => $pb.PbList<DeleteServiceSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceSessionResponse>(create);
  static DeleteServiceSessionResponse _defaultInstance;
}

class ListServiceSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceSessionRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceSessionRequest._() : super();
  factory ListServiceSessionRequest() => create();
  factory ListServiceSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceSessionRequest clone() => ListServiceSessionRequest()..mergeFromMessage(this);
  ListServiceSessionRequest copyWith(void Function(ListServiceSessionRequest) updates) => super.copyWith((message) => updates(message as ListServiceSessionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceSessionRequest create() => ListServiceSessionRequest._();
  ListServiceSessionRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceSessionRequest> createRepeated() => $pb.PbList<ListServiceSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceSessionRequest>(create);
  static ListServiceSessionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceSessionResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceSession>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceSession.create)
    ..hasRequiredFields = false
  ;

  ListServiceSessionResponse._() : super();
  factory ListServiceSessionResponse() => create();
  factory ListServiceSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceSessionResponse clone() => ListServiceSessionResponse()..mergeFromMessage(this);
  ListServiceSessionResponse copyWith(void Function(ListServiceSessionResponse) updates) => super.copyWith((message) => updates(message as ListServiceSessionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceSessionResponse create() => ListServiceSessionResponse._();
  ListServiceSessionResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceSessionResponse> createRepeated() => $pb.PbList<ListServiceSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceSessionResponse>(create);
  static ListServiceSessionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceSession> get results => $_getList(0);
}

class CreateServiceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceProviderRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceProvider>(1, 'payload', subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  CreateServiceProviderRequest._() : super();
  factory CreateServiceProviderRequest() => create();
  factory CreateServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceProviderRequest clone() => CreateServiceProviderRequest()..mergeFromMessage(this);
  CreateServiceProviderRequest copyWith(void Function(CreateServiceProviderRequest) updates) => super.copyWith((message) => updates(message as CreateServiceProviderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceProviderRequest create() => CreateServiceProviderRequest._();
  CreateServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceProviderRequest> createRepeated() => $pb.PbList<CreateServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceProviderRequest>(create);
  static CreateServiceProviderRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceProvider get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceProvider ensurePayload() => $_ensure(0);
}

class CreateServiceProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceProviderResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceProvider>(1, 'result', subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  CreateServiceProviderResponse._() : super();
  factory CreateServiceProviderResponse() => create();
  factory CreateServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceProviderResponse clone() => CreateServiceProviderResponse()..mergeFromMessage(this);
  CreateServiceProviderResponse copyWith(void Function(CreateServiceProviderResponse) updates) => super.copyWith((message) => updates(message as CreateServiceProviderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceProviderResponse create() => CreateServiceProviderResponse._();
  CreateServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceProviderResponse> createRepeated() => $pb.PbList<CreateServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceProviderResponse>(create);
  static CreateServiceProviderResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceProvider get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceProvider ensureResult() => $_ensure(0);
}

class ReadServiceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceProviderRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ReadServiceProviderRequest._() : super();
  factory ReadServiceProviderRequest() => create();
  factory ReadServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceProviderRequest clone() => ReadServiceProviderRequest()..mergeFromMessage(this);
  ReadServiceProviderRequest copyWith(void Function(ReadServiceProviderRequest) updates) => super.copyWith((message) => updates(message as ReadServiceProviderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceProviderRequest create() => ReadServiceProviderRequest._();
  ReadServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceProviderRequest> createRepeated() => $pb.PbList<ReadServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceProviderRequest>(create);
  static ReadServiceProviderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class ReadServiceProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceProviderResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceProvider>(1, 'result', subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  ReadServiceProviderResponse._() : super();
  factory ReadServiceProviderResponse() => create();
  factory ReadServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceProviderResponse clone() => ReadServiceProviderResponse()..mergeFromMessage(this);
  ReadServiceProviderResponse copyWith(void Function(ReadServiceProviderResponse) updates) => super.copyWith((message) => updates(message as ReadServiceProviderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceProviderResponse create() => ReadServiceProviderResponse._();
  ReadServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceProviderResponse> createRepeated() => $pb.PbList<ReadServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceProviderResponse>(create);
  static ReadServiceProviderResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceProvider get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceProvider ensureResult() => $_ensure(0);
}

class UpdateServiceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceProviderRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceProvider>(1, 'payload', subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceProviderRequest._() : super();
  factory UpdateServiceProviderRequest() => create();
  factory UpdateServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceProviderRequest clone() => UpdateServiceProviderRequest()..mergeFromMessage(this);
  UpdateServiceProviderRequest copyWith(void Function(UpdateServiceProviderRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceProviderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceProviderRequest create() => UpdateServiceProviderRequest._();
  UpdateServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceProviderRequest> createRepeated() => $pb.PbList<UpdateServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceProviderRequest>(create);
  static UpdateServiceProviderRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceProvider get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceProvider ensurePayload() => $_ensure(0);
}

class UpdateServiceProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceProviderResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceProvider>(1, 'result', subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceProviderResponse._() : super();
  factory UpdateServiceProviderResponse() => create();
  factory UpdateServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceProviderResponse clone() => UpdateServiceProviderResponse()..mergeFromMessage(this);
  UpdateServiceProviderResponse copyWith(void Function(UpdateServiceProviderResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceProviderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceProviderResponse create() => UpdateServiceProviderResponse._();
  UpdateServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceProviderResponse> createRepeated() => $pb.PbList<UpdateServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceProviderResponse>(create);
  static UpdateServiceProviderResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceProvider get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceProvider ensureResult() => $_ensure(0);
}

class DeleteServiceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceProviderRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  DeleteServiceProviderRequest._() : super();
  factory DeleteServiceProviderRequest() => create();
  factory DeleteServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceProviderRequest clone() => DeleteServiceProviderRequest()..mergeFromMessage(this);
  DeleteServiceProviderRequest copyWith(void Function(DeleteServiceProviderRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceProviderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceProviderRequest create() => DeleteServiceProviderRequest._();
  DeleteServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceProviderRequest> createRepeated() => $pb.PbList<DeleteServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceProviderRequest>(create);
  static DeleteServiceProviderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class DeleteServiceProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceProviderResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceProviderResponse._() : super();
  factory DeleteServiceProviderResponse() => create();
  factory DeleteServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceProviderResponse clone() => DeleteServiceProviderResponse()..mergeFromMessage(this);
  DeleteServiceProviderResponse copyWith(void Function(DeleteServiceProviderResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceProviderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceProviderResponse create() => DeleteServiceProviderResponse._();
  DeleteServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceProviderResponse> createRepeated() => $pb.PbList<DeleteServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceProviderResponse>(create);
  static DeleteServiceProviderResponse _defaultInstance;
}

class ListServiceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceProviderRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceProviderRequest._() : super();
  factory ListServiceProviderRequest() => create();
  factory ListServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceProviderRequest clone() => ListServiceProviderRequest()..mergeFromMessage(this);
  ListServiceProviderRequest copyWith(void Function(ListServiceProviderRequest) updates) => super.copyWith((message) => updates(message as ListServiceProviderRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceProviderRequest create() => ListServiceProviderRequest._();
  ListServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceProviderRequest> createRepeated() => $pb.PbList<ListServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceProviderRequest>(create);
  static ListServiceProviderRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceProviderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceProviderResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceProvider>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceProvider.create)
    ..hasRequiredFields = false
  ;

  ListServiceProviderResponse._() : super();
  factory ListServiceProviderResponse() => create();
  factory ListServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceProviderResponse clone() => ListServiceProviderResponse()..mergeFromMessage(this);
  ListServiceProviderResponse copyWith(void Function(ListServiceProviderResponse) updates) => super.copyWith((message) => updates(message as ListServiceProviderResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceProviderResponse create() => ListServiceProviderResponse._();
  ListServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceProviderResponse> createRepeated() => $pb.PbList<ListServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceProviderResponse>(create);
  static ListServiceProviderResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceProvider> get results => $_getList(0);
}

class CreateServiceApplicationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceApplicationRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplication>(1, 'payload', subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  CreateServiceApplicationRequest._() : super();
  factory CreateServiceApplicationRequest() => create();
  factory CreateServiceApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceApplicationRequest clone() => CreateServiceApplicationRequest()..mergeFromMessage(this);
  CreateServiceApplicationRequest copyWith(void Function(CreateServiceApplicationRequest) updates) => super.copyWith((message) => updates(message as CreateServiceApplicationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationRequest create() => CreateServiceApplicationRequest._();
  CreateServiceApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceApplicationRequest> createRepeated() => $pb.PbList<CreateServiceApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceApplicationRequest>(create);
  static CreateServiceApplicationRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplication get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceApplication v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplication ensurePayload() => $_ensure(0);
}

class CreateServiceApplicationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceApplicationResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplication>(1, 'result', subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  CreateServiceApplicationResponse._() : super();
  factory CreateServiceApplicationResponse() => create();
  factory CreateServiceApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceApplicationResponse clone() => CreateServiceApplicationResponse()..mergeFromMessage(this);
  CreateServiceApplicationResponse copyWith(void Function(CreateServiceApplicationResponse) updates) => super.copyWith((message) => updates(message as CreateServiceApplicationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationResponse create() => CreateServiceApplicationResponse._();
  CreateServiceApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceApplicationResponse> createRepeated() => $pb.PbList<CreateServiceApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceApplicationResponse>(create);
  static CreateServiceApplicationResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplication get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplication v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplication ensureResult() => $_ensure(0);
}

class ReadServiceApplicationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceApplicationRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ReadServiceApplicationRequest._() : super();
  factory ReadServiceApplicationRequest() => create();
  factory ReadServiceApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceApplicationRequest clone() => ReadServiceApplicationRequest()..mergeFromMessage(this);
  ReadServiceApplicationRequest copyWith(void Function(ReadServiceApplicationRequest) updates) => super.copyWith((message) => updates(message as ReadServiceApplicationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationRequest create() => ReadServiceApplicationRequest._();
  ReadServiceApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceApplicationRequest> createRepeated() => $pb.PbList<ReadServiceApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceApplicationRequest>(create);
  static ReadServiceApplicationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class ReadServiceApplicationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceApplicationResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplication>(1, 'result', subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  ReadServiceApplicationResponse._() : super();
  factory ReadServiceApplicationResponse() => create();
  factory ReadServiceApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceApplicationResponse clone() => ReadServiceApplicationResponse()..mergeFromMessage(this);
  ReadServiceApplicationResponse copyWith(void Function(ReadServiceApplicationResponse) updates) => super.copyWith((message) => updates(message as ReadServiceApplicationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationResponse create() => ReadServiceApplicationResponse._();
  ReadServiceApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceApplicationResponse> createRepeated() => $pb.PbList<ReadServiceApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceApplicationResponse>(create);
  static ReadServiceApplicationResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplication get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplication v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplication ensureResult() => $_ensure(0);
}

class UpdateServiceApplicationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceApplicationRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplication>(1, 'payload', subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceApplicationRequest._() : super();
  factory UpdateServiceApplicationRequest() => create();
  factory UpdateServiceApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceApplicationRequest clone() => UpdateServiceApplicationRequest()..mergeFromMessage(this);
  UpdateServiceApplicationRequest copyWith(void Function(UpdateServiceApplicationRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceApplicationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationRequest create() => UpdateServiceApplicationRequest._();
  UpdateServiceApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceApplicationRequest> createRepeated() => $pb.PbList<UpdateServiceApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceApplicationRequest>(create);
  static UpdateServiceApplicationRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplication get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceApplication v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplication ensurePayload() => $_ensure(0);
}

class UpdateServiceApplicationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceApplicationResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplication>(1, 'result', subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceApplicationResponse._() : super();
  factory UpdateServiceApplicationResponse() => create();
  factory UpdateServiceApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceApplicationResponse clone() => UpdateServiceApplicationResponse()..mergeFromMessage(this);
  UpdateServiceApplicationResponse copyWith(void Function(UpdateServiceApplicationResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceApplicationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationResponse create() => UpdateServiceApplicationResponse._();
  UpdateServiceApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceApplicationResponse> createRepeated() => $pb.PbList<UpdateServiceApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceApplicationResponse>(create);
  static UpdateServiceApplicationResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplication get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplication v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplication ensureResult() => $_ensure(0);
}

class DeleteServiceApplicationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceApplicationRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  DeleteServiceApplicationRequest._() : super();
  factory DeleteServiceApplicationRequest() => create();
  factory DeleteServiceApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceApplicationRequest clone() => DeleteServiceApplicationRequest()..mergeFromMessage(this);
  DeleteServiceApplicationRequest copyWith(void Function(DeleteServiceApplicationRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceApplicationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationRequest create() => DeleteServiceApplicationRequest._();
  DeleteServiceApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceApplicationRequest> createRepeated() => $pb.PbList<DeleteServiceApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceApplicationRequest>(create);
  static DeleteServiceApplicationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class DeleteServiceApplicationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceApplicationResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceApplicationResponse._() : super();
  factory DeleteServiceApplicationResponse() => create();
  factory DeleteServiceApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceApplicationResponse clone() => DeleteServiceApplicationResponse()..mergeFromMessage(this);
  DeleteServiceApplicationResponse copyWith(void Function(DeleteServiceApplicationResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceApplicationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationResponse create() => DeleteServiceApplicationResponse._();
  DeleteServiceApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceApplicationResponse> createRepeated() => $pb.PbList<DeleteServiceApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceApplicationResponse>(create);
  static DeleteServiceApplicationResponse _defaultInstance;
}

class ListServiceApplicationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceApplicationRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceApplicationRequest._() : super();
  factory ListServiceApplicationRequest() => create();
  factory ListServiceApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceApplicationRequest clone() => ListServiceApplicationRequest()..mergeFromMessage(this);
  ListServiceApplicationRequest copyWith(void Function(ListServiceApplicationRequest) updates) => super.copyWith((message) => updates(message as ListServiceApplicationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationRequest create() => ListServiceApplicationRequest._();
  ListServiceApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceApplicationRequest> createRepeated() => $pb.PbList<ListServiceApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceApplicationRequest>(create);
  static ListServiceApplicationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceApplicationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceApplicationResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceApplication>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceApplication.create)
    ..hasRequiredFields = false
  ;

  ListServiceApplicationResponse._() : super();
  factory ListServiceApplicationResponse() => create();
  factory ListServiceApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceApplicationResponse clone() => ListServiceApplicationResponse()..mergeFromMessage(this);
  ListServiceApplicationResponse copyWith(void Function(ListServiceApplicationResponse) updates) => super.copyWith((message) => updates(message as ListServiceApplicationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationResponse create() => ListServiceApplicationResponse._();
  ListServiceApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceApplicationResponse> createRepeated() => $pb.PbList<ListServiceApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceApplicationResponse>(create);
  static ListServiceApplicationResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceApplication> get results => $_getList(0);
}

class CreateServiceTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceTagRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceTag>(1, 'payload', subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  CreateServiceTagRequest._() : super();
  factory CreateServiceTagRequest() => create();
  factory CreateServiceTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceTagRequest clone() => CreateServiceTagRequest()..mergeFromMessage(this);
  CreateServiceTagRequest copyWith(void Function(CreateServiceTagRequest) updates) => super.copyWith((message) => updates(message as CreateServiceTagRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceTagRequest create() => CreateServiceTagRequest._();
  CreateServiceTagRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceTagRequest> createRepeated() => $pb.PbList<CreateServiceTagRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceTagRequest>(create);
  static CreateServiceTagRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceTag get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceTag ensurePayload() => $_ensure(0);
}

class CreateServiceTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceTagResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceTag>(1, 'result', subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  CreateServiceTagResponse._() : super();
  factory CreateServiceTagResponse() => create();
  factory CreateServiceTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceTagResponse clone() => CreateServiceTagResponse()..mergeFromMessage(this);
  CreateServiceTagResponse copyWith(void Function(CreateServiceTagResponse) updates) => super.copyWith((message) => updates(message as CreateServiceTagResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceTagResponse create() => CreateServiceTagResponse._();
  CreateServiceTagResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceTagResponse> createRepeated() => $pb.PbList<CreateServiceTagResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceTagResponse>(create);
  static CreateServiceTagResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceTag get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceTag ensureResult() => $_ensure(0);
}

class ReadServiceTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceTagRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ReadServiceTagRequest._() : super();
  factory ReadServiceTagRequest() => create();
  factory ReadServiceTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceTagRequest clone() => ReadServiceTagRequest()..mergeFromMessage(this);
  ReadServiceTagRequest copyWith(void Function(ReadServiceTagRequest) updates) => super.copyWith((message) => updates(message as ReadServiceTagRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceTagRequest create() => ReadServiceTagRequest._();
  ReadServiceTagRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceTagRequest> createRepeated() => $pb.PbList<ReadServiceTagRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceTagRequest>(create);
  static ReadServiceTagRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReadServiceTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceTagResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceTag>(1, 'result', subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  ReadServiceTagResponse._() : super();
  factory ReadServiceTagResponse() => create();
  factory ReadServiceTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceTagResponse clone() => ReadServiceTagResponse()..mergeFromMessage(this);
  ReadServiceTagResponse copyWith(void Function(ReadServiceTagResponse) updates) => super.copyWith((message) => updates(message as ReadServiceTagResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceTagResponse create() => ReadServiceTagResponse._();
  ReadServiceTagResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceTagResponse> createRepeated() => $pb.PbList<ReadServiceTagResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceTagResponse>(create);
  static ReadServiceTagResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceTag get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceTag ensureResult() => $_ensure(0);
}

class UpdateServiceTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceTagRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceTag>(1, 'payload', subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceTagRequest._() : super();
  factory UpdateServiceTagRequest() => create();
  factory UpdateServiceTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceTagRequest clone() => UpdateServiceTagRequest()..mergeFromMessage(this);
  UpdateServiceTagRequest copyWith(void Function(UpdateServiceTagRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceTagRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceTagRequest create() => UpdateServiceTagRequest._();
  UpdateServiceTagRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceTagRequest> createRepeated() => $pb.PbList<UpdateServiceTagRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceTagRequest>(create);
  static UpdateServiceTagRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceTag get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceTag ensurePayload() => $_ensure(0);
}

class UpdateServiceTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceTagResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceTag>(1, 'result', subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceTagResponse._() : super();
  factory UpdateServiceTagResponse() => create();
  factory UpdateServiceTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceTagResponse clone() => UpdateServiceTagResponse()..mergeFromMessage(this);
  UpdateServiceTagResponse copyWith(void Function(UpdateServiceTagResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceTagResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceTagResponse create() => UpdateServiceTagResponse._();
  UpdateServiceTagResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceTagResponse> createRepeated() => $pb.PbList<UpdateServiceTagResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceTagResponse>(create);
  static UpdateServiceTagResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceTag get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceTag v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceTag ensureResult() => $_ensure(0);
}

class DeleteServiceTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceTagRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteServiceTagRequest._() : super();
  factory DeleteServiceTagRequest() => create();
  factory DeleteServiceTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceTagRequest clone() => DeleteServiceTagRequest()..mergeFromMessage(this);
  DeleteServiceTagRequest copyWith(void Function(DeleteServiceTagRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceTagRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceTagRequest create() => DeleteServiceTagRequest._();
  DeleteServiceTagRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceTagRequest> createRepeated() => $pb.PbList<DeleteServiceTagRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceTagRequest>(create);
  static DeleteServiceTagRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteServiceTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceTagResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceTagResponse._() : super();
  factory DeleteServiceTagResponse() => create();
  factory DeleteServiceTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceTagResponse clone() => DeleteServiceTagResponse()..mergeFromMessage(this);
  DeleteServiceTagResponse copyWith(void Function(DeleteServiceTagResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceTagResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceTagResponse create() => DeleteServiceTagResponse._();
  DeleteServiceTagResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceTagResponse> createRepeated() => $pb.PbList<DeleteServiceTagResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceTagResponse>(create);
  static DeleteServiceTagResponse _defaultInstance;
}

class ListServiceTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceTagRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceTagRequest._() : super();
  factory ListServiceTagRequest() => create();
  factory ListServiceTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceTagRequest clone() => ListServiceTagRequest()..mergeFromMessage(this);
  ListServiceTagRequest copyWith(void Function(ListServiceTagRequest) updates) => super.copyWith((message) => updates(message as ListServiceTagRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceTagRequest create() => ListServiceTagRequest._();
  ListServiceTagRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceTagRequest> createRepeated() => $pb.PbList<ListServiceTagRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceTagRequest>(create);
  static ListServiceTagRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceTagResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceTag>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceTag.create)
    ..hasRequiredFields = false
  ;

  ListServiceTagResponse._() : super();
  factory ListServiceTagResponse() => create();
  factory ListServiceTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceTagResponse clone() => ListServiceTagResponse()..mergeFromMessage(this);
  ListServiceTagResponse copyWith(void Function(ListServiceTagResponse) updates) => super.copyWith((message) => updates(message as ListServiceTagResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceTagResponse create() => ListServiceTagResponse._();
  ListServiceTagResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceTagResponse> createRepeated() => $pb.PbList<ListServiceTagResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceTagResponse>(create);
  static ListServiceTagResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceTag> get results => $_getList(0);
}

class CreateServiceApplicationFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceApplicationFileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplicationFile>(1, 'payload', subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  CreateServiceApplicationFileRequest._() : super();
  factory CreateServiceApplicationFileRequest() => create();
  factory CreateServiceApplicationFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceApplicationFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceApplicationFileRequest clone() => CreateServiceApplicationFileRequest()..mergeFromMessage(this);
  CreateServiceApplicationFileRequest copyWith(void Function(CreateServiceApplicationFileRequest) updates) => super.copyWith((message) => updates(message as CreateServiceApplicationFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationFileRequest create() => CreateServiceApplicationFileRequest._();
  CreateServiceApplicationFileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceApplicationFileRequest> createRepeated() => $pb.PbList<CreateServiceApplicationFileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceApplicationFileRequest>(create);
  static CreateServiceApplicationFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplicationFile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceApplicationFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplicationFile ensurePayload() => $_ensure(0);
}

class CreateServiceApplicationFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceApplicationFileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplicationFile>(1, 'result', subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  CreateServiceApplicationFileResponse._() : super();
  factory CreateServiceApplicationFileResponse() => create();
  factory CreateServiceApplicationFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceApplicationFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceApplicationFileResponse clone() => CreateServiceApplicationFileResponse()..mergeFromMessage(this);
  CreateServiceApplicationFileResponse copyWith(void Function(CreateServiceApplicationFileResponse) updates) => super.copyWith((message) => updates(message as CreateServiceApplicationFileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationFileResponse create() => CreateServiceApplicationFileResponse._();
  CreateServiceApplicationFileResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceApplicationFileResponse> createRepeated() => $pb.PbList<CreateServiceApplicationFileResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceApplicationFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceApplicationFileResponse>(create);
  static CreateServiceApplicationFileResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplicationFile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplicationFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplicationFile ensureResult() => $_ensure(0);
}

class ReadServiceApplicationFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceApplicationFileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ReadServiceApplicationFileRequest._() : super();
  factory ReadServiceApplicationFileRequest() => create();
  factory ReadServiceApplicationFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceApplicationFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceApplicationFileRequest clone() => ReadServiceApplicationFileRequest()..mergeFromMessage(this);
  ReadServiceApplicationFileRequest copyWith(void Function(ReadServiceApplicationFileRequest) updates) => super.copyWith((message) => updates(message as ReadServiceApplicationFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationFileRequest create() => ReadServiceApplicationFileRequest._();
  ReadServiceApplicationFileRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceApplicationFileRequest> createRepeated() => $pb.PbList<ReadServiceApplicationFileRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceApplicationFileRequest>(create);
  static ReadServiceApplicationFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class ReadServiceApplicationFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceApplicationFileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplicationFile>(1, 'result', subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  ReadServiceApplicationFileResponse._() : super();
  factory ReadServiceApplicationFileResponse() => create();
  factory ReadServiceApplicationFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceApplicationFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceApplicationFileResponse clone() => ReadServiceApplicationFileResponse()..mergeFromMessage(this);
  ReadServiceApplicationFileResponse copyWith(void Function(ReadServiceApplicationFileResponse) updates) => super.copyWith((message) => updates(message as ReadServiceApplicationFileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationFileResponse create() => ReadServiceApplicationFileResponse._();
  ReadServiceApplicationFileResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceApplicationFileResponse> createRepeated() => $pb.PbList<ReadServiceApplicationFileResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceApplicationFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceApplicationFileResponse>(create);
  static ReadServiceApplicationFileResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplicationFile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplicationFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplicationFile ensureResult() => $_ensure(0);
}

class UpdateServiceApplicationFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceApplicationFileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplicationFile>(1, 'payload', subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceApplicationFileRequest._() : super();
  factory UpdateServiceApplicationFileRequest() => create();
  factory UpdateServiceApplicationFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceApplicationFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceApplicationFileRequest clone() => UpdateServiceApplicationFileRequest()..mergeFromMessage(this);
  UpdateServiceApplicationFileRequest copyWith(void Function(UpdateServiceApplicationFileRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceApplicationFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationFileRequest create() => UpdateServiceApplicationFileRequest._();
  UpdateServiceApplicationFileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceApplicationFileRequest> createRepeated() => $pb.PbList<UpdateServiceApplicationFileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceApplicationFileRequest>(create);
  static UpdateServiceApplicationFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplicationFile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceApplicationFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplicationFile ensurePayload() => $_ensure(0);
}

class UpdateServiceApplicationFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceApplicationFileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceApplicationFile>(1, 'result', subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceApplicationFileResponse._() : super();
  factory UpdateServiceApplicationFileResponse() => create();
  factory UpdateServiceApplicationFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceApplicationFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceApplicationFileResponse clone() => UpdateServiceApplicationFileResponse()..mergeFromMessage(this);
  UpdateServiceApplicationFileResponse copyWith(void Function(UpdateServiceApplicationFileResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceApplicationFileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationFileResponse create() => UpdateServiceApplicationFileResponse._();
  UpdateServiceApplicationFileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceApplicationFileResponse> createRepeated() => $pb.PbList<UpdateServiceApplicationFileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceApplicationFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceApplicationFileResponse>(create);
  static UpdateServiceApplicationFileResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceApplicationFile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceApplicationFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceApplicationFile ensureResult() => $_ensure(0);
}

class DeleteServiceApplicationFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceApplicationFileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  DeleteServiceApplicationFileRequest._() : super();
  factory DeleteServiceApplicationFileRequest() => create();
  factory DeleteServiceApplicationFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceApplicationFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceApplicationFileRequest clone() => DeleteServiceApplicationFileRequest()..mergeFromMessage(this);
  DeleteServiceApplicationFileRequest copyWith(void Function(DeleteServiceApplicationFileRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceApplicationFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationFileRequest create() => DeleteServiceApplicationFileRequest._();
  DeleteServiceApplicationFileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceApplicationFileRequest> createRepeated() => $pb.PbList<DeleteServiceApplicationFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceApplicationFileRequest>(create);
  static DeleteServiceApplicationFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class DeleteServiceApplicationFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceApplicationFileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceApplicationFileResponse._() : super();
  factory DeleteServiceApplicationFileResponse() => create();
  factory DeleteServiceApplicationFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceApplicationFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceApplicationFileResponse clone() => DeleteServiceApplicationFileResponse()..mergeFromMessage(this);
  DeleteServiceApplicationFileResponse copyWith(void Function(DeleteServiceApplicationFileResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceApplicationFileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationFileResponse create() => DeleteServiceApplicationFileResponse._();
  DeleteServiceApplicationFileResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceApplicationFileResponse> createRepeated() => $pb.PbList<DeleteServiceApplicationFileResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceApplicationFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceApplicationFileResponse>(create);
  static DeleteServiceApplicationFileResponse _defaultInstance;
}

class ListServiceApplicationFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceApplicationFileRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceApplicationFileRequest._() : super();
  factory ListServiceApplicationFileRequest() => create();
  factory ListServiceApplicationFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceApplicationFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceApplicationFileRequest clone() => ListServiceApplicationFileRequest()..mergeFromMessage(this);
  ListServiceApplicationFileRequest copyWith(void Function(ListServiceApplicationFileRequest) updates) => super.copyWith((message) => updates(message as ListServiceApplicationFileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationFileRequest create() => ListServiceApplicationFileRequest._();
  ListServiceApplicationFileRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceApplicationFileRequest> createRepeated() => $pb.PbList<ListServiceApplicationFileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceApplicationFileRequest>(create);
  static ListServiceApplicationFileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceApplicationFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceApplicationFileResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceApplicationFile>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceApplicationFile.create)
    ..hasRequiredFields = false
  ;

  ListServiceApplicationFileResponse._() : super();
  factory ListServiceApplicationFileResponse() => create();
  factory ListServiceApplicationFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceApplicationFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceApplicationFileResponse clone() => ListServiceApplicationFileResponse()..mergeFromMessage(this);
  ListServiceApplicationFileResponse copyWith(void Function(ListServiceApplicationFileResponse) updates) => super.copyWith((message) => updates(message as ListServiceApplicationFileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationFileResponse create() => ListServiceApplicationFileResponse._();
  ListServiceApplicationFileResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceApplicationFileResponse> createRepeated() => $pb.PbList<ListServiceApplicationFileResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceApplicationFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceApplicationFileResponse>(create);
  static ListServiceApplicationFileResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceApplicationFile> get results => $_getList(0);
}

class CreateServiceOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceOfferRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceOffer>(1, 'payload', subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  CreateServiceOfferRequest._() : super();
  factory CreateServiceOfferRequest() => create();
  factory CreateServiceOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceOfferRequest clone() => CreateServiceOfferRequest()..mergeFromMessage(this);
  CreateServiceOfferRequest copyWith(void Function(CreateServiceOfferRequest) updates) => super.copyWith((message) => updates(message as CreateServiceOfferRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceOfferRequest create() => CreateServiceOfferRequest._();
  CreateServiceOfferRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceOfferRequest> createRepeated() => $pb.PbList<CreateServiceOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceOfferRequest>(create);
  static CreateServiceOfferRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceOffer get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceOffer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceOffer ensurePayload() => $_ensure(0);
}

class CreateServiceOfferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceOfferResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceOffer>(1, 'result', subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  CreateServiceOfferResponse._() : super();
  factory CreateServiceOfferResponse() => create();
  factory CreateServiceOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceOfferResponse clone() => CreateServiceOfferResponse()..mergeFromMessage(this);
  CreateServiceOfferResponse copyWith(void Function(CreateServiceOfferResponse) updates) => super.copyWith((message) => updates(message as CreateServiceOfferResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceOfferResponse create() => CreateServiceOfferResponse._();
  CreateServiceOfferResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceOfferResponse> createRepeated() => $pb.PbList<CreateServiceOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceOfferResponse>(create);
  static CreateServiceOfferResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceOffer get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceOffer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceOffer ensureResult() => $_ensure(0);
}

class ReadServiceOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceOfferRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  ReadServiceOfferRequest._() : super();
  factory ReadServiceOfferRequest() => create();
  factory ReadServiceOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceOfferRequest clone() => ReadServiceOfferRequest()..mergeFromMessage(this);
  ReadServiceOfferRequest copyWith(void Function(ReadServiceOfferRequest) updates) => super.copyWith((message) => updates(message as ReadServiceOfferRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceOfferRequest create() => ReadServiceOfferRequest._();
  ReadServiceOfferRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceOfferRequest> createRepeated() => $pb.PbList<ReadServiceOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceOfferRequest>(create);
  static ReadServiceOfferRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class ReadServiceOfferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceOfferResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceOffer>(1, 'result', subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  ReadServiceOfferResponse._() : super();
  factory ReadServiceOfferResponse() => create();
  factory ReadServiceOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceOfferResponse clone() => ReadServiceOfferResponse()..mergeFromMessage(this);
  ReadServiceOfferResponse copyWith(void Function(ReadServiceOfferResponse) updates) => super.copyWith((message) => updates(message as ReadServiceOfferResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceOfferResponse create() => ReadServiceOfferResponse._();
  ReadServiceOfferResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceOfferResponse> createRepeated() => $pb.PbList<ReadServiceOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceOfferResponse>(create);
  static ReadServiceOfferResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceOffer get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceOffer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceOffer ensureResult() => $_ensure(0);
}

class UpdateServiceOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceOfferRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceOffer>(1, 'payload', subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceOfferRequest._() : super();
  factory UpdateServiceOfferRequest() => create();
  factory UpdateServiceOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceOfferRequest clone() => UpdateServiceOfferRequest()..mergeFromMessage(this);
  UpdateServiceOfferRequest copyWith(void Function(UpdateServiceOfferRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceOfferRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceOfferRequest create() => UpdateServiceOfferRequest._();
  UpdateServiceOfferRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceOfferRequest> createRepeated() => $pb.PbList<UpdateServiceOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceOfferRequest>(create);
  static UpdateServiceOfferRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceOffer get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceOffer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceOffer ensurePayload() => $_ensure(0);
}

class UpdateServiceOfferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceOfferResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceOffer>(1, 'result', subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceOfferResponse._() : super();
  factory UpdateServiceOfferResponse() => create();
  factory UpdateServiceOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceOfferResponse clone() => UpdateServiceOfferResponse()..mergeFromMessage(this);
  UpdateServiceOfferResponse copyWith(void Function(UpdateServiceOfferResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceOfferResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceOfferResponse create() => UpdateServiceOfferResponse._();
  UpdateServiceOfferResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceOfferResponse> createRepeated() => $pb.PbList<UpdateServiceOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceOfferResponse>(create);
  static UpdateServiceOfferResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceOffer get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceOffer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceOffer ensureResult() => $_ensure(0);
}

class DeleteServiceOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceOfferRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.UUIDValue>(1, 'id', subBuilder: $8.UUIDValue.create)
    ..hasRequiredFields = false
  ;

  DeleteServiceOfferRequest._() : super();
  factory DeleteServiceOfferRequest() => create();
  factory DeleteServiceOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceOfferRequest clone() => DeleteServiceOfferRequest()..mergeFromMessage(this);
  DeleteServiceOfferRequest copyWith(void Function(DeleteServiceOfferRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceOfferRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceOfferRequest create() => DeleteServiceOfferRequest._();
  DeleteServiceOfferRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceOfferRequest> createRepeated() => $pb.PbList<DeleteServiceOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceOfferRequest>(create);
  static DeleteServiceOfferRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.UUIDValue get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.UUIDValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.UUIDValue ensureId() => $_ensure(0);
}

class DeleteServiceOfferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceOfferResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceOfferResponse._() : super();
  factory DeleteServiceOfferResponse() => create();
  factory DeleteServiceOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceOfferResponse clone() => DeleteServiceOfferResponse()..mergeFromMessage(this);
  DeleteServiceOfferResponse copyWith(void Function(DeleteServiceOfferResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceOfferResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceOfferResponse create() => DeleteServiceOfferResponse._();
  DeleteServiceOfferResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceOfferResponse> createRepeated() => $pb.PbList<DeleteServiceOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceOfferResponse>(create);
  static DeleteServiceOfferResponse _defaultInstance;
}

class ListServiceOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceOfferRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceOfferRequest._() : super();
  factory ListServiceOfferRequest() => create();
  factory ListServiceOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceOfferRequest clone() => ListServiceOfferRequest()..mergeFromMessage(this);
  ListServiceOfferRequest copyWith(void Function(ListServiceOfferRequest) updates) => super.copyWith((message) => updates(message as ListServiceOfferRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceOfferRequest create() => ListServiceOfferRequest._();
  ListServiceOfferRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceOfferRequest> createRepeated() => $pb.PbList<ListServiceOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceOfferRequest>(create);
  static ListServiceOfferRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceOfferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceOfferResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceOffer>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceOffer.create)
    ..hasRequiredFields = false
  ;

  ListServiceOfferResponse._() : super();
  factory ListServiceOfferResponse() => create();
  factory ListServiceOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceOfferResponse clone() => ListServiceOfferResponse()..mergeFromMessage(this);
  ListServiceOfferResponse copyWith(void Function(ListServiceOfferResponse) updates) => super.copyWith((message) => updates(message as ListServiceOfferResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceOfferResponse create() => ListServiceOfferResponse._();
  ListServiceOfferResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceOfferResponse> createRepeated() => $pb.PbList<ListServiceOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceOfferResponse>(create);
  static ListServiceOfferResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceOffer> get results => $_getList(0);
}

class CreateServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceDetails>(1, 'payload', subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  CreateServiceDetailsRequest._() : super();
  factory CreateServiceDetailsRequest() => create();
  factory CreateServiceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceDetailsRequest clone() => CreateServiceDetailsRequest()..mergeFromMessage(this);
  CreateServiceDetailsRequest copyWith(void Function(CreateServiceDetailsRequest) updates) => super.copyWith((message) => updates(message as CreateServiceDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceDetailsRequest create() => CreateServiceDetailsRequest._();
  CreateServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceDetailsRequest> createRepeated() => $pb.PbList<CreateServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceDetailsRequest>(create);
  static CreateServiceDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceDetails get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceDetails ensurePayload() => $_ensure(0);
}

class CreateServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceDetails>(1, 'result', subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  CreateServiceDetailsResponse._() : super();
  factory CreateServiceDetailsResponse() => create();
  factory CreateServiceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceDetailsResponse clone() => CreateServiceDetailsResponse()..mergeFromMessage(this);
  CreateServiceDetailsResponse copyWith(void Function(CreateServiceDetailsResponse) updates) => super.copyWith((message) => updates(message as CreateServiceDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceDetailsResponse create() => CreateServiceDetailsResponse._();
  CreateServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceDetailsResponse> createRepeated() => $pb.PbList<CreateServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceDetailsResponse>(create);
  static CreateServiceDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceDetails get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceDetails ensureResult() => $_ensure(0);
}

class ReadServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ReadServiceDetailsRequest._() : super();
  factory ReadServiceDetailsRequest() => create();
  factory ReadServiceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceDetailsRequest clone() => ReadServiceDetailsRequest()..mergeFromMessage(this);
  ReadServiceDetailsRequest copyWith(void Function(ReadServiceDetailsRequest) updates) => super.copyWith((message) => updates(message as ReadServiceDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceDetailsRequest create() => ReadServiceDetailsRequest._();
  ReadServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceDetailsRequest> createRepeated() => $pb.PbList<ReadServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceDetailsRequest>(create);
  static ReadServiceDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReadServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceDetails>(1, 'result', subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  ReadServiceDetailsResponse._() : super();
  factory ReadServiceDetailsResponse() => create();
  factory ReadServiceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceDetailsResponse clone() => ReadServiceDetailsResponse()..mergeFromMessage(this);
  ReadServiceDetailsResponse copyWith(void Function(ReadServiceDetailsResponse) updates) => super.copyWith((message) => updates(message as ReadServiceDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceDetailsResponse create() => ReadServiceDetailsResponse._();
  ReadServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceDetailsResponse> createRepeated() => $pb.PbList<ReadServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceDetailsResponse>(create);
  static ReadServiceDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceDetails get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceDetails ensureResult() => $_ensure(0);
}

class UpdateServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceDetails>(1, 'payload', subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceDetailsRequest._() : super();
  factory UpdateServiceDetailsRequest() => create();
  factory UpdateServiceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceDetailsRequest clone() => UpdateServiceDetailsRequest()..mergeFromMessage(this);
  UpdateServiceDetailsRequest copyWith(void Function(UpdateServiceDetailsRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceDetailsRequest create() => UpdateServiceDetailsRequest._();
  UpdateServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceDetailsRequest> createRepeated() => $pb.PbList<UpdateServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceDetailsRequest>(create);
  static UpdateServiceDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceDetails get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceDetails ensurePayload() => $_ensure(0);
}

class UpdateServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceDetails>(1, 'result', subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceDetailsResponse._() : super();
  factory UpdateServiceDetailsResponse() => create();
  factory UpdateServiceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceDetailsResponse clone() => UpdateServiceDetailsResponse()..mergeFromMessage(this);
  UpdateServiceDetailsResponse copyWith(void Function(UpdateServiceDetailsResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceDetailsResponse create() => UpdateServiceDetailsResponse._();
  UpdateServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceDetailsResponse> createRepeated() => $pb.PbList<UpdateServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceDetailsResponse>(create);
  static UpdateServiceDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceDetails get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceDetails ensureResult() => $_ensure(0);
}

class DeleteServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteServiceDetailsRequest._() : super();
  factory DeleteServiceDetailsRequest() => create();
  factory DeleteServiceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceDetailsRequest clone() => DeleteServiceDetailsRequest()..mergeFromMessage(this);
  DeleteServiceDetailsRequest copyWith(void Function(DeleteServiceDetailsRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceDetailsRequest create() => DeleteServiceDetailsRequest._();
  DeleteServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceDetailsRequest> createRepeated() => $pb.PbList<DeleteServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceDetailsRequest>(create);
  static DeleteServiceDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceDetailsResponse._() : super();
  factory DeleteServiceDetailsResponse() => create();
  factory DeleteServiceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceDetailsResponse clone() => DeleteServiceDetailsResponse()..mergeFromMessage(this);
  DeleteServiceDetailsResponse copyWith(void Function(DeleteServiceDetailsResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceDetailsResponse create() => DeleteServiceDetailsResponse._();
  DeleteServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceDetailsResponse> createRepeated() => $pb.PbList<DeleteServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceDetailsResponse>(create);
  static DeleteServiceDetailsResponse _defaultInstance;
}

class ListServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceDetailsRequest._() : super();
  factory ListServiceDetailsRequest() => create();
  factory ListServiceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceDetailsRequest clone() => ListServiceDetailsRequest()..mergeFromMessage(this);
  ListServiceDetailsRequest copyWith(void Function(ListServiceDetailsRequest) updates) => super.copyWith((message) => updates(message as ListServiceDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceDetailsRequest create() => ListServiceDetailsRequest._();
  ListServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceDetailsRequest> createRepeated() => $pb.PbList<ListServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceDetailsRequest>(create);
  static ListServiceDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceDetails>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceDetails.create)
    ..hasRequiredFields = false
  ;

  ListServiceDetailsResponse._() : super();
  factory ListServiceDetailsResponse() => create();
  factory ListServiceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceDetailsResponse clone() => ListServiceDetailsResponse()..mergeFromMessage(this);
  ListServiceDetailsResponse copyWith(void Function(ListServiceDetailsResponse) updates) => super.copyWith((message) => updates(message as ListServiceDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceDetailsResponse create() => ListServiceDetailsResponse._();
  ListServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceDetailsResponse> createRepeated() => $pb.PbList<ListServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceDetailsResponse>(create);
  static ListServiceDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceDetails> get results => $_getList(0);
}

class CreateServiceEmploymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceEmploymentRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceEmployment>(1, 'payload', subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  CreateServiceEmploymentRequest._() : super();
  factory CreateServiceEmploymentRequest() => create();
  factory CreateServiceEmploymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceEmploymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceEmploymentRequest clone() => CreateServiceEmploymentRequest()..mergeFromMessage(this);
  CreateServiceEmploymentRequest copyWith(void Function(CreateServiceEmploymentRequest) updates) => super.copyWith((message) => updates(message as CreateServiceEmploymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceEmploymentRequest create() => CreateServiceEmploymentRequest._();
  CreateServiceEmploymentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceEmploymentRequest> createRepeated() => $pb.PbList<CreateServiceEmploymentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceEmploymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceEmploymentRequest>(create);
  static CreateServiceEmploymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceEmployment get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceEmployment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceEmployment ensurePayload() => $_ensure(0);
}

class CreateServiceEmploymentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceEmploymentResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceEmployment>(1, 'result', subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  CreateServiceEmploymentResponse._() : super();
  factory CreateServiceEmploymentResponse() => create();
  factory CreateServiceEmploymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceEmploymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceEmploymentResponse clone() => CreateServiceEmploymentResponse()..mergeFromMessage(this);
  CreateServiceEmploymentResponse copyWith(void Function(CreateServiceEmploymentResponse) updates) => super.copyWith((message) => updates(message as CreateServiceEmploymentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceEmploymentResponse create() => CreateServiceEmploymentResponse._();
  CreateServiceEmploymentResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceEmploymentResponse> createRepeated() => $pb.PbList<CreateServiceEmploymentResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceEmploymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceEmploymentResponse>(create);
  static CreateServiceEmploymentResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceEmployment get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceEmployment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceEmployment ensureResult() => $_ensure(0);
}

class ReadServiceEmploymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceEmploymentRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ReadServiceEmploymentRequest._() : super();
  factory ReadServiceEmploymentRequest() => create();
  factory ReadServiceEmploymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceEmploymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceEmploymentRequest clone() => ReadServiceEmploymentRequest()..mergeFromMessage(this);
  ReadServiceEmploymentRequest copyWith(void Function(ReadServiceEmploymentRequest) updates) => super.copyWith((message) => updates(message as ReadServiceEmploymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceEmploymentRequest create() => ReadServiceEmploymentRequest._();
  ReadServiceEmploymentRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceEmploymentRequest> createRepeated() => $pb.PbList<ReadServiceEmploymentRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceEmploymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceEmploymentRequest>(create);
  static ReadServiceEmploymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReadServiceEmploymentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceEmploymentResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceEmployment>(1, 'result', subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  ReadServiceEmploymentResponse._() : super();
  factory ReadServiceEmploymentResponse() => create();
  factory ReadServiceEmploymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceEmploymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceEmploymentResponse clone() => ReadServiceEmploymentResponse()..mergeFromMessage(this);
  ReadServiceEmploymentResponse copyWith(void Function(ReadServiceEmploymentResponse) updates) => super.copyWith((message) => updates(message as ReadServiceEmploymentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceEmploymentResponse create() => ReadServiceEmploymentResponse._();
  ReadServiceEmploymentResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceEmploymentResponse> createRepeated() => $pb.PbList<ReadServiceEmploymentResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceEmploymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceEmploymentResponse>(create);
  static ReadServiceEmploymentResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceEmployment get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceEmployment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceEmployment ensureResult() => $_ensure(0);
}

class UpdateServiceEmploymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceEmploymentRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceEmployment>(1, 'payload', subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceEmploymentRequest._() : super();
  factory UpdateServiceEmploymentRequest() => create();
  factory UpdateServiceEmploymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceEmploymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceEmploymentRequest clone() => UpdateServiceEmploymentRequest()..mergeFromMessage(this);
  UpdateServiceEmploymentRequest copyWith(void Function(UpdateServiceEmploymentRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceEmploymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceEmploymentRequest create() => UpdateServiceEmploymentRequest._();
  UpdateServiceEmploymentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceEmploymentRequest> createRepeated() => $pb.PbList<UpdateServiceEmploymentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceEmploymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceEmploymentRequest>(create);
  static UpdateServiceEmploymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  ServiceEmployment get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ServiceEmployment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ServiceEmployment ensurePayload() => $_ensure(0);
}

class UpdateServiceEmploymentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceEmploymentResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ServiceEmployment>(1, 'result', subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceEmploymentResponse._() : super();
  factory UpdateServiceEmploymentResponse() => create();
  factory UpdateServiceEmploymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceEmploymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceEmploymentResponse clone() => UpdateServiceEmploymentResponse()..mergeFromMessage(this);
  UpdateServiceEmploymentResponse copyWith(void Function(UpdateServiceEmploymentResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceEmploymentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceEmploymentResponse create() => UpdateServiceEmploymentResponse._();
  UpdateServiceEmploymentResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceEmploymentResponse> createRepeated() => $pb.PbList<UpdateServiceEmploymentResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceEmploymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceEmploymentResponse>(create);
  static UpdateServiceEmploymentResponse _defaultInstance;

  @$pb.TagNumber(1)
  ServiceEmployment get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ServiceEmployment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ServiceEmployment ensureResult() => $_ensure(0);
}

class DeleteServiceEmploymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceEmploymentRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteServiceEmploymentRequest._() : super();
  factory DeleteServiceEmploymentRequest() => create();
  factory DeleteServiceEmploymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceEmploymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceEmploymentRequest clone() => DeleteServiceEmploymentRequest()..mergeFromMessage(this);
  DeleteServiceEmploymentRequest copyWith(void Function(DeleteServiceEmploymentRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceEmploymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceEmploymentRequest create() => DeleteServiceEmploymentRequest._();
  DeleteServiceEmploymentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceEmploymentRequest> createRepeated() => $pb.PbList<DeleteServiceEmploymentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceEmploymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceEmploymentRequest>(create);
  static DeleteServiceEmploymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteServiceEmploymentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceEmploymentResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceEmploymentResponse._() : super();
  factory DeleteServiceEmploymentResponse() => create();
  factory DeleteServiceEmploymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceEmploymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceEmploymentResponse clone() => DeleteServiceEmploymentResponse()..mergeFromMessage(this);
  DeleteServiceEmploymentResponse copyWith(void Function(DeleteServiceEmploymentResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceEmploymentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceEmploymentResponse create() => DeleteServiceEmploymentResponse._();
  DeleteServiceEmploymentResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceEmploymentResponse> createRepeated() => $pb.PbList<DeleteServiceEmploymentResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceEmploymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceEmploymentResponse>(create);
  static DeleteServiceEmploymentResponse _defaultInstance;
}

class ListServiceEmploymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceEmploymentRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceEmploymentRequest._() : super();
  factory ListServiceEmploymentRequest() => create();
  factory ListServiceEmploymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceEmploymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceEmploymentRequest clone() => ListServiceEmploymentRequest()..mergeFromMessage(this);
  ListServiceEmploymentRequest copyWith(void Function(ListServiceEmploymentRequest) updates) => super.copyWith((message) => updates(message as ListServiceEmploymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceEmploymentRequest create() => ListServiceEmploymentRequest._();
  ListServiceEmploymentRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceEmploymentRequest> createRepeated() => $pb.PbList<ListServiceEmploymentRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceEmploymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceEmploymentRequest>(create);
  static ListServiceEmploymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceEmploymentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceEmploymentResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ServiceEmployment>(1, 'results', $pb.PbFieldType.PM, subBuilder: ServiceEmployment.create)
    ..hasRequiredFields = false
  ;

  ListServiceEmploymentResponse._() : super();
  factory ListServiceEmploymentResponse() => create();
  factory ListServiceEmploymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceEmploymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceEmploymentResponse clone() => ListServiceEmploymentResponse()..mergeFromMessage(this);
  ListServiceEmploymentResponse copyWith(void Function(ListServiceEmploymentResponse) updates) => super.copyWith((message) => updates(message as ListServiceEmploymentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceEmploymentResponse create() => ListServiceEmploymentResponse._();
  ListServiceEmploymentResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceEmploymentResponse> createRepeated() => $pb.PbList<ListServiceEmploymentResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceEmploymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceEmploymentResponse>(create);
  static ListServiceEmploymentResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceEmployment> get results => $_getList(0);
}

class CreateServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Service>(1, 'payload', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  CreateServiceRequest._() : super();
  factory CreateServiceRequest() => create();
  factory CreateServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceRequest clone() => CreateServiceRequest()..mergeFromMessage(this);
  CreateServiceRequest copyWith(void Function(CreateServiceRequest) updates) => super.copyWith((message) => updates(message as CreateServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceRequest create() => CreateServiceRequest._();
  CreateServiceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceRequest> createRepeated() => $pb.PbList<CreateServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceRequest>(create);
  static CreateServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  Service get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Service ensurePayload() => $_ensure(0);
}

class CreateServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateServiceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Service>(1, 'result', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  CreateServiceResponse._() : super();
  factory CreateServiceResponse() => create();
  factory CreateServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateServiceResponse clone() => CreateServiceResponse()..mergeFromMessage(this);
  CreateServiceResponse copyWith(void Function(CreateServiceResponse) updates) => super.copyWith((message) => updates(message as CreateServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateServiceResponse create() => CreateServiceResponse._();
  CreateServiceResponse createEmptyInstance() => create();
  static $pb.PbList<CreateServiceResponse> createRepeated() => $pb.PbList<CreateServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceResponse>(create);
  static CreateServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  Service get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Service ensureResult() => $_ensure(0);
}

class ReadServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ReadServiceRequest._() : super();
  factory ReadServiceRequest() => create();
  factory ReadServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceRequest clone() => ReadServiceRequest()..mergeFromMessage(this);
  ReadServiceRequest copyWith(void Function(ReadServiceRequest) updates) => super.copyWith((message) => updates(message as ReadServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceRequest create() => ReadServiceRequest._();
  ReadServiceRequest createEmptyInstance() => create();
  static $pb.PbList<ReadServiceRequest> createRepeated() => $pb.PbList<ReadServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceRequest>(create);
  static ReadServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReadServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadServiceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Service>(1, 'result', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  ReadServiceResponse._() : super();
  factory ReadServiceResponse() => create();
  factory ReadServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadServiceResponse clone() => ReadServiceResponse()..mergeFromMessage(this);
  ReadServiceResponse copyWith(void Function(ReadServiceResponse) updates) => super.copyWith((message) => updates(message as ReadServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadServiceResponse create() => ReadServiceResponse._();
  ReadServiceResponse createEmptyInstance() => create();
  static $pb.PbList<ReadServiceResponse> createRepeated() => $pb.PbList<ReadServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadServiceResponse>(create);
  static ReadServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  Service get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Service ensureResult() => $_ensure(0);
}

class UpdateServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Service>(1, 'payload', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceRequest._() : super();
  factory UpdateServiceRequest() => create();
  factory UpdateServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceRequest clone() => UpdateServiceRequest()..mergeFromMessage(this);
  UpdateServiceRequest copyWith(void Function(UpdateServiceRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceRequest create() => UpdateServiceRequest._();
  UpdateServiceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceRequest> createRepeated() => $pb.PbList<UpdateServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceRequest>(create);
  static UpdateServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  Service get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Service ensurePayload() => $_ensure(0);
}

class UpdateServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateServiceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Service>(1, 'result', subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  UpdateServiceResponse._() : super();
  factory UpdateServiceResponse() => create();
  factory UpdateServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateServiceResponse clone() => UpdateServiceResponse()..mergeFromMessage(this);
  UpdateServiceResponse copyWith(void Function(UpdateServiceResponse) updates) => super.copyWith((message) => updates(message as UpdateServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateServiceResponse create() => UpdateServiceResponse._();
  UpdateServiceResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceResponse> createRepeated() => $pb.PbList<UpdateServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceResponse>(create);
  static UpdateServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  Service get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Service v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Service ensureResult() => $_ensure(0);
}

class DeleteServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteServiceRequest._() : super();
  factory DeleteServiceRequest() => create();
  factory DeleteServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceRequest clone() => DeleteServiceRequest()..mergeFromMessage(this);
  DeleteServiceRequest copyWith(void Function(DeleteServiceRequest) updates) => super.copyWith((message) => updates(message as DeleteServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceRequest create() => DeleteServiceRequest._();
  DeleteServiceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceRequest> createRepeated() => $pb.PbList<DeleteServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceRequest>(create);
  static DeleteServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteServiceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteServiceResponse._() : super();
  factory DeleteServiceResponse() => create();
  factory DeleteServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteServiceResponse clone() => DeleteServiceResponse()..mergeFromMessage(this);
  DeleteServiceResponse copyWith(void Function(DeleteServiceResponse) updates) => super.copyWith((message) => updates(message as DeleteServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteServiceResponse create() => DeleteServiceResponse._();
  DeleteServiceResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteServiceResponse> createRepeated() => $pb.PbList<DeleteServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteServiceResponse>(create);
  static DeleteServiceResponse _defaultInstance;
}

class ListServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$10.Filtering>(1, 'filter', subBuilder: $10.Filtering.create)
    ..aOM<$10.Sorting>(2, 'orderBy', subBuilder: $10.Sorting.create)
    ..aOM<$10.FieldSelection>(3, 'fields', subBuilder: $10.FieldSelection.create)
    ..aOM<$10.Pagination>(4, 'paging', subBuilder: $10.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListServiceRequest._() : super();
  factory ListServiceRequest() => create();
  factory ListServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceRequest clone() => ListServiceRequest()..mergeFromMessage(this);
  ListServiceRequest copyWith(void Function(ListServiceRequest) updates) => super.copyWith((message) => updates(message as ListServiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceRequest create() => ListServiceRequest._();
  ListServiceRequest createEmptyInstance() => create();
  static $pb.PbList<ListServiceRequest> createRepeated() => $pb.PbList<ListServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ListServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceRequest>(create);
  static ListServiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $10.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($10.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $10.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($10.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $10.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($10.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $10.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($10.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $10.Pagination ensurePaging() => $_ensure(3);
}

class ListServiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListServiceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<Service>(1, 'results', $pb.PbFieldType.PM, subBuilder: Service.create)
    ..hasRequiredFields = false
  ;

  ListServiceResponse._() : super();
  factory ListServiceResponse() => create();
  factory ListServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListServiceResponse clone() => ListServiceResponse()..mergeFromMessage(this);
  ListServiceResponse copyWith(void Function(ListServiceResponse) updates) => super.copyWith((message) => updates(message as ListServiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListServiceResponse create() => ListServiceResponse._();
  ListServiceResponse createEmptyInstance() => create();
  static $pb.PbList<ListServiceResponse> createRepeated() => $pb.PbList<ListServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ListServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceResponse>(create);
  static ListServiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Service> get results => $_getList(0);
}

