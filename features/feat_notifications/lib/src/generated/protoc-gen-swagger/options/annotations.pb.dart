///
//  Generated code. Do not modify.
//  source: protoc-gen-swagger/options/annotations.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'openapiv2.pb.dart' as $0;

class Annotations {
  static final $pb.Extension openapiv2Swagger = $pb.Extension<$0.Swagger>(
      'google.protobuf.FileOptions',
      'openapiv2Swagger',
      1042,
      $pb.PbFieldType.OM,
      defaultOrMaker: $0.Swagger.getDefault,
      subBuilder: $0.Swagger.create);
  static final $pb.Extension openapiv2Operation = $pb.Extension<$0.Operation>(
      'google.protobuf.MethodOptions',
      'openapiv2Operation',
      1042,
      $pb.PbFieldType.OM,
      defaultOrMaker: $0.Operation.getDefault,
      subBuilder: $0.Operation.create);
  static final $pb.Extension openapiv2Schema = $pb.Extension<$0.Schema>(
      'google.protobuf.MessageOptions',
      'openapiv2Schema',
      1042,
      $pb.PbFieldType.OM,
      defaultOrMaker: $0.Schema.getDefault,
      subBuilder: $0.Schema.create);
  static final $pb.Extension openapiv2Tag = $pb.Extension<$0.Tag>(
      'google.protobuf.ServiceOptions',
      'openapiv2Tag',
      1042,
      $pb.PbFieldType.OM,
      defaultOrMaker: $0.Tag.getDefault,
      subBuilder: $0.Tag.create);
  static final $pb.Extension openapiv2Field = $pb.Extension<$0.JSONSchema>(
      'google.protobuf.FieldOptions',
      'openapiv2Field',
      1042,
      $pb.PbFieldType.OM,
      defaultOrMaker: $0.JSONSchema.getDefault,
      subBuilder: $0.JSONSchema.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(openapiv2Swagger);
    registry.add(openapiv2Operation);
    registry.add(openapiv2Schema);
    registry.add(openapiv2Tag);
    registry.add(openapiv2Field);
  }
}
