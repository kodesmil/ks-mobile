///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/go-patient-registry/pkg/pb/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart'
    as $1;
import '../../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart'
    as $3;

import 'service.pbenum.dart';

export 'service.pbenum.dart';

class JournalSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalSubject',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'key')
    ..aOS(3, 'name')
    ..e<JournalSubject_Type>(4, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: JournalSubject_Type.ACTIVITY,
        valueOf: JournalSubject_Type.valueOf,
        enumValues: JournalSubject_Type.values)
    ..hasRequiredFields = false;

  JournalSubject._() : super();
  factory JournalSubject() => create();
  factory JournalSubject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JournalSubject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  JournalSubject clone() => JournalSubject()..mergeFromMessage(this);
  JournalSubject copyWith(void Function(JournalSubject) updates) =>
      super.copyWith((message) => updates(message as JournalSubject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JournalSubject create() => JournalSubject._();
  JournalSubject createEmptyInstance() => create();
  static $pb.PbList<JournalSubject> createRepeated() =>
      $pb.PbList<JournalSubject>();
  @$core.pragma('dart2js:noInline')
  static JournalSubject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JournalSubject>(create);
  static JournalSubject _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

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
  JournalSubject_Type get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(JournalSubject_Type v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class JournalEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JournalEntry',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..e<JournalEntry_Severity>(2, 'severity', $pb.PbFieldType.OE,
        defaultOrMaker: JournalEntry_Severity.NONE,
        valueOf: JournalEntry_Severity.valueOf,
        enumValues: JournalEntry_Severity.values)
    ..aOS(3, 'note')
    ..aOM<$2.Timestamp>(4, 'timestamp', subBuilder: $2.Timestamp.create)
    ..aInt64(5, 'journalSubjectId')
    ..hasRequiredFields = false;

  JournalEntry._() : super();
  factory JournalEntry() => create();
  factory JournalEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JournalEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  JournalEntry clone() => JournalEntry()..mergeFromMessage(this);
  JournalEntry copyWith(void Function(JournalEntry) updates) =>
      super.copyWith((message) => updates(message as JournalEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JournalEntry create() => JournalEntry._();
  JournalEntry createEmptyInstance() => create();
  static $pb.PbList<JournalEntry> createRepeated() =>
      $pb.PbList<JournalEntry>();
  @$core.pragma('dart2js:noInline')
  static JournalEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JournalEntry>(create);
  static JournalEntry _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  JournalEntry_Severity get severity => $_getN(1);
  @$pb.TagNumber(2)
  set severity(JournalEntry_Severity v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSeverity() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeverity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get note => $_getSZ(2);
  @$pb.TagNumber(3)
  set note($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNote() => $_has(2);
  @$pb.TagNumber(3)
  void clearNote() => clearField(3);

  @$pb.TagNumber(4)
  $2.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($2.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureTimestamp() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get journalSubjectId => $_getI64(4);
  @$pb.TagNumber(5)
  set journalSubjectId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasJournalSubjectId() => $_has(4);
  @$pb.TagNumber(5)
  void clearJournalSubjectId() => clearField(5);
}

class CreateJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateJournalEntryRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'payload', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  CreateJournalEntryRequest._() : super();
  factory CreateJournalEntryRequest() => create();
  factory CreateJournalEntryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateJournalEntryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateJournalEntryRequest clone() =>
      CreateJournalEntryRequest()..mergeFromMessage(this);
  CreateJournalEntryRequest copyWith(
          void Function(CreateJournalEntryRequest) updates) =>
      super
          .copyWith((message) => updates(message as CreateJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryRequest create() => CreateJournalEntryRequest._();
  CreateJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<CreateJournalEntryRequest> createRepeated() =>
      $pb.PbList<CreateJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateJournalEntryRequest>(create);
  static CreateJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(JournalEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensurePayload() => $_ensure(0);
}

class CreateJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateJournalEntryResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  CreateJournalEntryResponse._() : super();
  factory CreateJournalEntryResponse() => create();
  factory CreateJournalEntryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateJournalEntryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateJournalEntryResponse clone() =>
      CreateJournalEntryResponse()..mergeFromMessage(this);
  CreateJournalEntryResponse copyWith(
          void Function(CreateJournalEntryResponse) updates) =>
      super.copyWith(
          (message) => updates(message as CreateJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryResponse create() => CreateJournalEntryResponse._();
  CreateJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<CreateJournalEntryResponse> createRepeated() =>
      $pb.PbList<CreateJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateJournalEntryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateJournalEntryResponse>(create);
  static CreateJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class ReadJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJournalEntryRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadJournalEntryRequest._() : super();
  factory ReadJournalEntryRequest() => create();
  factory ReadJournalEntryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadJournalEntryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadJournalEntryRequest clone() =>
      ReadJournalEntryRequest()..mergeFromMessage(this);
  ReadJournalEntryRequest copyWith(
          void Function(ReadJournalEntryRequest) updates) =>
      super.copyWith((message) => updates(message as ReadJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryRequest create() => ReadJournalEntryRequest._();
  ReadJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ReadJournalEntryRequest> createRepeated() =>
      $pb.PbList<ReadJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadJournalEntryRequest>(create);
  static ReadJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJournalEntryResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  ReadJournalEntryResponse._() : super();
  factory ReadJournalEntryResponse() => create();
  factory ReadJournalEntryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadJournalEntryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadJournalEntryResponse clone() =>
      ReadJournalEntryResponse()..mergeFromMessage(this);
  ReadJournalEntryResponse copyWith(
          void Function(ReadJournalEntryResponse) updates) =>
      super.copyWith((message) => updates(message as ReadJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryResponse create() => ReadJournalEntryResponse._();
  ReadJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ReadJournalEntryResponse> createRepeated() =>
      $pb.PbList<ReadJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadJournalEntryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadJournalEntryResponse>(create);
  static ReadJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class UpdateJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateJournalEntryRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'payload', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  UpdateJournalEntryRequest._() : super();
  factory UpdateJournalEntryRequest() => create();
  factory UpdateJournalEntryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateJournalEntryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateJournalEntryRequest clone() =>
      UpdateJournalEntryRequest()..mergeFromMessage(this);
  UpdateJournalEntryRequest copyWith(
          void Function(UpdateJournalEntryRequest) updates) =>
      super
          .copyWith((message) => updates(message as UpdateJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryRequest create() => UpdateJournalEntryRequest._();
  UpdateJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateJournalEntryRequest> createRepeated() =>
      $pb.PbList<UpdateJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateJournalEntryRequest>(create);
  static UpdateJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(JournalEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensurePayload() => $_ensure(0);
}

class UpdateJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'UpdateJournalEntryResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<JournalEntry>(1, 'result', subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  UpdateJournalEntryResponse._() : super();
  factory UpdateJournalEntryResponse() => create();
  factory UpdateJournalEntryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateJournalEntryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateJournalEntryResponse clone() =>
      UpdateJournalEntryResponse()..mergeFromMessage(this);
  UpdateJournalEntryResponse copyWith(
          void Function(UpdateJournalEntryResponse) updates) =>
      super.copyWith(
          (message) => updates(message as UpdateJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryResponse create() => UpdateJournalEntryResponse._();
  UpdateJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateJournalEntryResponse> createRepeated() =>
      $pb.PbList<UpdateJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateJournalEntryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateJournalEntryResponse>(create);
  static UpdateJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  JournalEntry get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(JournalEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  JournalEntry ensureResult() => $_ensure(0);
}

class DeleteJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteJournalEntryRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteJournalEntryRequest._() : super();
  factory DeleteJournalEntryRequest() => create();
  factory DeleteJournalEntryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteJournalEntryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteJournalEntryRequest clone() =>
      DeleteJournalEntryRequest()..mergeFromMessage(this);
  DeleteJournalEntryRequest copyWith(
          void Function(DeleteJournalEntryRequest) updates) =>
      super
          .copyWith((message) => updates(message as DeleteJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryRequest create() => DeleteJournalEntryRequest._();
  DeleteJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteJournalEntryRequest> createRepeated() =>
      $pb.PbList<DeleteJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteJournalEntryRequest>(create);
  static DeleteJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DeleteJournalEntryResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteJournalEntryResponse._() : super();
  factory DeleteJournalEntryResponse() => create();
  factory DeleteJournalEntryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteJournalEntryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteJournalEntryResponse clone() =>
      DeleteJournalEntryResponse()..mergeFromMessage(this);
  DeleteJournalEntryResponse copyWith(
          void Function(DeleteJournalEntryResponse) updates) =>
      super.copyWith(
          (message) => updates(message as DeleteJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryResponse create() => DeleteJournalEntryResponse._();
  DeleteJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteJournalEntryResponse> createRepeated() =>
      $pb.PbList<DeleteJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteJournalEntryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteJournalEntryResponse>(create);
  static DeleteJournalEntryResponse _defaultInstance;
}

class ListJournalEntryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalEntryRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListJournalEntryRequest._() : super();
  factory ListJournalEntryRequest() => create();
  factory ListJournalEntryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListJournalEntryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListJournalEntryRequest clone() =>
      ListJournalEntryRequest()..mergeFromMessage(this);
  ListJournalEntryRequest copyWith(
          void Function(ListJournalEntryRequest) updates) =>
      super.copyWith((message) => updates(message as ListJournalEntryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryRequest create() => ListJournalEntryRequest._();
  ListJournalEntryRequest createEmptyInstance() => create();
  static $pb.PbList<ListJournalEntryRequest> createRepeated() =>
      $pb.PbList<ListJournalEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListJournalEntryRequest>(create);
  static ListJournalEntryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $3.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($3.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $3.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($3.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $3.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($3.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $3.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($3.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $3.Pagination ensurePaging() => $_ensure(3);
}

class ListJournalEntryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalEntryResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<JournalEntry>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: JournalEntry.create)
    ..hasRequiredFields = false;

  ListJournalEntryResponse._() : super();
  factory ListJournalEntryResponse() => create();
  factory ListJournalEntryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListJournalEntryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListJournalEntryResponse clone() =>
      ListJournalEntryResponse()..mergeFromMessage(this);
  ListJournalEntryResponse copyWith(
          void Function(ListJournalEntryResponse) updates) =>
      super.copyWith((message) => updates(message as ListJournalEntryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryResponse create() => ListJournalEntryResponse._();
  ListJournalEntryResponse createEmptyInstance() => create();
  static $pb.PbList<ListJournalEntryResponse> createRepeated() =>
      $pb.PbList<ListJournalEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListJournalEntryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListJournalEntryResponse>(create);
  static ListJournalEntryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<JournalEntry> get results => $_getList(0);
}

class ListJournalSubjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJournalSubjectRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListJournalSubjectRequest._() : super();
  factory ListJournalSubjectRequest() => create();
  factory ListJournalSubjectRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListJournalSubjectRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListJournalSubjectRequest clone() =>
      ListJournalSubjectRequest()..mergeFromMessage(this);
  ListJournalSubjectRequest copyWith(
          void Function(ListJournalSubjectRequest) updates) =>
      super
          .copyWith((message) => updates(message as ListJournalSubjectRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectRequest create() => ListJournalSubjectRequest._();
  ListJournalSubjectRequest createEmptyInstance() => create();
  static $pb.PbList<ListJournalSubjectRequest> createRepeated() =>
      $pb.PbList<ListJournalSubjectRequest>();
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListJournalSubjectRequest>(create);
  static ListJournalSubjectRequest _defaultInstance;

  @$pb.TagNumber(1)
  $3.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($3.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $3.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($3.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $3.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($3.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $3.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($3.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $3.Pagination ensurePaging() => $_ensure(3);
}

class ListJournalSubjectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ListJournalSubjectResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..pc<JournalSubject>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: JournalSubject.create)
    ..hasRequiredFields = false;

  ListJournalSubjectResponse._() : super();
  factory ListJournalSubjectResponse() => create();
  factory ListJournalSubjectResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListJournalSubjectResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListJournalSubjectResponse clone() =>
      ListJournalSubjectResponse()..mergeFromMessage(this);
  ListJournalSubjectResponse copyWith(
          void Function(ListJournalSubjectResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ListJournalSubjectResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectResponse create() => ListJournalSubjectResponse._();
  ListJournalSubjectResponse createEmptyInstance() => create();
  static $pb.PbList<ListJournalSubjectResponse> createRepeated() =>
      $pb.PbList<ListJournalSubjectResponse>();
  @$core.pragma('dart2js:noInline')
  static ListJournalSubjectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListJournalSubjectResponse>(create);
  static ListJournalSubjectResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<JournalSubject> get results => $_getList(0);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'notes')
    ..aOS(3, 'firstName')
    ..aOS(4, 'lastName')
    ..aOS(5, 'primaryEmail')
    ..pc<Group>(6, 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get primaryEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set primaryEmail($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPrimaryEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrimaryEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<Group> get groups => $_getList(5);
}

class CreateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  CreateProfileRequest._() : super();
  factory CreateProfileRequest() => create();
  factory CreateProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateProfileRequest clone() =>
      CreateProfileRequest()..mergeFromMessage(this);
  CreateProfileRequest copyWith(void Function(CreateProfileRequest) updates) =>
      super.copyWith((message) => updates(message as CreateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest create() => CreateProfileRequest._();
  CreateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProfileRequest> createRepeated() =>
      $pb.PbList<CreateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProfileRequest>(create);
  static CreateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class CreateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  CreateProfileResponse._() : super();
  factory CreateProfileResponse() => create();
  factory CreateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateProfileResponse clone() =>
      CreateProfileResponse()..mergeFromMessage(this);
  CreateProfileResponse copyWith(
          void Function(CreateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as CreateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse create() => CreateProfileResponse._();
  CreateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<CreateProfileResponse> createRepeated() =>
      $pb.PbList<CreateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProfileResponse>(create);
  static CreateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class ReadProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadProfileRequest._() : super();
  factory ReadProfileRequest() => create();
  factory ReadProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadProfileRequest clone() => ReadProfileRequest()..mergeFromMessage(this);
  ReadProfileRequest copyWith(void Function(ReadProfileRequest) updates) =>
      super.copyWith((message) => updates(message as ReadProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest create() => ReadProfileRequest._();
  ReadProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ReadProfileRequest> createRepeated() =>
      $pb.PbList<ReadProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadProfileRequest>(create);
  static ReadProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ReadProfileResponse._() : super();
  factory ReadProfileResponse() => create();
  factory ReadProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadProfileResponse clone() => ReadProfileResponse()..mergeFromMessage(this);
  ReadProfileResponse copyWith(void Function(ReadProfileResponse) updates) =>
      super.copyWith((message) => updates(message as ReadProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse create() => ReadProfileResponse._();
  ReadProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ReadProfileResponse> createRepeated() =>
      $pb.PbList<ReadProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadProfileResponse>(create);
  static ReadProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class UpdateProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'payload', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  UpdateProfileRequest._() : super();
  factory UpdateProfileRequest() => create();
  factory UpdateProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateProfileRequest clone() =>
      UpdateProfileRequest()..mergeFromMessage(this);
  UpdateProfileRequest copyWith(void Function(UpdateProfileRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest create() => UpdateProfileRequest._();
  UpdateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileRequest> createRepeated() =>
      $pb.PbList<UpdateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileRequest>(create);
  static UpdateProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  Profile get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensurePayload() => $_ensure(0);
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'result', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse() => create();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateProfileResponse clone() =>
      UpdateProfileResponse()..mergeFromMessage(this);
  UpdateProfileResponse copyWith(
          void Function(UpdateProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() =>
      $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse _defaultInstance;

  @$pb.TagNumber(1)
  Profile get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureResult() => $_ensure(0);
}

class DeleteProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteProfileRequest._() : super();
  factory DeleteProfileRequest() => create();
  factory DeleteProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteProfileRequest clone() =>
      DeleteProfileRequest()..mergeFromMessage(this);
  DeleteProfileRequest copyWith(void Function(DeleteProfileRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest create() => DeleteProfileRequest._();
  DeleteProfileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileRequest> createRepeated() =>
      $pb.PbList<DeleteProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProfileRequest>(create);
  static DeleteProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteProfileResponse._() : super();
  factory DeleteProfileResponse() => create();
  factory DeleteProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteProfileResponse clone() =>
      DeleteProfileResponse()..mergeFromMessage(this);
  DeleteProfileResponse copyWith(
          void Function(DeleteProfileResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse create() => DeleteProfileResponse._();
  DeleteProfileResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteProfileResponse> createRepeated() =>
      $pb.PbList<DeleteProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteProfileResponse>(create);
  static DeleteProfileResponse _defaultInstance;
}

class ListProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfileRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListProfileRequest._() : super();
  factory ListProfileRequest() => create();
  factory ListProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListProfileRequest clone() => ListProfileRequest()..mergeFromMessage(this);
  ListProfileRequest copyWith(void Function(ListProfileRequest) updates) =>
      super.copyWith((message) => updates(message as ListProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest create() => ListProfileRequest._();
  ListProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfileRequest> createRepeated() =>
      $pb.PbList<ListProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfileRequest>(create);
  static ListProfileRequest _defaultInstance;

  @$pb.TagNumber(1)
  $3.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($3.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $3.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($3.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $3.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($3.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $3.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($3.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $3.Pagination ensurePaging() => $_ensure(3);
}

class ListProfilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfilesResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Profile>(1, 'results', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ListProfilesResponse._() : super();
  factory ListProfilesResponse() => create();
  factory ListProfilesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfilesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListProfilesResponse clone() =>
      ListProfilesResponse()..mergeFromMessage(this);
  ListProfilesResponse copyWith(void Function(ListProfilesResponse) updates) =>
      super.copyWith((message) => updates(message as ListProfilesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfilesResponse create() => ListProfilesResponse._();
  ListProfilesResponse createEmptyInstance() => create();
  static $pb.PbList<ListProfilesResponse> createRepeated() =>
      $pb.PbList<ListProfilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListProfilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfilesResponse>(create);
  static ListProfilesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Profile> get results => $_getList(0);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Group',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'notes')
    ..aOM<$1.Identifier>(4, 'profileId', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Group clone() => Group()..mergeFromMessage(this);
  Group copyWith(void Function(Group) updates) =>
      super.copyWith((message) => updates(message as Group));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);

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
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $1.Identifier get profileId => $_getN(3);
  @$pb.TagNumber(4)
  set profileId($1.Identifier v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProfileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileId() => clearField(4);
  @$pb.TagNumber(4)
  $1.Identifier ensureProfileId() => $_ensure(3);
}

class CreateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false;

  CreateGroupRequest._() : super();
  factory CreateGroupRequest() => create();
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as CreateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest create() => CreateGroupRequest._();
  CreateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRequest> createRepeated() =>
      $pb.PbList<CreateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateGroupRequest>(create);
  static CreateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class CreateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  CreateGroupResponse._() : super();
  factory CreateGroupResponse() => create();
  factory CreateGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateGroupResponse clone() => CreateGroupResponse()..mergeFromMessage(this);
  CreateGroupResponse copyWith(void Function(CreateGroupResponse) updates) =>
      super.copyWith((message) => updates(message as CreateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse create() => CreateGroupResponse._();
  CreateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<CreateGroupResponse> createRepeated() =>
      $pb.PbList<CreateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateGroupResponse>(create);
  static CreateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class ReadGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadGroupRequest._() : super();
  factory ReadGroupRequest() => create();
  factory ReadGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadGroupRequest clone() => ReadGroupRequest()..mergeFromMessage(this);
  ReadGroupRequest copyWith(void Function(ReadGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ReadGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest create() => ReadGroupRequest._();
  ReadGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ReadGroupRequest> createRepeated() =>
      $pb.PbList<ReadGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadGroupRequest>(create);
  static ReadGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class ReadGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  ReadGroupResponse._() : super();
  factory ReadGroupResponse() => create();
  factory ReadGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadGroupResponse clone() => ReadGroupResponse()..mergeFromMessage(this);
  ReadGroupResponse copyWith(void Function(ReadGroupResponse) updates) =>
      super.copyWith((message) => updates(message as ReadGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse create() => ReadGroupResponse._();
  ReadGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ReadGroupResponse> createRepeated() =>
      $pb.PbList<ReadGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadGroupResponse>(create);
  static ReadGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class UpdateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'payload', subBuilder: Group.create)
    ..hasRequiredFields = false;

  UpdateGroupRequest._() : super();
  factory UpdateGroupRequest() => create();
  factory UpdateGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateGroupRequest clone() => UpdateGroupRequest()..mergeFromMessage(this);
  UpdateGroupRequest copyWith(void Function(UpdateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest create() => UpdateGroupRequest._();
  UpdateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupRequest> createRepeated() =>
      $pb.PbList<UpdateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateGroupRequest>(create);
  static UpdateGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Group ensurePayload() => $_ensure(0);
}

class UpdateGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Group>(1, 'result', subBuilder: Group.create)
    ..hasRequiredFields = false;

  UpdateGroupResponse._() : super();
  factory UpdateGroupResponse() => create();
  factory UpdateGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateGroupResponse clone() => UpdateGroupResponse()..mergeFromMessage(this);
  UpdateGroupResponse copyWith(void Function(UpdateGroupResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse create() => UpdateGroupResponse._();
  UpdateGroupResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupResponse> createRepeated() =>
      $pb.PbList<UpdateGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateGroupResponse>(create);
  static UpdateGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  Group get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Group v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureResult() => $_ensure(0);
}

class DeleteGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest() => create();
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest create() => DeleteGroupRequest._();
  DeleteGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRequest> createRepeated() =>
      $pb.PbList<DeleteGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteGroupRequest>(create);
  static DeleteGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.Identifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.Identifier ensureId() => $_ensure(0);
}

class DeleteGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteGroupResponse._() : super();
  factory DeleteGroupResponse() => create();
  factory DeleteGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteGroupResponse clone() => DeleteGroupResponse()..mergeFromMessage(this);
  DeleteGroupResponse copyWith(void Function(DeleteGroupResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse create() => DeleteGroupResponse._();
  DeleteGroupResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupResponse> createRepeated() =>
      $pb.PbList<DeleteGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteGroupResponse>(create);
  static DeleteGroupResponse _defaultInstance;
}

class ListGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListGroupRequest._() : super();
  factory ListGroupRequest() => create();
  factory ListGroupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListGroupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListGroupRequest clone() => ListGroupRequest()..mergeFromMessage(this);
  ListGroupRequest copyWith(void Function(ListGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ListGroupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest create() => ListGroupRequest._();
  ListGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ListGroupRequest> createRepeated() =>
      $pb.PbList<ListGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGroupRequest>(create);
  static ListGroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  $3.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($3.Filtering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $3.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($3.Sorting v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $3.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($3.FieldSelection v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $3.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($3.Pagination v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $3.Pagination ensurePaging() => $_ensure(3);
}

class ListGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListGroupResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Group>(1, 'results', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false;

  ListGroupResponse._() : super();
  factory ListGroupResponse() => create();
  factory ListGroupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListGroupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListGroupResponse clone() => ListGroupResponse()..mergeFromMessage(this);
  ListGroupResponse copyWith(void Function(ListGroupResponse) updates) =>
      super.copyWith((message) => updates(message as ListGroupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupResponse create() => ListGroupResponse._();
  ListGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ListGroupResponse> createRepeated() =>
      $pb.PbList<ListGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGroupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGroupResponse>(create);
  static ListGroupResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get results => $_getList(0);
}
