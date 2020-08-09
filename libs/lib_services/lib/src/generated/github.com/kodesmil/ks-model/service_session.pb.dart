///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service_session.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $2;

enum StreamSessionInputEvent_Event {
  requestSession, 
  joinSession, 
  leaveSession, 
  notSet
}

class StreamSessionInputEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamSessionInputEvent_Event> _StreamSessionInputEvent_EventByTag = {
    1 : StreamSessionInputEvent_Event.requestSession,
    2 : StreamSessionInputEvent_Event.joinSession,
    3 : StreamSessionInputEvent_Event.leaveSession,
    0 : StreamSessionInputEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamSessionInputEvent', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<EventRequestSession>(1, 'requestSession', subBuilder: EventRequestSession.create)
    ..aOM<EventJoinSession>(2, 'joinSession', subBuilder: EventJoinSession.create)
    ..aOM<EventLeaveSession>(3, 'leaveSession', subBuilder: EventLeaveSession.create)
    ..hasRequiredFields = false
  ;

  StreamSessionInputEvent._() : super();
  factory StreamSessionInputEvent() => create();
  factory StreamSessionInputEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamSessionInputEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamSessionInputEvent clone() => StreamSessionInputEvent()..mergeFromMessage(this);
  StreamSessionInputEvent copyWith(void Function(StreamSessionInputEvent) updates) => super.copyWith((message) => updates(message as StreamSessionInputEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamSessionInputEvent create() => StreamSessionInputEvent._();
  StreamSessionInputEvent createEmptyInstance() => create();
  static $pb.PbList<StreamSessionInputEvent> createRepeated() => $pb.PbList<StreamSessionInputEvent>();
  @$core.pragma('dart2js:noInline')
  static StreamSessionInputEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamSessionInputEvent>(create);
  static StreamSessionInputEvent _defaultInstance;

  StreamSessionInputEvent_Event whichEvent() => _StreamSessionInputEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventRequestSession get requestSession => $_getN(0);
  @$pb.TagNumber(1)
  set requestSession(EventRequestSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestSession() => clearField(1);
  @$pb.TagNumber(1)
  EventRequestSession ensureRequestSession() => $_ensure(0);

  @$pb.TagNumber(2)
  EventJoinSession get joinSession => $_getN(1);
  @$pb.TagNumber(2)
  set joinSession(EventJoinSession v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasJoinSession() => $_has(1);
  @$pb.TagNumber(2)
  void clearJoinSession() => clearField(2);
  @$pb.TagNumber(2)
  EventJoinSession ensureJoinSession() => $_ensure(1);

  @$pb.TagNumber(3)
  EventLeaveSession get leaveSession => $_getN(2);
  @$pb.TagNumber(3)
  set leaveSession(EventLeaveSession v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeaveSession() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeaveSession() => clearField(3);
  @$pb.TagNumber(3)
  EventLeaveSession ensureLeaveSession() => $_ensure(2);
}

class EventRequestSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventRequestSession', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventRequestSession._() : super();
  factory EventRequestSession() => create();
  factory EventRequestSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventRequestSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventRequestSession clone() => EventRequestSession()..mergeFromMessage(this);
  EventRequestSession copyWith(void Function(EventRequestSession) updates) => super.copyWith((message) => updates(message as EventRequestSession));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventRequestSession create() => EventRequestSession._();
  EventRequestSession createEmptyInstance() => create();
  static $pb.PbList<EventRequestSession> createRepeated() => $pb.PbList<EventRequestSession>();
  @$core.pragma('dart2js:noInline')
  static EventRequestSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventRequestSession>(create);
  static EventRequestSession _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

class EventJoinSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventJoinSession', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventJoinSession._() : super();
  factory EventJoinSession() => create();
  factory EventJoinSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventJoinSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventJoinSession clone() => EventJoinSession()..mergeFromMessage(this);
  EventJoinSession copyWith(void Function(EventJoinSession) updates) => super.copyWith((message) => updates(message as EventJoinSession));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventJoinSession create() => EventJoinSession._();
  EventJoinSession createEmptyInstance() => create();
  static $pb.PbList<EventJoinSession> createRepeated() => $pb.PbList<EventJoinSession>();
  @$core.pragma('dart2js:noInline')
  static EventJoinSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventJoinSession>(create);
  static EventJoinSession _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

class EventLeaveSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLeaveSession', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventLeaveSession._() : super();
  factory EventLeaveSession() => create();
  factory EventLeaveSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventLeaveSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventLeaveSession clone() => EventLeaveSession()..mergeFromMessage(this);
  EventLeaveSession copyWith(void Function(EventLeaveSession) updates) => super.copyWith((message) => updates(message as EventLeaveSession));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLeaveSession create() => EventLeaveSession._();
  EventLeaveSession createEmptyInstance() => create();
  static $pb.PbList<EventLeaveSession> createRepeated() => $pb.PbList<EventLeaveSession>();
  @$core.pragma('dart2js:noInline')
  static EventLeaveSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventLeaveSession>(create);
  static EventLeaveSession _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

enum StreamSessionOutputEvent_Event {
  sessionRequested, 
  sessionStarted, 
  sessionTimeout, 
  sessionFinished, 
  notSet
}

class StreamSessionOutputEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamSessionOutputEvent_Event> _StreamSessionOutputEvent_EventByTag = {
    1 : StreamSessionOutputEvent_Event.sessionRequested,
    2 : StreamSessionOutputEvent_Event.sessionStarted,
    3 : StreamSessionOutputEvent_Event.sessionTimeout,
    4 : StreamSessionOutputEvent_Event.sessionFinished,
    0 : StreamSessionOutputEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamSessionOutputEvent', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<EventSessionRequested>(1, 'sessionRequested', subBuilder: EventSessionRequested.create)
    ..aOM<EventSessionStarted>(2, 'sessionStarted', subBuilder: EventSessionStarted.create)
    ..aOM<EventSessionTimeout>(3, 'sessionTimeout', subBuilder: EventSessionTimeout.create)
    ..aOM<EventSessionFinished>(4, 'sessionFinished', subBuilder: EventSessionFinished.create)
    ..hasRequiredFields = false
  ;

  StreamSessionOutputEvent._() : super();
  factory StreamSessionOutputEvent() => create();
  factory StreamSessionOutputEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamSessionOutputEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamSessionOutputEvent clone() => StreamSessionOutputEvent()..mergeFromMessage(this);
  StreamSessionOutputEvent copyWith(void Function(StreamSessionOutputEvent) updates) => super.copyWith((message) => updates(message as StreamSessionOutputEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamSessionOutputEvent create() => StreamSessionOutputEvent._();
  StreamSessionOutputEvent createEmptyInstance() => create();
  static $pb.PbList<StreamSessionOutputEvent> createRepeated() => $pb.PbList<StreamSessionOutputEvent>();
  @$core.pragma('dart2js:noInline')
  static StreamSessionOutputEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamSessionOutputEvent>(create);
  static StreamSessionOutputEvent _defaultInstance;

  StreamSessionOutputEvent_Event whichEvent() => _StreamSessionOutputEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventSessionRequested get sessionRequested => $_getN(0);
  @$pb.TagNumber(1)
  set sessionRequested(EventSessionRequested v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionRequested() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionRequested() => clearField(1);
  @$pb.TagNumber(1)
  EventSessionRequested ensureSessionRequested() => $_ensure(0);

  @$pb.TagNumber(2)
  EventSessionStarted get sessionStarted => $_getN(1);
  @$pb.TagNumber(2)
  set sessionStarted(EventSessionStarted v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionStarted() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionStarted() => clearField(2);
  @$pb.TagNumber(2)
  EventSessionStarted ensureSessionStarted() => $_ensure(1);

  @$pb.TagNumber(3)
  EventSessionTimeout get sessionTimeout => $_getN(2);
  @$pb.TagNumber(3)
  set sessionTimeout(EventSessionTimeout v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSessionTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionTimeout() => clearField(3);
  @$pb.TagNumber(3)
  EventSessionTimeout ensureSessionTimeout() => $_ensure(2);

  @$pb.TagNumber(4)
  EventSessionFinished get sessionFinished => $_getN(3);
  @$pb.TagNumber(4)
  set sessionFinished(EventSessionFinished v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionFinished() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionFinished() => clearField(4);
  @$pb.TagNumber(4)
  EventSessionFinished ensureSessionFinished() => $_ensure(3);
}

class EventSessionRequested extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSessionRequested', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventSessionRequested._() : super();
  factory EventSessionRequested() => create();
  factory EventSessionRequested.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSessionRequested.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSessionRequested clone() => EventSessionRequested()..mergeFromMessage(this);
  EventSessionRequested copyWith(void Function(EventSessionRequested) updates) => super.copyWith((message) => updates(message as EventSessionRequested));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSessionRequested create() => EventSessionRequested._();
  EventSessionRequested createEmptyInstance() => create();
  static $pb.PbList<EventSessionRequested> createRepeated() => $pb.PbList<EventSessionRequested>();
  @$core.pragma('dart2js:noInline')
  static EventSessionRequested getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSessionRequested>(create);
  static EventSessionRequested _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

class EventSessionStarted extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSessionStarted', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventSessionStarted._() : super();
  factory EventSessionStarted() => create();
  factory EventSessionStarted.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSessionStarted.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSessionStarted clone() => EventSessionStarted()..mergeFromMessage(this);
  EventSessionStarted copyWith(void Function(EventSessionStarted) updates) => super.copyWith((message) => updates(message as EventSessionStarted));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSessionStarted create() => EventSessionStarted._();
  EventSessionStarted createEmptyInstance() => create();
  static $pb.PbList<EventSessionStarted> createRepeated() => $pb.PbList<EventSessionStarted>();
  @$core.pragma('dart2js:noInline')
  static EventSessionStarted getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSessionStarted>(create);
  static EventSessionStarted _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

class EventSessionTimeout extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSessionTimeout', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventSessionTimeout._() : super();
  factory EventSessionTimeout() => create();
  factory EventSessionTimeout.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSessionTimeout.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSessionTimeout clone() => EventSessionTimeout()..mergeFromMessage(this);
  EventSessionTimeout copyWith(void Function(EventSessionTimeout) updates) => super.copyWith((message) => updates(message as EventSessionTimeout));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSessionTimeout create() => EventSessionTimeout._();
  EventSessionTimeout createEmptyInstance() => create();
  static $pb.PbList<EventSessionTimeout> createRepeated() => $pb.PbList<EventSessionTimeout>();
  @$core.pragma('dart2js:noInline')
  static EventSessionTimeout getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSessionTimeout>(create);
  static EventSessionTimeout _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

class EventSessionFinished extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSessionFinished', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$2.ServiceSession>(1, 'session', subBuilder: $2.ServiceSession.create)
    ..hasRequiredFields = false
  ;

  EventSessionFinished._() : super();
  factory EventSessionFinished() => create();
  factory EventSessionFinished.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSessionFinished.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSessionFinished clone() => EventSessionFinished()..mergeFromMessage(this);
  EventSessionFinished copyWith(void Function(EventSessionFinished) updates) => super.copyWith((message) => updates(message as EventSessionFinished));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSessionFinished create() => EventSessionFinished._();
  EventSessionFinished createEmptyInstance() => create();
  static $pb.PbList<EventSessionFinished> createRepeated() => $pb.PbList<EventSessionFinished>();
  @$core.pragma('dart2js:noInline')
  static EventSessionFinished getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSessionFinished>(create);
  static EventSessionFinished _defaultInstance;

  @$pb.TagNumber(1)
  $2.ServiceSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($2.ServiceSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $2.ServiceSession ensureSession() => $_ensure(0);
}

