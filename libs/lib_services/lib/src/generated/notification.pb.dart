///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

class Notification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Notification',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'content')
    ..aOS(4, 'userId')
    ..aOM<$1.Timestamp>(5, 'time', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  Notification._() : super();
  factory Notification() => create();
  factory Notification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Notification clone() => Notification()..mergeFromMessage(this);
  Notification copyWith(void Function(Notification) updates) =>
      super.copyWith((message) => updates(message as Notification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() =>
      $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get time => $_getN(4);
  @$pb.TagNumber(5)
  set time($1.Timestamp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureTime() => $_ensure(4);
}

class IDtoken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IDtoken',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false;

  IDtoken._() : super();
  factory IDtoken() => create();
  factory IDtoken.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IDtoken.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  IDtoken clone() => IDtoken()..mergeFromMessage(this);
  IDtoken copyWith(void Function(IDtoken) updates) =>
      super.copyWith((message) => updates(message as IDtoken));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IDtoken create() => IDtoken._();
  IDtoken createEmptyInstance() => create();
  static $pb.PbList<IDtoken> createRepeated() => $pb.PbList<IDtoken>();
  @$core.pragma('dart2js:noInline')
  static IDtoken getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IDtoken>(create);
  static IDtoken _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class NotificationCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationCreateRequest',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationCreateRequest._() : super();
  factory NotificationCreateRequest() => create();
  factory NotificationCreateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationCreateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationCreateRequest clone() =>
      NotificationCreateRequest()..mergeFromMessage(this);
  NotificationCreateRequest copyWith(
          void Function(NotificationCreateRequest) updates) =>
      super
          .copyWith((message) => updates(message as NotificationCreateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationCreateRequest create() => NotificationCreateRequest._();
  NotificationCreateRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationCreateRequest> createRepeated() =>
      $pb.PbList<NotificationCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationCreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationCreateRequest>(create);
  static NotificationCreateRequest _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class NotificationCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'NotificationCreateResponse',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationCreateResponse._() : super();
  factory NotificationCreateResponse() => create();
  factory NotificationCreateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationCreateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationCreateResponse clone() =>
      NotificationCreateResponse()..mergeFromMessage(this);
  NotificationCreateResponse copyWith(
          void Function(NotificationCreateResponse) updates) =>
      super.copyWith(
          (message) => updates(message as NotificationCreateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationCreateResponse create() => NotificationCreateResponse._();
  NotificationCreateResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationCreateResponse> createRepeated() =>
      $pb.PbList<NotificationCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationCreateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationCreateResponse>(create);
  static NotificationCreateResponse _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class NotificationReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationReadRequest',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false;

  NotificationReadRequest._() : super();
  factory NotificationReadRequest() => create();
  factory NotificationReadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationReadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationReadRequest clone() =>
      NotificationReadRequest()..mergeFromMessage(this);
  NotificationReadRequest copyWith(
          void Function(NotificationReadRequest) updates) =>
      super.copyWith((message) => updates(message as NotificationReadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationReadRequest create() => NotificationReadRequest._();
  NotificationReadRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationReadRequest> createRepeated() =>
      $pb.PbList<NotificationReadRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationReadRequest>(create);
  static NotificationReadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class NotificationReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationReadResponse',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationReadResponse._() : super();
  factory NotificationReadResponse() => create();
  factory NotificationReadResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationReadResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationReadResponse clone() =>
      NotificationReadResponse()..mergeFromMessage(this);
  NotificationReadResponse copyWith(
          void Function(NotificationReadResponse) updates) =>
      super.copyWith((message) => updates(message as NotificationReadResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationReadResponse create() => NotificationReadResponse._();
  NotificationReadResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationReadResponse> createRepeated() =>
      $pb.PbList<NotificationReadResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationReadResponse>(create);
  static NotificationReadResponse _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class NotificationUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationUpdateRequest',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationUpdateRequest._() : super();
  factory NotificationUpdateRequest() => create();
  factory NotificationUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationUpdateRequest clone() =>
      NotificationUpdateRequest()..mergeFromMessage(this);
  NotificationUpdateRequest copyWith(
          void Function(NotificationUpdateRequest) updates) =>
      super
          .copyWith((message) => updates(message as NotificationUpdateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationUpdateRequest create() => NotificationUpdateRequest._();
  NotificationUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationUpdateRequest> createRepeated() =>
      $pb.PbList<NotificationUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationUpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationUpdateRequest>(create);
  static NotificationUpdateRequest _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class NotificationUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'NotificationUpdateResponse',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationUpdateResponse._() : super();
  factory NotificationUpdateResponse() => create();
  factory NotificationUpdateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationUpdateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationUpdateResponse clone() =>
      NotificationUpdateResponse()..mergeFromMessage(this);
  NotificationUpdateResponse copyWith(
          void Function(NotificationUpdateResponse) updates) =>
      super.copyWith(
          (message) => updates(message as NotificationUpdateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationUpdateResponse create() => NotificationUpdateResponse._();
  NotificationUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationUpdateResponse> createRepeated() =>
      $pb.PbList<NotificationUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationUpdateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationUpdateResponse>(create);
  static NotificationUpdateResponse _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class NotificationDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationDeleteRequest',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false;

  NotificationDeleteRequest._() : super();
  factory NotificationDeleteRequest() => create();
  factory NotificationDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationDeleteRequest clone() =>
      NotificationDeleteRequest()..mergeFromMessage(this);
  NotificationDeleteRequest copyWith(
          void Function(NotificationDeleteRequest) updates) =>
      super
          .copyWith((message) => updates(message as NotificationDeleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationDeleteRequest create() => NotificationDeleteRequest._();
  NotificationDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationDeleteRequest> createRepeated() =>
      $pb.PbList<NotificationDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationDeleteRequest>(create);
  static NotificationDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class NotificationDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'NotificationDeleteResponse',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOB(1, 'success')
    ..hasRequiredFields = false;

  NotificationDeleteResponse._() : super();
  factory NotificationDeleteResponse() => create();
  factory NotificationDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationDeleteResponse clone() =>
      NotificationDeleteResponse()..mergeFromMessage(this);
  NotificationDeleteResponse copyWith(
          void Function(NotificationDeleteResponse) updates) =>
      super.copyWith(
          (message) => updates(message as NotificationDeleteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationDeleteResponse create() => NotificationDeleteResponse._();
  NotificationDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationDeleteResponse> createRepeated() =>
      $pb.PbList<NotificationDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationDeleteResponse>(create);
  static NotificationDeleteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class NotificationsListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationsListRequest',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<IDtoken>(1, 'idtoken', subBuilder: IDtoken.create)
    ..hasRequiredFields = false;

  NotificationsListRequest._() : super();
  factory NotificationsListRequest() => create();
  factory NotificationsListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationsListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationsListRequest clone() =>
      NotificationsListRequest()..mergeFromMessage(this);
  NotificationsListRequest copyWith(
          void Function(NotificationsListRequest) updates) =>
      super.copyWith((message) => updates(message as NotificationsListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationsListRequest create() => NotificationsListRequest._();
  NotificationsListRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationsListRequest> createRepeated() =>
      $pb.PbList<NotificationsListRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationsListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationsListRequest>(create);
  static NotificationsListRequest _defaultInstance;

  @$pb.TagNumber(1)
  IDtoken get idtoken => $_getN(0);
  @$pb.TagNumber(1)
  set idtoken(IDtoken v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdtoken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdtoken() => clearField(1);
  @$pb.TagNumber(1)
  IDtoken ensureIdtoken() => $_ensure(0);
}

class NotificationsListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationsListResponse',
      package: const $pb.PackageName('notifications'),
      createEmptyInstance: create)
    ..aOM<Notification>(1, 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false;

  NotificationsListResponse._() : super();
  factory NotificationsListResponse() => create();
  factory NotificationsListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationsListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationsListResponse clone() =>
      NotificationsListResponse()..mergeFromMessage(this);
  NotificationsListResponse copyWith(
          void Function(NotificationsListResponse) updates) =>
      super
          .copyWith((message) => updates(message as NotificationsListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationsListResponse create() => NotificationsListResponse._();
  NotificationsListResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationsListResponse> createRepeated() =>
      $pb.PbList<NotificationsListResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationsListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationsListResponse>(create);
  static NotificationsListResponse _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}
