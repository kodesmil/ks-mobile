///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $8;
import '../../../google/protobuf/timestamp.pb.dart' as $10;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $9;

class NotificationSetting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationSetting', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(3, 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOB(4, 'enableNotifications')
    ..aOB(5, 'enableJournalReminder')
    ..aOS(6, 'cronJournalReminder')
    ..hasRequiredFields = false
  ;

  NotificationSetting._() : super();
  factory NotificationSetting() => create();
  factory NotificationSetting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationSetting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NotificationSetting clone() => NotificationSetting()..mergeFromMessage(this);
  NotificationSetting copyWith(void Function(NotificationSetting) updates) => super.copyWith((message) => updates(message as NotificationSetting));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationSetting create() => NotificationSetting._();
  NotificationSetting createEmptyInstance() => create();
  static $pb.PbList<NotificationSetting> createRepeated() => $pb.PbList<NotificationSetting>();
  @$core.pragma('dart2js:noInline')
  static NotificationSetting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationSetting>(create);
  static NotificationSetting _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get enableNotifications => $_getBF(3);
  @$pb.TagNumber(4)
  set enableNotifications($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnableNotifications() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableNotifications() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enableJournalReminder => $_getBF(4);
  @$pb.TagNumber(5)
  set enableJournalReminder($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnableJournalReminder() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnableJournalReminder() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get cronJournalReminder => $_getSZ(5);
  @$pb.TagNumber(6)
  set cronJournalReminder($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCronJournalReminder() => $_has(5);
  @$pb.TagNumber(6)
  void clearCronJournalReminder() => clearField(6);
}

class CreateNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateNotificationSettingRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'payload', subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  CreateNotificationSettingRequest._() : super();
  factory CreateNotificationSettingRequest() => create();
  factory CreateNotificationSettingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNotificationSettingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateNotificationSettingRequest clone() => CreateNotificationSettingRequest()..mergeFromMessage(this);
  CreateNotificationSettingRequest copyWith(void Function(CreateNotificationSettingRequest) updates) => super.copyWith((message) => updates(message as CreateNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingRequest create() => CreateNotificationSettingRequest._();
  CreateNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationSettingRequest> createRepeated() => $pb.PbList<CreateNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNotificationSettingRequest>(create);
  static CreateNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationSetting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensurePayload() => $_ensure(0);
}

class CreateNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateNotificationSettingResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result', subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  CreateNotificationSettingResponse._() : super();
  factory CreateNotificationSettingResponse() => create();
  factory CreateNotificationSettingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNotificationSettingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateNotificationSettingResponse clone() => CreateNotificationSettingResponse()..mergeFromMessage(this);
  CreateNotificationSettingResponse copyWith(void Function(CreateNotificationSettingResponse) updates) => super.copyWith((message) => updates(message as CreateNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingResponse create() => CreateNotificationSettingResponse._();
  CreateNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationSettingResponse> createRepeated() => $pb.PbList<CreateNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNotificationSettingResponse>(create);
  static CreateNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class ReadNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadNotificationSettingRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadNotificationSettingRequest._() : super();
  factory ReadNotificationSettingRequest() => create();
  factory ReadNotificationSettingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadNotificationSettingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadNotificationSettingRequest clone() => ReadNotificationSettingRequest()..mergeFromMessage(this);
  ReadNotificationSettingRequest copyWith(void Function(ReadNotificationSettingRequest) updates) => super.copyWith((message) => updates(message as ReadNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingRequest create() => ReadNotificationSettingRequest._();
  ReadNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<ReadNotificationSettingRequest> createRepeated() => $pb.PbList<ReadNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadNotificationSettingRequest>(create);
  static ReadNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);
}

class ReadNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadNotificationSettingResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result', subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  ReadNotificationSettingResponse._() : super();
  factory ReadNotificationSettingResponse() => create();
  factory ReadNotificationSettingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadNotificationSettingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadNotificationSettingResponse clone() => ReadNotificationSettingResponse()..mergeFromMessage(this);
  ReadNotificationSettingResponse copyWith(void Function(ReadNotificationSettingResponse) updates) => super.copyWith((message) => updates(message as ReadNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingResponse create() => ReadNotificationSettingResponse._();
  ReadNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<ReadNotificationSettingResponse> createRepeated() => $pb.PbList<ReadNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadNotificationSettingResponse>(create);
  static ReadNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class UpdateNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateNotificationSettingRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'payload', subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  UpdateNotificationSettingRequest._() : super();
  factory UpdateNotificationSettingRequest() => create();
  factory UpdateNotificationSettingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNotificationSettingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateNotificationSettingRequest clone() => UpdateNotificationSettingRequest()..mergeFromMessage(this);
  UpdateNotificationSettingRequest copyWith(void Function(UpdateNotificationSettingRequest) updates) => super.copyWith((message) => updates(message as UpdateNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingRequest create() => UpdateNotificationSettingRequest._();
  UpdateNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNotificationSettingRequest> createRepeated() => $pb.PbList<UpdateNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNotificationSettingRequest>(create);
  static UpdateNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationSetting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensurePayload() => $_ensure(0);
}

class UpdateNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateNotificationSettingResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result', subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  UpdateNotificationSettingResponse._() : super();
  factory UpdateNotificationSettingResponse() => create();
  factory UpdateNotificationSettingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNotificationSettingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateNotificationSettingResponse clone() => UpdateNotificationSettingResponse()..mergeFromMessage(this);
  UpdateNotificationSettingResponse copyWith(void Function(UpdateNotificationSettingResponse) updates) => super.copyWith((message) => updates(message as UpdateNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingResponse create() => UpdateNotificationSettingResponse._();
  UpdateNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateNotificationSettingResponse> createRepeated() => $pb.PbList<UpdateNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNotificationSettingResponse>(create);
  static UpdateNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class DeleteNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteNotificationSettingRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..hasRequiredFields = false
  ;

  DeleteNotificationSettingRequest._() : super();
  factory DeleteNotificationSettingRequest() => create();
  factory DeleteNotificationSettingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNotificationSettingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteNotificationSettingRequest clone() => DeleteNotificationSettingRequest()..mergeFromMessage(this);
  DeleteNotificationSettingRequest copyWith(void Function(DeleteNotificationSettingRequest) updates) => super.copyWith((message) => updates(message as DeleteNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingRequest create() => DeleteNotificationSettingRequest._();
  DeleteNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNotificationSettingRequest> createRepeated() => $pb.PbList<DeleteNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNotificationSettingRequest>(create);
  static DeleteNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);
}

class DeleteNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteNotificationSettingResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteNotificationSettingResponse._() : super();
  factory DeleteNotificationSettingResponse() => create();
  factory DeleteNotificationSettingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNotificationSettingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteNotificationSettingResponse clone() => DeleteNotificationSettingResponse()..mergeFromMessage(this);
  DeleteNotificationSettingResponse copyWith(void Function(DeleteNotificationSettingResponse) updates) => super.copyWith((message) => updates(message as DeleteNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingResponse create() => DeleteNotificationSettingResponse._();
  DeleteNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteNotificationSettingResponse> createRepeated() => $pb.PbList<DeleteNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNotificationSettingResponse>(create);
  static DeleteNotificationSettingResponse _defaultInstance;
}

class ListNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListNotificationSettingRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$9.Filtering>(1, 'filter', subBuilder: $9.Filtering.create)
    ..aOM<$9.Sorting>(2, 'orderBy', subBuilder: $9.Sorting.create)
    ..aOM<$9.FieldSelection>(3, 'fields', subBuilder: $9.FieldSelection.create)
    ..aOM<$9.Pagination>(4, 'paging', subBuilder: $9.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListNotificationSettingRequest._() : super();
  factory ListNotificationSettingRequest() => create();
  factory ListNotificationSettingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNotificationSettingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListNotificationSettingRequest clone() => ListNotificationSettingRequest()..mergeFromMessage(this);
  ListNotificationSettingRequest copyWith(void Function(ListNotificationSettingRequest) updates) => super.copyWith((message) => updates(message as ListNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingRequest create() => ListNotificationSettingRequest._();
  ListNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<ListNotificationSettingRequest> createRepeated() => $pb.PbList<ListNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNotificationSettingRequest>(create);
  static ListNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  $9.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($9.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $9.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($9.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $9.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($9.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $9.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $9.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($9.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $9.Pagination ensurePaging() => $_ensure(3);
}

class ListNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListNotificationSettingResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<NotificationSetting>(1, 'results', $pb.PbFieldType.PM, subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false
  ;

  ListNotificationSettingResponse._() : super();
  factory ListNotificationSettingResponse() => create();
  factory ListNotificationSettingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNotificationSettingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListNotificationSettingResponse clone() => ListNotificationSettingResponse()..mergeFromMessage(this);
  ListNotificationSettingResponse copyWith(void Function(ListNotificationSettingResponse) updates) => super.copyWith((message) => updates(message as ListNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingResponse create() => ListNotificationSettingResponse._();
  ListNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<ListNotificationSettingResponse> createRepeated() => $pb.PbList<ListNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNotificationSettingResponse>(create);
  static ListNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NotificationSetting> get results => $_getList(0);
}

class NotificationDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationDevice', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(3, 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOS(4, 'deviceToken')
    ..hasRequiredFields = false
  ;

  NotificationDevice._() : super();
  factory NotificationDevice() => create();
  factory NotificationDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NotificationDevice clone() => NotificationDevice()..mergeFromMessage(this);
  NotificationDevice copyWith(void Function(NotificationDevice) updates) => super.copyWith((message) => updates(message as NotificationDevice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationDevice create() => NotificationDevice._();
  NotificationDevice createEmptyInstance() => create();
  static $pb.PbList<NotificationDevice> createRepeated() => $pb.PbList<NotificationDevice>();
  @$core.pragma('dart2js:noInline')
  static NotificationDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationDevice>(create);
  static NotificationDevice _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $10.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get deviceToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviceToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceToken() => clearField(4);
}

class CreateNotificationDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateNotificationDeviceRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationDevice>(1, 'payload', subBuilder: NotificationDevice.create)
    ..hasRequiredFields = false
  ;

  CreateNotificationDeviceRequest._() : super();
  factory CreateNotificationDeviceRequest() => create();
  factory CreateNotificationDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNotificationDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateNotificationDeviceRequest clone() => CreateNotificationDeviceRequest()..mergeFromMessage(this);
  CreateNotificationDeviceRequest copyWith(void Function(CreateNotificationDeviceRequest) updates) => super.copyWith((message) => updates(message as CreateNotificationDeviceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceRequest create() => CreateNotificationDeviceRequest._();
  CreateNotificationDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationDeviceRequest> createRepeated() => $pb.PbList<CreateNotificationDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNotificationDeviceRequest>(create);
  static CreateNotificationDeviceRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationDevice get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationDevice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationDevice ensurePayload() => $_ensure(0);
}

class CreateNotificationDeviceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateNotificationDeviceResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<NotificationDevice>(1, 'result', subBuilder: NotificationDevice.create)
    ..hasRequiredFields = false
  ;

  CreateNotificationDeviceResponse._() : super();
  factory CreateNotificationDeviceResponse() => create();
  factory CreateNotificationDeviceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNotificationDeviceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateNotificationDeviceResponse clone() => CreateNotificationDeviceResponse()..mergeFromMessage(this);
  CreateNotificationDeviceResponse copyWith(void Function(CreateNotificationDeviceResponse) updates) => super.copyWith((message) => updates(message as CreateNotificationDeviceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceResponse create() => CreateNotificationDeviceResponse._();
  CreateNotificationDeviceResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationDeviceResponse> createRepeated() => $pb.PbList<CreateNotificationDeviceResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNotificationDeviceResponse>(create);
  static CreateNotificationDeviceResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationDevice get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationDevice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationDevice ensureResult() => $_ensure(0);
}

