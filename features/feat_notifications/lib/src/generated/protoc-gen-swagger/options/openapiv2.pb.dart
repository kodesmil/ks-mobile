///
//  Generated code. Do not modify.
//  source: protoc-gen-swagger/options/openapiv2.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/struct.pb.dart' as $0;
import '../../google/protobuf/any.pb.dart' as $1;

import 'openapiv2.pbenum.dart';

export 'openapiv2.pbenum.dart';

class Swagger extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Swagger',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'swagger')
    ..aOM<Info>(2, 'info', subBuilder: Info.create)
    ..aOS(3, 'host')
    ..aOS(4, 'basePath')
    ..pc<Swagger_SwaggerScheme>(5, 'schemes', $pb.PbFieldType.PE,
        valueOf: Swagger_SwaggerScheme.valueOf,
        enumValues: Swagger_SwaggerScheme.values)
    ..pPS(6, 'consumes')
    ..pPS(7, 'produces')
    ..m<$core.String, Response>(10, 'responses',
        entryClassName: 'Swagger.ResponsesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Response.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..aOM<SecurityDefinitions>(11, 'securityDefinitions',
        subBuilder: SecurityDefinitions.create)
    ..pc<SecurityRequirement>(12, 'security', $pb.PbFieldType.PM,
        subBuilder: SecurityRequirement.create)
    ..aOM<ExternalDocumentation>(14, 'externalDocs',
        subBuilder: ExternalDocumentation.create)
    ..m<$core.String, $0.Value>(15, 'extensions',
        entryClassName: 'Swagger.ExtensionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  Swagger._() : super();
  factory Swagger() => create();
  factory Swagger.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Swagger.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Swagger clone() => Swagger()..mergeFromMessage(this);
  Swagger copyWith(void Function(Swagger) updates) =>
      super.copyWith((message) => updates(message as Swagger));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Swagger create() => Swagger._();
  Swagger createEmptyInstance() => create();
  static $pb.PbList<Swagger> createRepeated() => $pb.PbList<Swagger>();
  @$core.pragma('dart2js:noInline')
  static Swagger getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Swagger>(create);
  static Swagger _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get swagger => $_getSZ(0);
  @$pb.TagNumber(1)
  set swagger($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSwagger() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwagger() => clearField(1);

  @$pb.TagNumber(2)
  Info get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(Info v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  Info ensureInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get host => $_getSZ(2);
  @$pb.TagNumber(3)
  set host($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(3)
  void clearHost() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get basePath => $_getSZ(3);
  @$pb.TagNumber(4)
  set basePath($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBasePath() => $_has(3);
  @$pb.TagNumber(4)
  void clearBasePath() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Swagger_SwaggerScheme> get schemes => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get consumes => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get produces => $_getList(6);

  @$pb.TagNumber(10)
  $core.Map<$core.String, Response> get responses => $_getMap(7);

  @$pb.TagNumber(11)
  SecurityDefinitions get securityDefinitions => $_getN(8);
  @$pb.TagNumber(11)
  set securityDefinitions(SecurityDefinitions v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasSecurityDefinitions() => $_has(8);
  @$pb.TagNumber(11)
  void clearSecurityDefinitions() => clearField(11);
  @$pb.TagNumber(11)
  SecurityDefinitions ensureSecurityDefinitions() => $_ensure(8);

  @$pb.TagNumber(12)
  $core.List<SecurityRequirement> get security => $_getList(9);

  @$pb.TagNumber(14)
  ExternalDocumentation get externalDocs => $_getN(10);
  @$pb.TagNumber(14)
  set externalDocs(ExternalDocumentation v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasExternalDocs() => $_has(10);
  @$pb.TagNumber(14)
  void clearExternalDocs() => clearField(14);
  @$pb.TagNumber(14)
  ExternalDocumentation ensureExternalDocs() => $_ensure(10);

  @$pb.TagNumber(15)
  $core.Map<$core.String, $0.Value> get extensions => $_getMap(11);
}

class Operation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operation',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..pPS(1, 'tags')
    ..aOS(2, 'summary')
    ..aOS(3, 'description')
    ..aOM<ExternalDocumentation>(4, 'externalDocs',
        subBuilder: ExternalDocumentation.create)
    ..aOS(5, 'operationId')
    ..pPS(6, 'consumes')
    ..pPS(7, 'produces')
    ..m<$core.String, Response>(9, 'responses',
        entryClassName: 'Operation.ResponsesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Response.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..pPS(10, 'schemes')
    ..aOB(11, 'deprecated')
    ..pc<SecurityRequirement>(12, 'security', $pb.PbFieldType.PM,
        subBuilder: SecurityRequirement.create)
    ..m<$core.String, $0.Value>(13, 'extensions',
        entryClassName: 'Operation.ExtensionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  Operation._() : super();
  factory Operation() => create();
  factory Operation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Operation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Operation clone() => Operation()..mergeFromMessage(this);
  Operation copyWith(void Function(Operation) updates) =>
      super.copyWith((message) => updates(message as Operation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operation create() => Operation._();
  Operation createEmptyInstance() => create();
  static $pb.PbList<Operation> createRepeated() => $pb.PbList<Operation>();
  @$core.pragma('dart2js:noInline')
  static Operation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operation>(create);
  static Operation _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tags => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get summary => $_getSZ(1);
  @$pb.TagNumber(2)
  set summary($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  ExternalDocumentation get externalDocs => $_getN(3);
  @$pb.TagNumber(4)
  set externalDocs(ExternalDocumentation v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExternalDocs() => $_has(3);
  @$pb.TagNumber(4)
  void clearExternalDocs() => clearField(4);
  @$pb.TagNumber(4)
  ExternalDocumentation ensureExternalDocs() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get operationId => $_getSZ(4);
  @$pb.TagNumber(5)
  set operationId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOperationId() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperationId() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get consumes => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get produces => $_getList(6);

  @$pb.TagNumber(9)
  $core.Map<$core.String, Response> get responses => $_getMap(7);

  @$pb.TagNumber(10)
  $core.List<$core.String> get schemes => $_getList(8);

  @$pb.TagNumber(11)
  $core.bool get deprecated => $_getBF(9);
  @$pb.TagNumber(11)
  set deprecated($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeprecated() => $_has(9);
  @$pb.TagNumber(11)
  void clearDeprecated() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<SecurityRequirement> get security => $_getList(10);

  @$pb.TagNumber(13)
  $core.Map<$core.String, $0.Value> get extensions => $_getMap(11);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Response',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'description')
    ..aOM<Schema>(2, 'schema', subBuilder: Schema.create)
    ..m<$core.String, $core.String>(4, 'examples',
        entryClassName: 'Response.ExamplesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..m<$core.String, $0.Value>(5, 'extensions',
        entryClassName: 'Response.ExtensionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  Response._() : super();
  factory Response() => create();
  factory Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Response clone() => Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  Schema get schema => $_getN(1);
  @$pb.TagNumber(2)
  set schema(Schema v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);
  @$pb.TagNumber(2)
  Schema ensureSchema() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get examples => $_getMap(2);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $0.Value> get extensions => $_getMap(3);
}

class Info extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Info',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'description')
    ..aOS(3, 'termsOfService')
    ..aOM<Contact>(4, 'contact', subBuilder: Contact.create)
    ..aOM<License>(5, 'license', subBuilder: License.create)
    ..aOS(6, 'version')
    ..m<$core.String, $0.Value>(7, 'extensions',
        entryClassName: 'Info.ExtensionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  Info._() : super();
  factory Info() => create();
  factory Info.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Info.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Info clone() => Info()..mergeFromMessage(this);
  Info copyWith(void Function(Info) updates) =>
      super.copyWith((message) => updates(message as Info));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Info create() => Info._();
  Info createEmptyInstance() => create();
  static $pb.PbList<Info> createRepeated() => $pb.PbList<Info>();
  @$core.pragma('dart2js:noInline')
  static Info getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Info>(create);
  static Info _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get termsOfService => $_getSZ(2);
  @$pb.TagNumber(3)
  set termsOfService($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTermsOfService() => $_has(2);
  @$pb.TagNumber(3)
  void clearTermsOfService() => clearField(3);

  @$pb.TagNumber(4)
  Contact get contact => $_getN(3);
  @$pb.TagNumber(4)
  set contact(Contact v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContact() => $_has(3);
  @$pb.TagNumber(4)
  void clearContact() => clearField(4);
  @$pb.TagNumber(4)
  Contact ensureContact() => $_ensure(3);

  @$pb.TagNumber(5)
  License get license => $_getN(4);
  @$pb.TagNumber(5)
  set license(License v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLicense() => $_has(4);
  @$pb.TagNumber(5)
  void clearLicense() => clearField(5);
  @$pb.TagNumber(5)
  License ensureLicense() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get version => $_getSZ(5);
  @$pb.TagNumber(6)
  set version($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $0.Value> get extensions => $_getMap(6);
}

class Contact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Contact',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'url')
    ..aOS(3, 'email')
    ..hasRequiredFields = false;

  Contact._() : super();
  factory Contact() => create();
  factory Contact.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Contact clone() => Contact()..mergeFromMessage(this);
  Contact copyWith(void Function(Contact) updates) =>
      super.copyWith((message) => updates(message as Contact));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact _defaultInstance;

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
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);
}

class License extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('License',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'url')
    ..hasRequiredFields = false;

  License._() : super();
  factory License() => create();
  factory License.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory License.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  License clone() => License()..mergeFromMessage(this);
  License copyWith(void Function(License) updates) =>
      super.copyWith((message) => updates(message as License));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static License create() => License._();
  License createEmptyInstance() => create();
  static $pb.PbList<License> createRepeated() => $pb.PbList<License>();
  @$core.pragma('dart2js:noInline')
  static License getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<License>(create);
  static License _defaultInstance;

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
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

class ExternalDocumentation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExternalDocumentation',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(1, 'description')
    ..aOS(2, 'url')
    ..hasRequiredFields = false;

  ExternalDocumentation._() : super();
  factory ExternalDocumentation() => create();
  factory ExternalDocumentation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExternalDocumentation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExternalDocumentation clone() =>
      ExternalDocumentation()..mergeFromMessage(this);
  ExternalDocumentation copyWith(
          void Function(ExternalDocumentation) updates) =>
      super.copyWith((message) => updates(message as ExternalDocumentation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExternalDocumentation create() => ExternalDocumentation._();
  ExternalDocumentation createEmptyInstance() => create();
  static $pb.PbList<ExternalDocumentation> createRepeated() =>
      $pb.PbList<ExternalDocumentation>();
  @$core.pragma('dart2js:noInline')
  static ExternalDocumentation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExternalDocumentation>(create);
  static ExternalDocumentation _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

class Schema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Schema',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOM<JSONSchema>(1, 'jsonSchema', subBuilder: JSONSchema.create)
    ..aOS(2, 'discriminator')
    ..aOB(3, 'readOnly')
    ..aOM<ExternalDocumentation>(5, 'externalDocs',
        subBuilder: ExternalDocumentation.create)
    ..aOM<$1.Any>(6, 'example', subBuilder: $1.Any.create)
    ..hasRequiredFields = false;

  Schema._() : super();
  factory Schema() => create();
  factory Schema.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Schema.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Schema clone() => Schema()..mergeFromMessage(this);
  Schema copyWith(void Function(Schema) updates) =>
      super.copyWith((message) => updates(message as Schema));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Schema create() => Schema._();
  Schema createEmptyInstance() => create();
  static $pb.PbList<Schema> createRepeated() => $pb.PbList<Schema>();
  @$core.pragma('dart2js:noInline')
  static Schema getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Schema>(create);
  static Schema _defaultInstance;

  @$pb.TagNumber(1)
  JSONSchema get jsonSchema => $_getN(0);
  @$pb.TagNumber(1)
  set jsonSchema(JSONSchema v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJsonSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearJsonSchema() => clearField(1);
  @$pb.TagNumber(1)
  JSONSchema ensureJsonSchema() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get discriminator => $_getSZ(1);
  @$pb.TagNumber(2)
  set discriminator($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDiscriminator() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiscriminator() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get readOnly => $_getBF(2);
  @$pb.TagNumber(3)
  set readOnly($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReadOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadOnly() => clearField(3);

  @$pb.TagNumber(5)
  ExternalDocumentation get externalDocs => $_getN(3);
  @$pb.TagNumber(5)
  set externalDocs(ExternalDocumentation v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExternalDocs() => $_has(3);
  @$pb.TagNumber(5)
  void clearExternalDocs() => clearField(5);
  @$pb.TagNumber(5)
  ExternalDocumentation ensureExternalDocs() => $_ensure(3);

  @$pb.TagNumber(6)
  $1.Any get example => $_getN(4);
  @$pb.TagNumber(6)
  set example($1.Any v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExample() => $_has(4);
  @$pb.TagNumber(6)
  void clearExample() => clearField(6);
  @$pb.TagNumber(6)
  $1.Any ensureExample() => $_ensure(4);
}

class JSONSchema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JSONSchema',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(3, 'ref')
    ..aOS(5, 'title')
    ..aOS(6, 'description')
    ..aOS(7, 'default')
    ..aOB(8, 'readOnly')
    ..a<$core.double>(10, 'multipleOf', $pb.PbFieldType.OD)
    ..a<$core.double>(11, 'maximum', $pb.PbFieldType.OD)
    ..aOB(12, 'exclusiveMaximum')
    ..a<$core.double>(13, 'minimum', $pb.PbFieldType.OD)
    ..aOB(14, 'exclusiveMinimum')
    ..a<$fixnum.Int64>(15, 'maxLength', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(16, 'minLength', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(17, 'pattern')
    ..a<$fixnum.Int64>(20, 'maxItems', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(21, 'minItems', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(22, 'uniqueItems')
    ..a<$fixnum.Int64>(24, 'maxProperties', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(25, 'minProperties', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(26, 'required')
    ..pPS(34, 'array')
    ..pc<JSONSchema_JSONSchemaSimpleTypes>(35, 'type', $pb.PbFieldType.PE,
        valueOf: JSONSchema_JSONSchemaSimpleTypes.valueOf,
        enumValues: JSONSchema_JSONSchemaSimpleTypes.values)
    ..hasRequiredFields = false;

  JSONSchema._() : super();
  factory JSONSchema() => create();
  factory JSONSchema.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JSONSchema.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  JSONSchema clone() => JSONSchema()..mergeFromMessage(this);
  JSONSchema copyWith(void Function(JSONSchema) updates) =>
      super.copyWith((message) => updates(message as JSONSchema));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JSONSchema create() => JSONSchema._();
  JSONSchema createEmptyInstance() => create();
  static $pb.PbList<JSONSchema> createRepeated() => $pb.PbList<JSONSchema>();
  @$core.pragma('dart2js:noInline')
  static JSONSchema getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JSONSchema>(create);
  static JSONSchema _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(3)
  set ref($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(3)
  void clearRef() => clearField(3);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(5)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(6)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get default_7 => $_getSZ(3);
  @$pb.TagNumber(7)
  set default_7($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDefault_7() => $_has(3);
  @$pb.TagNumber(7)
  void clearDefault_7() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get readOnly => $_getBF(4);
  @$pb.TagNumber(8)
  set readOnly($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasReadOnly() => $_has(4);
  @$pb.TagNumber(8)
  void clearReadOnly() => clearField(8);

  @$pb.TagNumber(10)
  $core.double get multipleOf => $_getN(5);
  @$pb.TagNumber(10)
  set multipleOf($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasMultipleOf() => $_has(5);
  @$pb.TagNumber(10)
  void clearMultipleOf() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get maximum => $_getN(6);
  @$pb.TagNumber(11)
  set maximum($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasMaximum() => $_has(6);
  @$pb.TagNumber(11)
  void clearMaximum() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get exclusiveMaximum => $_getBF(7);
  @$pb.TagNumber(12)
  set exclusiveMaximum($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasExclusiveMaximum() => $_has(7);
  @$pb.TagNumber(12)
  void clearExclusiveMaximum() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get minimum => $_getN(8);
  @$pb.TagNumber(13)
  set minimum($core.double v) {
    $_setDouble(8, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasMinimum() => $_has(8);
  @$pb.TagNumber(13)
  void clearMinimum() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get exclusiveMinimum => $_getBF(9);
  @$pb.TagNumber(14)
  set exclusiveMinimum($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasExclusiveMinimum() => $_has(9);
  @$pb.TagNumber(14)
  void clearExclusiveMinimum() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get maxLength => $_getI64(10);
  @$pb.TagNumber(15)
  set maxLength($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasMaxLength() => $_has(10);
  @$pb.TagNumber(15)
  void clearMaxLength() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get minLength => $_getI64(11);
  @$pb.TagNumber(16)
  set minLength($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasMinLength() => $_has(11);
  @$pb.TagNumber(16)
  void clearMinLength() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get pattern => $_getSZ(12);
  @$pb.TagNumber(17)
  set pattern($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasPattern() => $_has(12);
  @$pb.TagNumber(17)
  void clearPattern() => clearField(17);

  @$pb.TagNumber(20)
  $fixnum.Int64 get maxItems => $_getI64(13);
  @$pb.TagNumber(20)
  set maxItems($fixnum.Int64 v) {
    $_setInt64(13, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasMaxItems() => $_has(13);
  @$pb.TagNumber(20)
  void clearMaxItems() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get minItems => $_getI64(14);
  @$pb.TagNumber(21)
  set minItems($fixnum.Int64 v) {
    $_setInt64(14, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasMinItems() => $_has(14);
  @$pb.TagNumber(21)
  void clearMinItems() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get uniqueItems => $_getBF(15);
  @$pb.TagNumber(22)
  set uniqueItems($core.bool v) {
    $_setBool(15, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasUniqueItems() => $_has(15);
  @$pb.TagNumber(22)
  void clearUniqueItems() => clearField(22);

  @$pb.TagNumber(24)
  $fixnum.Int64 get maxProperties => $_getI64(16);
  @$pb.TagNumber(24)
  set maxProperties($fixnum.Int64 v) {
    $_setInt64(16, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasMaxProperties() => $_has(16);
  @$pb.TagNumber(24)
  void clearMaxProperties() => clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get minProperties => $_getI64(17);
  @$pb.TagNumber(25)
  set minProperties($fixnum.Int64 v) {
    $_setInt64(17, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasMinProperties() => $_has(17);
  @$pb.TagNumber(25)
  void clearMinProperties() => clearField(25);

  @$pb.TagNumber(26)
  $core.List<$core.String> get required => $_getList(18);

  @$pb.TagNumber(34)
  $core.List<$core.String> get array => $_getList(19);

  @$pb.TagNumber(35)
  $core.List<JSONSchema_JSONSchemaSimpleTypes> get type => $_getList(20);
}

class Tag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tag',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..aOS(2, 'description')
    ..aOM<ExternalDocumentation>(3, 'externalDocs',
        subBuilder: ExternalDocumentation.create)
    ..hasRequiredFields = false;

  Tag._() : super();
  factory Tag() => create();
  factory Tag.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Tag.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Tag clone() => Tag()..mergeFromMessage(this);
  Tag copyWith(void Function(Tag) updates) =>
      super.copyWith((message) => updates(message as Tag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tag create() => Tag._();
  Tag createEmptyInstance() => create();
  static $pb.PbList<Tag> createRepeated() => $pb.PbList<Tag>();
  @$core.pragma('dart2js:noInline')
  static Tag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tag>(create);
  static Tag _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  ExternalDocumentation get externalDocs => $_getN(1);
  @$pb.TagNumber(3)
  set externalDocs(ExternalDocumentation v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExternalDocs() => $_has(1);
  @$pb.TagNumber(3)
  void clearExternalDocs() => clearField(3);
  @$pb.TagNumber(3)
  ExternalDocumentation ensureExternalDocs() => $_ensure(1);
}

class SecurityDefinitions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SecurityDefinitions',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..m<$core.String, SecurityScheme>(1, 'security',
        entryClassName: 'SecurityDefinitions.SecurityEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SecurityScheme.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  SecurityDefinitions._() : super();
  factory SecurityDefinitions() => create();
  factory SecurityDefinitions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecurityDefinitions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SecurityDefinitions clone() => SecurityDefinitions()..mergeFromMessage(this);
  SecurityDefinitions copyWith(void Function(SecurityDefinitions) updates) =>
      super.copyWith((message) => updates(message as SecurityDefinitions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecurityDefinitions create() => SecurityDefinitions._();
  SecurityDefinitions createEmptyInstance() => create();
  static $pb.PbList<SecurityDefinitions> createRepeated() =>
      $pb.PbList<SecurityDefinitions>();
  @$core.pragma('dart2js:noInline')
  static SecurityDefinitions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityDefinitions>(create);
  static SecurityDefinitions _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, SecurityScheme> get security => $_getMap(0);
}

class SecurityScheme extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SecurityScheme',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..e<SecurityScheme_Type>(1, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: SecurityScheme_Type.TYPE_INVALID,
        valueOf: SecurityScheme_Type.valueOf,
        enumValues: SecurityScheme_Type.values)
    ..aOS(2, 'description')
    ..aOS(3, 'name')
    ..e<SecurityScheme_In>(4, 'in', $pb.PbFieldType.OE,
        defaultOrMaker: SecurityScheme_In.IN_INVALID,
        valueOf: SecurityScheme_In.valueOf,
        enumValues: SecurityScheme_In.values)
    ..e<SecurityScheme_Flow>(5, 'flow', $pb.PbFieldType.OE,
        defaultOrMaker: SecurityScheme_Flow.FLOW_INVALID,
        valueOf: SecurityScheme_Flow.valueOf,
        enumValues: SecurityScheme_Flow.values)
    ..aOS(6, 'authorizationUrl')
    ..aOS(7, 'tokenUrl')
    ..aOM<Scopes>(8, 'scopes', subBuilder: Scopes.create)
    ..m<$core.String, $0.Value>(9, 'extensions',
        entryClassName: 'SecurityScheme.ExtensionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  SecurityScheme._() : super();
  factory SecurityScheme() => create();
  factory SecurityScheme.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecurityScheme.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SecurityScheme clone() => SecurityScheme()..mergeFromMessage(this);
  SecurityScheme copyWith(void Function(SecurityScheme) updates) =>
      super.copyWith((message) => updates(message as SecurityScheme));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecurityScheme create() => SecurityScheme._();
  SecurityScheme createEmptyInstance() => create();
  static $pb.PbList<SecurityScheme> createRepeated() =>
      $pb.PbList<SecurityScheme>();
  @$core.pragma('dart2js:noInline')
  static SecurityScheme getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityScheme>(create);
  static SecurityScheme _defaultInstance;

  @$pb.TagNumber(1)
  SecurityScheme_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SecurityScheme_Type v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  SecurityScheme_In get in_4 => $_getN(3);
  @$pb.TagNumber(4)
  set in_4(SecurityScheme_In v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIn_4() => $_has(3);
  @$pb.TagNumber(4)
  void clearIn_4() => clearField(4);

  @$pb.TagNumber(5)
  SecurityScheme_Flow get flow => $_getN(4);
  @$pb.TagNumber(5)
  set flow(SecurityScheme_Flow v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFlow() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlow() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get authorizationUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set authorizationUrl($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAuthorizationUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthorizationUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tokenUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set tokenUrl($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasTokenUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearTokenUrl() => clearField(7);

  @$pb.TagNumber(8)
  Scopes get scopes => $_getN(7);
  @$pb.TagNumber(8)
  set scopes(Scopes v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasScopes() => $_has(7);
  @$pb.TagNumber(8)
  void clearScopes() => clearField(8);
  @$pb.TagNumber(8)
  Scopes ensureScopes() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $0.Value> get extensions => $_getMap(8);
}

class SecurityRequirement_SecurityRequirementValue
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'SecurityRequirement.SecurityRequirementValue',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..pPS(1, 'scope')
    ..hasRequiredFields = false;

  SecurityRequirement_SecurityRequirementValue._() : super();
  factory SecurityRequirement_SecurityRequirementValue() => create();
  factory SecurityRequirement_SecurityRequirementValue.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecurityRequirement_SecurityRequirementValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SecurityRequirement_SecurityRequirementValue clone() =>
      SecurityRequirement_SecurityRequirementValue()..mergeFromMessage(this);
  SecurityRequirement_SecurityRequirementValue copyWith(
          void Function(SecurityRequirement_SecurityRequirementValue)
              updates) =>
      super.copyWith((message) =>
          updates(message as SecurityRequirement_SecurityRequirementValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecurityRequirement_SecurityRequirementValue create() =>
      SecurityRequirement_SecurityRequirementValue._();
  SecurityRequirement_SecurityRequirementValue createEmptyInstance() =>
      create();
  static $pb.PbList<SecurityRequirement_SecurityRequirementValue>
      createRepeated() =>
          $pb.PbList<SecurityRequirement_SecurityRequirementValue>();
  @$core.pragma('dart2js:noInline')
  static SecurityRequirement_SecurityRequirementValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SecurityRequirement_SecurityRequirementValue>(create);
  static SecurityRequirement_SecurityRequirementValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get scope => $_getList(0);
}

class SecurityRequirement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SecurityRequirement',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..m<$core.String, SecurityRequirement_SecurityRequirementValue>(
        1, 'securityRequirement',
        entryClassName: 'SecurityRequirement.SecurityRequirementEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SecurityRequirement_SecurityRequirementValue.create,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  SecurityRequirement._() : super();
  factory SecurityRequirement() => create();
  factory SecurityRequirement.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecurityRequirement.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SecurityRequirement clone() => SecurityRequirement()..mergeFromMessage(this);
  SecurityRequirement copyWith(void Function(SecurityRequirement) updates) =>
      super.copyWith((message) => updates(message as SecurityRequirement));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecurityRequirement create() => SecurityRequirement._();
  SecurityRequirement createEmptyInstance() => create();
  static $pb.PbList<SecurityRequirement> createRepeated() =>
      $pb.PbList<SecurityRequirement>();
  @$core.pragma('dart2js:noInline')
  static SecurityRequirement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecurityRequirement>(create);
  static SecurityRequirement _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, SecurityRequirement_SecurityRequirementValue>
      get securityRequirement => $_getMap(0);
}

class Scopes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Scopes',
      package: const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, 'scope',
        entryClassName: 'Scopes.ScopeEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName:
            const $pb.PackageName('grpc.gateway.protoc_gen_swagger.options'))
    ..hasRequiredFields = false;

  Scopes._() : super();
  factory Scopes() => create();
  factory Scopes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Scopes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Scopes clone() => Scopes()..mergeFromMessage(this);
  Scopes copyWith(void Function(Scopes) updates) =>
      super.copyWith((message) => updates(message as Scopes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Scopes create() => Scopes._();
  Scopes createEmptyInstance() => create();
  static $pb.PbList<Scopes> createRepeated() => $pb.PbList<Scopes>();
  @$core.pragma('dart2js:noInline')
  static Scopes getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scopes>(create);
  static Scopes _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get scope => $_getMap(0);
}
