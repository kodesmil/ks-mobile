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

class ChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatMessage',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, 'updatedAt', subBuilder: $2.Timestamp.create)
    ..aOS(4, 'text')
    ..aOM<Profile>(5, 'author', subBuilder: Profile.create)
    ..aOM<$1.Identifier>(6, 'authorId', subBuilder: $1.Identifier.create)
    ..aOM<ChatRoom>(7, 'chatRoom', subBuilder: ChatRoom.create)
    ..aOM<$1.Identifier>(8, 'chatRoomId', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ChatMessage._() : super();
  factory ChatMessage() => create();
  factory ChatMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  ChatMessage copyWith(void Function(ChatMessage) updates) =>
      super.copyWith((message) => updates(message as ChatMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($2.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => clearField(4);

  @$pb.TagNumber(5)
  Profile get author => $_getN(4);
  @$pb.TagNumber(5)
  set author(Profile v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAuthor() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthor() => clearField(5);
  @$pb.TagNumber(5)
  Profile ensureAuthor() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Identifier get authorId => $_getN(5);
  @$pb.TagNumber(6)
  set authorId($1.Identifier v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAuthorId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthorId() => clearField(6);
  @$pb.TagNumber(6)
  $1.Identifier ensureAuthorId() => $_ensure(5);

  @$pb.TagNumber(7)
  ChatRoom get chatRoom => $_getN(6);
  @$pb.TagNumber(7)
  set chatRoom(ChatRoom v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasChatRoom() => $_has(6);
  @$pb.TagNumber(7)
  void clearChatRoom() => clearField(7);
  @$pb.TagNumber(7)
  ChatRoom ensureChatRoom() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Identifier get chatRoomId => $_getN(7);
  @$pb.TagNumber(8)
  set chatRoomId($1.Identifier v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasChatRoomId() => $_has(7);
  @$pb.TagNumber(8)
  void clearChatRoomId() => clearField(8);
  @$pb.TagNumber(8)
  $1.Identifier ensureChatRoomId() => $_ensure(7);
}

class ChatRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatRoom',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, 'updatedAt', subBuilder: $2.Timestamp.create)
    ..pc<Profile>(4, 'participants', $pb.PbFieldType.PM,
        subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ChatRoom._() : super();
  factory ChatRoom() => create();
  factory ChatRoom.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatRoom.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChatRoom clone() => ChatRoom()..mergeFromMessage(this);
  ChatRoom copyWith(void Function(ChatRoom) updates) =>
      super.copyWith((message) => updates(message as ChatRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatRoom create() => ChatRoom._();
  ChatRoom createEmptyInstance() => create();
  static $pb.PbList<ChatRoom> createRepeated() => $pb.PbList<ChatRoom>();
  @$core.pragma('dart2js:noInline')
  static ChatRoom getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoom>(create);
  static ChatRoom _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($2.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Profile> get participants => $_getList(3);
}

enum StreamChatEvent_Event {
  none,
  loadRoom,
  loadRooms,
  leaveRoom,
  leaveRooms,
  sendRooms,
  sendMessage,
  sendMessages,
  forceClose,
  inviteProfile,
  notSet
}

class StreamChatEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamChatEvent_Event>
      _StreamChatEvent_EventByTag = {
    1: StreamChatEvent_Event.none,
    2: StreamChatEvent_Event.loadRoom,
    3: StreamChatEvent_Event.loadRooms,
    4: StreamChatEvent_Event.leaveRoom,
    5: StreamChatEvent_Event.leaveRooms,
    6: StreamChatEvent_Event.sendRooms,
    7: StreamChatEvent_Event.sendMessage,
    8: StreamChatEvent_Event.sendMessages,
    9: StreamChatEvent_Event.forceClose,
    10: StreamChatEvent_Event.inviteProfile,
    0: StreamChatEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamChatEvent',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<EventNone>(1, 'none', subBuilder: EventNone.create)
    ..aOM<EventLoadRoom>(2, 'loadRoom', subBuilder: EventLoadRoom.create)
    ..aOM<EventLoadRooms>(3, 'loadRooms', subBuilder: EventLoadRooms.create)
    ..aOM<EventLeaveRoom>(4, 'leaveRoom', subBuilder: EventLeaveRoom.create)
    ..aOM<EventLeaveRooms>(5, 'leaveRooms', subBuilder: EventLeaveRooms.create)
    ..aOM<EventSendRooms>(6, 'sendRooms', subBuilder: EventSendRooms.create)
    ..aOM<EventSendMessage>(7, 'sendMessage',
        subBuilder: EventSendMessage.create)
    ..aOM<EventSendMessages>(8, 'sendMessages',
        subBuilder: EventSendMessages.create)
    ..aOM<EventForceClose>(9, 'forceClose', subBuilder: EventForceClose.create)
    ..aOM<EventInviteProfile>(10, 'inviteProfile',
        subBuilder: EventInviteProfile.create)
    ..hasRequiredFields = false;

  StreamChatEvent._() : super();
  factory StreamChatEvent() => create();
  factory StreamChatEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamChatEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StreamChatEvent clone() => StreamChatEvent()..mergeFromMessage(this);
  StreamChatEvent copyWith(void Function(StreamChatEvent) updates) =>
      super.copyWith((message) => updates(message as StreamChatEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamChatEvent create() => StreamChatEvent._();
  StreamChatEvent createEmptyInstance() => create();
  static $pb.PbList<StreamChatEvent> createRepeated() =>
      $pb.PbList<StreamChatEvent>();
  @$core.pragma('dart2js:noInline')
  static StreamChatEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamChatEvent>(create);
  static StreamChatEvent _defaultInstance;

  StreamChatEvent_Event whichEvent() =>
      _StreamChatEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventNone get none => $_getN(0);
  @$pb.TagNumber(1)
  set none(EventNone v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNone() => $_has(0);
  @$pb.TagNumber(1)
  void clearNone() => clearField(1);
  @$pb.TagNumber(1)
  EventNone ensureNone() => $_ensure(0);

  @$pb.TagNumber(2)
  EventLoadRoom get loadRoom => $_getN(1);
  @$pb.TagNumber(2)
  set loadRoom(EventLoadRoom v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLoadRoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoadRoom() => clearField(2);
  @$pb.TagNumber(2)
  EventLoadRoom ensureLoadRoom() => $_ensure(1);

  @$pb.TagNumber(3)
  EventLoadRooms get loadRooms => $_getN(2);
  @$pb.TagNumber(3)
  set loadRooms(EventLoadRooms v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLoadRooms() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoadRooms() => clearField(3);
  @$pb.TagNumber(3)
  EventLoadRooms ensureLoadRooms() => $_ensure(2);

  @$pb.TagNumber(4)
  EventLeaveRoom get leaveRoom => $_getN(3);
  @$pb.TagNumber(4)
  set leaveRoom(EventLeaveRoom v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLeaveRoom() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeaveRoom() => clearField(4);
  @$pb.TagNumber(4)
  EventLeaveRoom ensureLeaveRoom() => $_ensure(3);

  @$pb.TagNumber(5)
  EventLeaveRooms get leaveRooms => $_getN(4);
  @$pb.TagNumber(5)
  set leaveRooms(EventLeaveRooms v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLeaveRooms() => $_has(4);
  @$pb.TagNumber(5)
  void clearLeaveRooms() => clearField(5);
  @$pb.TagNumber(5)
  EventLeaveRooms ensureLeaveRooms() => $_ensure(4);

  @$pb.TagNumber(6)
  EventSendRooms get sendRooms => $_getN(5);
  @$pb.TagNumber(6)
  set sendRooms(EventSendRooms v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSendRooms() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendRooms() => clearField(6);
  @$pb.TagNumber(6)
  EventSendRooms ensureSendRooms() => $_ensure(5);

  @$pb.TagNumber(7)
  EventSendMessage get sendMessage => $_getN(6);
  @$pb.TagNumber(7)
  set sendMessage(EventSendMessage v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSendMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendMessage() => clearField(7);
  @$pb.TagNumber(7)
  EventSendMessage ensureSendMessage() => $_ensure(6);

  @$pb.TagNumber(8)
  EventSendMessages get sendMessages => $_getN(7);
  @$pb.TagNumber(8)
  set sendMessages(EventSendMessages v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSendMessages() => $_has(7);
  @$pb.TagNumber(8)
  void clearSendMessages() => clearField(8);
  @$pb.TagNumber(8)
  EventSendMessages ensureSendMessages() => $_ensure(7);

  @$pb.TagNumber(9)
  EventForceClose get forceClose => $_getN(8);
  @$pb.TagNumber(9)
  set forceClose(EventForceClose v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasForceClose() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceClose() => clearField(9);
  @$pb.TagNumber(9)
  EventForceClose ensureForceClose() => $_ensure(8);

  @$pb.TagNumber(10)
  EventInviteProfile get inviteProfile => $_getN(9);
  @$pb.TagNumber(10)
  set inviteProfile(EventInviteProfile v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasInviteProfile() => $_has(9);
  @$pb.TagNumber(10)
  void clearInviteProfile() => clearField(10);
  @$pb.TagNumber(10)
  EventInviteProfile ensureInviteProfile() => $_ensure(9);
}

class EventNone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventNone',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  EventNone._() : super();
  factory EventNone() => create();
  factory EventNone.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventNone.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventNone clone() => EventNone()..mergeFromMessage(this);
  EventNone copyWith(void Function(EventNone) updates) =>
      super.copyWith((message) => updates(message as EventNone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventNone create() => EventNone._();
  EventNone createEmptyInstance() => create();
  static $pb.PbList<EventNone> createRepeated() => $pb.PbList<EventNone>();
  @$core.pragma('dart2js:noInline')
  static EventNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventNone>(create);
  static EventNone _defaultInstance;
}

class EventLoadRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLoadRoom',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<ChatRoom>(1, 'room', subBuilder: ChatRoom.create)
    ..hasRequiredFields = false;

  EventLoadRoom._() : super();
  factory EventLoadRoom() => create();
  factory EventLoadRoom.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventLoadRoom.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventLoadRoom clone() => EventLoadRoom()..mergeFromMessage(this);
  EventLoadRoom copyWith(void Function(EventLoadRoom) updates) =>
      super.copyWith((message) => updates(message as EventLoadRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLoadRoom create() => EventLoadRoom._();
  EventLoadRoom createEmptyInstance() => create();
  static $pb.PbList<EventLoadRoom> createRepeated() =>
      $pb.PbList<EventLoadRoom>();
  @$core.pragma('dart2js:noInline')
  static EventLoadRoom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventLoadRoom>(create);
  static EventLoadRoom _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ChatRoom v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoom ensureRoom() => $_ensure(0);
}

class EventLoadRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLoadRooms',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  EventLoadRooms._() : super();
  factory EventLoadRooms() => create();
  factory EventLoadRooms.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventLoadRooms.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventLoadRooms clone() => EventLoadRooms()..mergeFromMessage(this);
  EventLoadRooms copyWith(void Function(EventLoadRooms) updates) =>
      super.copyWith((message) => updates(message as EventLoadRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLoadRooms create() => EventLoadRooms._();
  EventLoadRooms createEmptyInstance() => create();
  static $pb.PbList<EventLoadRooms> createRepeated() =>
      $pb.PbList<EventLoadRooms>();
  @$core.pragma('dart2js:noInline')
  static EventLoadRooms getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventLoadRooms>(create);
  static EventLoadRooms _defaultInstance;
}

class EventLeaveRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLeaveRoom',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<ChatRoom>(1, 'room', subBuilder: ChatRoom.create)
    ..hasRequiredFields = false;

  EventLeaveRoom._() : super();
  factory EventLeaveRoom() => create();
  factory EventLeaveRoom.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventLeaveRoom.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventLeaveRoom clone() => EventLeaveRoom()..mergeFromMessage(this);
  EventLeaveRoom copyWith(void Function(EventLeaveRoom) updates) =>
      super.copyWith((message) => updates(message as EventLeaveRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLeaveRoom create() => EventLeaveRoom._();
  EventLeaveRoom createEmptyInstance() => create();
  static $pb.PbList<EventLeaveRoom> createRepeated() =>
      $pb.PbList<EventLeaveRoom>();
  @$core.pragma('dart2js:noInline')
  static EventLeaveRoom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventLeaveRoom>(create);
  static EventLeaveRoom _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ChatRoom v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoom ensureRoom() => $_ensure(0);
}

class EventLeaveRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLeaveRooms',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  EventLeaveRooms._() : super();
  factory EventLeaveRooms() => create();
  factory EventLeaveRooms.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventLeaveRooms.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventLeaveRooms clone() => EventLeaveRooms()..mergeFromMessage(this);
  EventLeaveRooms copyWith(void Function(EventLeaveRooms) updates) =>
      super.copyWith((message) => updates(message as EventLeaveRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLeaveRooms create() => EventLeaveRooms._();
  EventLeaveRooms createEmptyInstance() => create();
  static $pb.PbList<EventLeaveRooms> createRepeated() =>
      $pb.PbList<EventLeaveRooms>();
  @$core.pragma('dart2js:noInline')
  static EventLeaveRooms getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventLeaveRooms>(create);
  static EventLeaveRooms _defaultInstance;
}

class EventSendMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendMessage',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<ChatMessage>(1, 'payload', subBuilder: ChatMessage.create)
    ..hasRequiredFields = false;

  EventSendMessage._() : super();
  factory EventSendMessage() => create();
  factory EventSendMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSendMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSendMessage clone() => EventSendMessage()..mergeFromMessage(this);
  EventSendMessage copyWith(void Function(EventSendMessage) updates) =>
      super.copyWith((message) => updates(message as EventSendMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendMessage create() => EventSendMessage._();
  EventSendMessage createEmptyInstance() => create();
  static $pb.PbList<EventSendMessage> createRepeated() =>
      $pb.PbList<EventSendMessage>();
  @$core.pragma('dart2js:noInline')
  static EventSendMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSendMessage>(create);
  static EventSendMessage _defaultInstance;

  @$pb.TagNumber(1)
  ChatMessage get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ChatMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ChatMessage ensurePayload() => $_ensure(0);
}

class EventSendMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendMessages',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<ChatMessage>(1, 'payload', $pb.PbFieldType.PM,
        subBuilder: ChatMessage.create)
    ..hasRequiredFields = false;

  EventSendMessages._() : super();
  factory EventSendMessages() => create();
  factory EventSendMessages.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSendMessages.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSendMessages clone() => EventSendMessages()..mergeFromMessage(this);
  EventSendMessages copyWith(void Function(EventSendMessages) updates) =>
      super.copyWith((message) => updates(message as EventSendMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendMessages create() => EventSendMessages._();
  EventSendMessages createEmptyInstance() => create();
  static $pb.PbList<EventSendMessages> createRepeated() =>
      $pb.PbList<EventSendMessages>();
  @$core.pragma('dart2js:noInline')
  static EventSendMessages getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSendMessages>(create);
  static EventSendMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatMessage> get payload => $_getList(0);
}

class EventSendRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendRooms',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<ChatRoom>(1, 'rooms', $pb.PbFieldType.PM, subBuilder: ChatRoom.create)
    ..hasRequiredFields = false;

  EventSendRooms._() : super();
  factory EventSendRooms() => create();
  factory EventSendRooms.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSendRooms.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSendRooms clone() => EventSendRooms()..mergeFromMessage(this);
  EventSendRooms copyWith(void Function(EventSendRooms) updates) =>
      super.copyWith((message) => updates(message as EventSendRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendRooms create() => EventSendRooms._();
  EventSendRooms createEmptyInstance() => create();
  static $pb.PbList<EventSendRooms> createRepeated() =>
      $pb.PbList<EventSendRooms>();
  @$core.pragma('dart2js:noInline')
  static EventSendRooms getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSendRooms>(create);
  static EventSendRooms _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatRoom> get rooms => $_getList(0);
}

class EventInviteProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventInviteProfile',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<Profile>(1, 'participant', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  EventInviteProfile._() : super();
  factory EventInviteProfile() => create();
  factory EventInviteProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventInviteProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventInviteProfile clone() => EventInviteProfile()..mergeFromMessage(this);
  EventInviteProfile copyWith(void Function(EventInviteProfile) updates) =>
      super.copyWith((message) => updates(message as EventInviteProfile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventInviteProfile create() => EventInviteProfile._();
  EventInviteProfile createEmptyInstance() => create();
  static $pb.PbList<EventInviteProfile> createRepeated() =>
      $pb.PbList<EventInviteProfile>();
  @$core.pragma('dart2js:noInline')
  static EventInviteProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventInviteProfile>(create);
  static EventInviteProfile _defaultInstance;

  @$pb.TagNumber(1)
  Profile get participant => $_getN(0);
  @$pb.TagNumber(1)
  set participant(Profile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipant() => clearField(1);
  @$pb.TagNumber(1)
  Profile ensureParticipant() => $_ensure(0);
}

class EventForceClose extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventForceClose',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  EventForceClose._() : super();
  factory EventForceClose() => create();
  factory EventForceClose.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventForceClose.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventForceClose clone() => EventForceClose()..mergeFromMessage(this);
  EventForceClose copyWith(void Function(EventForceClose) updates) =>
      super.copyWith((message) => updates(message as EventForceClose));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventForceClose create() => EventForceClose._();
  EventForceClose createEmptyInstance() => create();
  static $pb.PbList<EventForceClose> createRepeated() =>
      $pb.PbList<EventForceClose>();
  @$core.pragma('dart2js:noInline')
  static EventForceClose getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventForceClose>(create);
  static EventForceClose _defaultInstance;
}

class ListChatMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatMessageRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListChatMessageRequest._() : super();
  factory ListChatMessageRequest() => create();
  factory ListChatMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChatMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChatMessageRequest clone() =>
      ListChatMessageRequest()..mergeFromMessage(this);
  ListChatMessageRequest copyWith(
          void Function(ListChatMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ListChatMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatMessageRequest create() => ListChatMessageRequest._();
  ListChatMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ListChatMessageRequest> createRepeated() =>
      $pb.PbList<ListChatMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ListChatMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListChatMessageRequest>(create);
  static ListChatMessageRequest _defaultInstance;

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

class ListChatMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatMessageResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<ChatMessage>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: ChatMessage.create)
    ..hasRequiredFields = false;

  ListChatMessageResponse._() : super();
  factory ListChatMessageResponse() => create();
  factory ListChatMessageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChatMessageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChatMessageResponse clone() =>
      ListChatMessageResponse()..mergeFromMessage(this);
  ListChatMessageResponse copyWith(
          void Function(ListChatMessageResponse) updates) =>
      super.copyWith((message) => updates(message as ListChatMessageResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatMessageResponse create() => ListChatMessageResponse._();
  ListChatMessageResponse createEmptyInstance() => create();
  static $pb.PbList<ListChatMessageResponse> createRepeated() =>
      $pb.PbList<ListChatMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListChatMessageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListChatMessageResponse>(create);
  static ListChatMessageResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatMessage> get results => $_getList(0);
}

class ListChatRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatRoomRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListChatRoomRequest._() : super();
  factory ListChatRoomRequest() => create();
  factory ListChatRoomRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChatRoomRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChatRoomRequest clone() => ListChatRoomRequest()..mergeFromMessage(this);
  ListChatRoomRequest copyWith(void Function(ListChatRoomRequest) updates) =>
      super.copyWith((message) => updates(message as ListChatRoomRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatRoomRequest create() => ListChatRoomRequest._();
  ListChatRoomRequest createEmptyInstance() => create();
  static $pb.PbList<ListChatRoomRequest> createRepeated() =>
      $pb.PbList<ListChatRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static ListChatRoomRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListChatRoomRequest>(create);
  static ListChatRoomRequest _defaultInstance;

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

class ListChatRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatRoomResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<ChatRoom>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: ChatRoom.create)
    ..hasRequiredFields = false;

  ListChatRoomResponse._() : super();
  factory ListChatRoomResponse() => create();
  factory ListChatRoomResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChatRoomResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChatRoomResponse clone() =>
      ListChatRoomResponse()..mergeFromMessage(this);
  ListChatRoomResponse copyWith(void Function(ListChatRoomResponse) updates) =>
      super.copyWith((message) => updates(message as ListChatRoomResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatRoomResponse create() => ListChatRoomResponse._();
  ListChatRoomResponse createEmptyInstance() => create();
  static $pb.PbList<ListChatRoomResponse> createRepeated() =>
      $pb.PbList<ListChatRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static ListChatRoomResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListChatRoomResponse>(create);
  static ListChatRoomResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatRoom> get results => $_getList(0);
}

class LogActivity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogActivity',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, 'updatedAt', subBuilder: $2.Timestamp.create)
    ..aOS(4, 'ip')
    ..hasRequiredFields = false;

  LogActivity._() : super();
  factory LogActivity() => create();
  factory LogActivity.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LogActivity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LogActivity clone() => LogActivity()..mergeFromMessage(this);
  LogActivity copyWith(void Function(LogActivity) updates) =>
      super.copyWith((message) => updates(message as LogActivity));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogActivity create() => LogActivity._();
  LogActivity createEmptyInstance() => create();
  static $pb.PbList<LogActivity> createRepeated() => $pb.PbList<LogActivity>();
  @$core.pragma('dart2js:noInline')
  static LogActivity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogActivity>(create);
  static LogActivity _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($2.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get ip => $_getSZ(3);
  @$pb.TagNumber(4)
  set ip($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIp() => clearField(4);
}

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
    ..aOM<$2.Timestamp>(4, 'createdAt', subBuilder: $2.Timestamp.create)
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
  $2.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($2.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureCreatedAt() => $_ensure(3);

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

class FeedTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedTag',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'key')
    ..aOS(3, 'name')
    ..pc<FeedArticle>(4, 'feedArticles', $pb.PbFieldType.PM,
        subBuilder: FeedArticle.create)
    ..hasRequiredFields = false;

  FeedTag._() : super();
  factory FeedTag() => create();
  factory FeedTag.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeedTag.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeedTag clone() => FeedTag()..mergeFromMessage(this);
  FeedTag copyWith(void Function(FeedTag) updates) =>
      super.copyWith((message) => updates(message as FeedTag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedTag create() => FeedTag._();
  FeedTag createEmptyInstance() => create();
  static $pb.PbList<FeedTag> createRepeated() => $pb.PbList<FeedTag>();
  @$core.pragma('dart2js:noInline')
  static FeedTag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedTag>(create);
  static FeedTag _defaultInstance;

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
  $core.List<FeedArticle> get feedArticles => $_getList(3);
}

class FeedAuthor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedAuthor',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'profilePhotoUrl')
    ..aOS(4, 'bio')
    ..pc<FeedArticle>(5, 'feedArticles', $pb.PbFieldType.PM,
        subBuilder: FeedArticle.create)
    ..hasRequiredFields = false;

  FeedAuthor._() : super();
  factory FeedAuthor() => create();
  factory FeedAuthor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeedAuthor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeedAuthor clone() => FeedAuthor()..mergeFromMessage(this);
  FeedAuthor copyWith(void Function(FeedAuthor) updates) =>
      super.copyWith((message) => updates(message as FeedAuthor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedAuthor create() => FeedAuthor._();
  FeedAuthor createEmptyInstance() => create();
  static $pb.PbList<FeedAuthor> createRepeated() => $pb.PbList<FeedAuthor>();
  @$core.pragma('dart2js:noInline')
  static FeedAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedAuthor>(create);
  static FeedAuthor _defaultInstance;

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
  $core.String get profilePhotoUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePhotoUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProfilePhotoUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePhotoUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bio => $_getSZ(3);
  @$pb.TagNumber(4)
  set bio($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBio() => $_has(3);
  @$pb.TagNumber(4)
  void clearBio() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<FeedArticle> get feedArticles => $_getList(4);
}

class FeedArticleDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedArticleDetail',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOS(2, 'content')
    ..aOM<FeedArticle>(3, 'feedArticle', subBuilder: FeedArticle.create)
    ..hasRequiredFields = false;

  FeedArticleDetail._() : super();
  factory FeedArticleDetail() => create();
  factory FeedArticleDetail.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeedArticleDetail.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeedArticleDetail clone() => FeedArticleDetail()..mergeFromMessage(this);
  FeedArticleDetail copyWith(void Function(FeedArticleDetail) updates) =>
      super.copyWith((message) => updates(message as FeedArticleDetail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedArticleDetail create() => FeedArticleDetail._();
  FeedArticleDetail createEmptyInstance() => create();
  static $pb.PbList<FeedArticleDetail> createRepeated() =>
      $pb.PbList<FeedArticleDetail>();
  @$core.pragma('dart2js:noInline')
  static FeedArticleDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedArticleDetail>(create);
  static FeedArticleDetail _defaultInstance;

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
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  FeedArticle get feedArticle => $_getN(2);
  @$pb.TagNumber(3)
  set feedArticle(FeedArticle v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFeedArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeedArticle() => clearField(3);
  @$pb.TagNumber(3)
  FeedArticle ensureFeedArticle() => $_ensure(2);
}

class ReadFeedArticleDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ReadFeedArticleDetailsRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadFeedArticleDetailsRequest._() : super();
  factory ReadFeedArticleDetailsRequest() => create();
  factory ReadFeedArticleDetailsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadFeedArticleDetailsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadFeedArticleDetailsRequest clone() =>
      ReadFeedArticleDetailsRequest()..mergeFromMessage(this);
  ReadFeedArticleDetailsRequest copyWith(
          void Function(ReadFeedArticleDetailsRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ReadFeedArticleDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsRequest create() =>
      ReadFeedArticleDetailsRequest._();
  ReadFeedArticleDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ReadFeedArticleDetailsRequest> createRepeated() =>
      $pb.PbList<ReadFeedArticleDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadFeedArticleDetailsRequest>(create);
  static ReadFeedArticleDetailsRequest _defaultInstance;

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

class ReadFeedArticleDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ReadFeedArticleDetailsResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<FeedArticleDetail>(1, 'result', subBuilder: FeedArticleDetail.create)
    ..hasRequiredFields = false;

  ReadFeedArticleDetailsResponse._() : super();
  factory ReadFeedArticleDetailsResponse() => create();
  factory ReadFeedArticleDetailsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadFeedArticleDetailsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadFeedArticleDetailsResponse clone() =>
      ReadFeedArticleDetailsResponse()..mergeFromMessage(this);
  ReadFeedArticleDetailsResponse copyWith(
          void Function(ReadFeedArticleDetailsResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ReadFeedArticleDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsResponse create() =>
      ReadFeedArticleDetailsResponse._();
  ReadFeedArticleDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ReadFeedArticleDetailsResponse> createRepeated() =>
      $pb.PbList<ReadFeedArticleDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadFeedArticleDetailsResponse>(create);
  static ReadFeedArticleDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  FeedArticleDetail get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(FeedArticleDetail v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  FeedArticleDetail ensureResult() => $_ensure(0);
}

class FeedArticle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedArticle',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOS(3, 'title')
    ..aOS(4, 'subtitle')
    ..aOS(5, 'coverPictureUrl')
    ..aOS(6, 'content')
    ..pc<FeedTag>(7, 'feedTags', $pb.PbFieldType.PM, subBuilder: FeedTag.create)
    ..aOM<FeedAuthor>(8, 'feedAuthor', subBuilder: FeedAuthor.create)
    ..hasRequiredFields = false;

  FeedArticle._() : super();
  factory FeedArticle() => create();
  factory FeedArticle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeedArticle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeedArticle clone() => FeedArticle()..mergeFromMessage(this);
  FeedArticle copyWith(void Function(FeedArticle) updates) =>
      super.copyWith((message) => updates(message as FeedArticle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedArticle create() => FeedArticle._();
  FeedArticle createEmptyInstance() => create();
  static $pb.PbList<FeedArticle> createRepeated() => $pb.PbList<FeedArticle>();
  @$core.pragma('dart2js:noInline')
  static FeedArticle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedArticle>(create);
  static FeedArticle _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverPictureUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverPictureUrl($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoverPictureUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverPictureUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<FeedTag> get feedTags => $_getList(6);

  @$pb.TagNumber(8)
  FeedAuthor get feedAuthor => $_getN(7);
  @$pb.TagNumber(8)
  set feedAuthor(FeedAuthor v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFeedAuthor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFeedAuthor() => clearField(8);
  @$pb.TagNumber(8)
  FeedAuthor ensureFeedAuthor() => $_ensure(7);
}

class ListFeedArticleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListFeedArticleRequest',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListFeedArticleRequest._() : super();
  factory ListFeedArticleRequest() => create();
  factory ListFeedArticleRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFeedArticleRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListFeedArticleRequest clone() =>
      ListFeedArticleRequest()..mergeFromMessage(this);
  ListFeedArticleRequest copyWith(
          void Function(ListFeedArticleRequest) updates) =>
      super.copyWith((message) => updates(message as ListFeedArticleRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleRequest create() => ListFeedArticleRequest._();
  ListFeedArticleRequest createEmptyInstance() => create();
  static $pb.PbList<ListFeedArticleRequest> createRepeated() =>
      $pb.PbList<ListFeedArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFeedArticleRequest>(create);
  static ListFeedArticleRequest _defaultInstance;

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

class ListFeedArticleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListFeedArticleResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<FeedArticle>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: FeedArticle.create)
    ..hasRequiredFields = false;

  ListFeedArticleResponse._() : super();
  factory ListFeedArticleResponse() => create();
  factory ListFeedArticleResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFeedArticleResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListFeedArticleResponse clone() =>
      ListFeedArticleResponse()..mergeFromMessage(this);
  ListFeedArticleResponse copyWith(
          void Function(ListFeedArticleResponse) updates) =>
      super.copyWith((message) => updates(message as ListFeedArticleResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleResponse create() => ListFeedArticleResponse._();
  ListFeedArticleResponse createEmptyInstance() => create();
  static $pb.PbList<ListFeedArticleResponse> createRepeated() =>
      $pb.PbList<ListFeedArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFeedArticleResponse>(create);
  static ListFeedArticleResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeedArticle> get results => $_getList(0);
}

class NotificationSetting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationSetting',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, 'updatedAt', subBuilder: $2.Timestamp.create)
    ..aOB(4, 'enableNotifications')
    ..aOB(5, 'enableJournalReminder')
    ..aOS(6, 'cronJournalReminder')
    ..hasRequiredFields = false;

  NotificationSetting._() : super();
  factory NotificationSetting() => create();
  factory NotificationSetting.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationSetting.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationSetting clone() => NotificationSetting()..mergeFromMessage(this);
  NotificationSetting copyWith(void Function(NotificationSetting) updates) =>
      super.copyWith((message) => updates(message as NotificationSetting));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationSetting create() => NotificationSetting._();
  NotificationSetting createEmptyInstance() => create();
  static $pb.PbList<NotificationSetting> createRepeated() =>
      $pb.PbList<NotificationSetting>();
  @$core.pragma('dart2js:noInline')
  static NotificationSetting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationSetting>(create);
  static NotificationSetting _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($2.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get enableNotifications => $_getBF(3);
  @$pb.TagNumber(4)
  set enableNotifications($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEnableNotifications() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableNotifications() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get enableJournalReminder => $_getBF(4);
  @$pb.TagNumber(5)
  set enableJournalReminder($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEnableJournalReminder() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnableJournalReminder() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get cronJournalReminder => $_getSZ(5);
  @$pb.TagNumber(6)
  set cronJournalReminder($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCronJournalReminder() => $_has(5);
  @$pb.TagNumber(6)
  void clearCronJournalReminder() => clearField(6);
}

class CreateNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateNotificationSettingRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'payload',
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  CreateNotificationSettingRequest._() : super();
  factory CreateNotificationSettingRequest() => create();
  factory CreateNotificationSettingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateNotificationSettingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateNotificationSettingRequest clone() =>
      CreateNotificationSettingRequest()..mergeFromMessage(this);
  CreateNotificationSettingRequest copyWith(
          void Function(CreateNotificationSettingRequest) updates) =>
      super.copyWith(
          (message) => updates(message as CreateNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingRequest create() =>
      CreateNotificationSettingRequest._();
  CreateNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationSettingRequest> createRepeated() =>
      $pb.PbList<CreateNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNotificationSettingRequest>(
          create);
  static CreateNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationSetting v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensurePayload() => $_ensure(0);
}

class CreateNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateNotificationSettingResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result',
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  CreateNotificationSettingResponse._() : super();
  factory CreateNotificationSettingResponse() => create();
  factory CreateNotificationSettingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateNotificationSettingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateNotificationSettingResponse clone() =>
      CreateNotificationSettingResponse()..mergeFromMessage(this);
  CreateNotificationSettingResponse copyWith(
          void Function(CreateNotificationSettingResponse) updates) =>
      super.copyWith(
          (message) => updates(message as CreateNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingResponse create() =>
      CreateNotificationSettingResponse._();
  CreateNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationSettingResponse> createRepeated() =>
      $pb.PbList<CreateNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationSettingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNotificationSettingResponse>(
          create);
  static CreateNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class ReadNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ReadNotificationSettingRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  ReadNotificationSettingRequest._() : super();
  factory ReadNotificationSettingRequest() => create();
  factory ReadNotificationSettingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadNotificationSettingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadNotificationSettingRequest clone() =>
      ReadNotificationSettingRequest()..mergeFromMessage(this);
  ReadNotificationSettingRequest copyWith(
          void Function(ReadNotificationSettingRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ReadNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingRequest create() =>
      ReadNotificationSettingRequest._();
  ReadNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<ReadNotificationSettingRequest> createRepeated() =>
      $pb.PbList<ReadNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadNotificationSettingRequest>(create);
  static ReadNotificationSettingRequest _defaultInstance;

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

class ReadNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ReadNotificationSettingResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result',
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  ReadNotificationSettingResponse._() : super();
  factory ReadNotificationSettingResponse() => create();
  factory ReadNotificationSettingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadNotificationSettingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadNotificationSettingResponse clone() =>
      ReadNotificationSettingResponse()..mergeFromMessage(this);
  ReadNotificationSettingResponse copyWith(
          void Function(ReadNotificationSettingResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ReadNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingResponse create() =>
      ReadNotificationSettingResponse._();
  ReadNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<ReadNotificationSettingResponse> createRepeated() =>
      $pb.PbList<ReadNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadNotificationSettingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadNotificationSettingResponse>(
          create);
  static ReadNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class UpdateNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'UpdateNotificationSettingRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'payload',
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  UpdateNotificationSettingRequest._() : super();
  factory UpdateNotificationSettingRequest() => create();
  factory UpdateNotificationSettingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateNotificationSettingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateNotificationSettingRequest clone() =>
      UpdateNotificationSettingRequest()..mergeFromMessage(this);
  UpdateNotificationSettingRequest copyWith(
          void Function(UpdateNotificationSettingRequest) updates) =>
      super.copyWith(
          (message) => updates(message as UpdateNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingRequest create() =>
      UpdateNotificationSettingRequest._();
  UpdateNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNotificationSettingRequest> createRepeated() =>
      $pb.PbList<UpdateNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateNotificationSettingRequest>(
          create);
  static UpdateNotificationSettingRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationSetting v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensurePayload() => $_ensure(0);
}

class UpdateNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'UpdateNotificationSettingResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationSetting>(1, 'result',
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  UpdateNotificationSettingResponse._() : super();
  factory UpdateNotificationSettingResponse() => create();
  factory UpdateNotificationSettingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateNotificationSettingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UpdateNotificationSettingResponse clone() =>
      UpdateNotificationSettingResponse()..mergeFromMessage(this);
  UpdateNotificationSettingResponse copyWith(
          void Function(UpdateNotificationSettingResponse) updates) =>
      super.copyWith(
          (message) => updates(message as UpdateNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingResponse create() =>
      UpdateNotificationSettingResponse._();
  UpdateNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateNotificationSettingResponse> createRepeated() =>
      $pb.PbList<UpdateNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateNotificationSettingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateNotificationSettingResponse>(
          create);
  static UpdateNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationSetting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationSetting v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationSetting ensureResult() => $_ensure(0);
}

class DeleteNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DeleteNotificationSettingRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..hasRequiredFields = false;

  DeleteNotificationSettingRequest._() : super();
  factory DeleteNotificationSettingRequest() => create();
  factory DeleteNotificationSettingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteNotificationSettingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteNotificationSettingRequest clone() =>
      DeleteNotificationSettingRequest()..mergeFromMessage(this);
  DeleteNotificationSettingRequest copyWith(
          void Function(DeleteNotificationSettingRequest) updates) =>
      super.copyWith(
          (message) => updates(message as DeleteNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingRequest create() =>
      DeleteNotificationSettingRequest._();
  DeleteNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNotificationSettingRequest> createRepeated() =>
      $pb.PbList<DeleteNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteNotificationSettingRequest>(
          create);
  static DeleteNotificationSettingRequest _defaultInstance;

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

class DeleteNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DeleteNotificationSettingResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteNotificationSettingResponse._() : super();
  factory DeleteNotificationSettingResponse() => create();
  factory DeleteNotificationSettingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteNotificationSettingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteNotificationSettingResponse clone() =>
      DeleteNotificationSettingResponse()..mergeFromMessage(this);
  DeleteNotificationSettingResponse copyWith(
          void Function(DeleteNotificationSettingResponse) updates) =>
      super.copyWith(
          (message) => updates(message as DeleteNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingResponse create() =>
      DeleteNotificationSettingResponse._();
  DeleteNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteNotificationSettingResponse> createRepeated() =>
      $pb.PbList<DeleteNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteNotificationSettingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteNotificationSettingResponse>(
          create);
  static DeleteNotificationSettingResponse _defaultInstance;
}

class ListNotificationSettingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ListNotificationSettingRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<$3.Filtering>(1, 'filter', subBuilder: $3.Filtering.create)
    ..aOM<$3.Sorting>(2, 'orderBy', subBuilder: $3.Sorting.create)
    ..aOM<$3.FieldSelection>(3, 'fields', subBuilder: $3.FieldSelection.create)
    ..aOM<$3.Pagination>(4, 'paging', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  ListNotificationSettingRequest._() : super();
  factory ListNotificationSettingRequest() => create();
  factory ListNotificationSettingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListNotificationSettingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListNotificationSettingRequest clone() =>
      ListNotificationSettingRequest()..mergeFromMessage(this);
  ListNotificationSettingRequest copyWith(
          void Function(ListNotificationSettingRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ListNotificationSettingRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingRequest create() =>
      ListNotificationSettingRequest._();
  ListNotificationSettingRequest createEmptyInstance() => create();
  static $pb.PbList<ListNotificationSettingRequest> createRepeated() =>
      $pb.PbList<ListNotificationSettingRequest>();
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListNotificationSettingRequest>(create);
  static ListNotificationSettingRequest _defaultInstance;

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

class ListNotificationSettingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ListNotificationSettingResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..pc<NotificationSetting>(1, 'results', $pb.PbFieldType.PM,
        subBuilder: NotificationSetting.create)
    ..hasRequiredFields = false;

  ListNotificationSettingResponse._() : super();
  factory ListNotificationSettingResponse() => create();
  factory ListNotificationSettingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListNotificationSettingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListNotificationSettingResponse clone() =>
      ListNotificationSettingResponse()..mergeFromMessage(this);
  ListNotificationSettingResponse copyWith(
          void Function(ListNotificationSettingResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ListNotificationSettingResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingResponse create() =>
      ListNotificationSettingResponse._();
  ListNotificationSettingResponse createEmptyInstance() => create();
  static $pb.PbList<ListNotificationSettingResponse> createRepeated() =>
      $pb.PbList<ListNotificationSettingResponse>();
  @$core.pragma('dart2js:noInline')
  static ListNotificationSettingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListNotificationSettingResponse>(
          create);
  static ListNotificationSettingResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NotificationSetting> get results => $_getList(0);
}

class NotificationDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NotificationDevice',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..aOM<$1.Identifier>(1, 'id', subBuilder: $1.Identifier.create)
    ..aOM<$2.Timestamp>(2, 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, 'updatedAt', subBuilder: $2.Timestamp.create)
    ..aOS(4, 'deviceToken')
    ..hasRequiredFields = false;

  NotificationDevice._() : super();
  factory NotificationDevice() => create();
  factory NotificationDevice.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationDevice.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NotificationDevice clone() => NotificationDevice()..mergeFromMessage(this);
  NotificationDevice copyWith(void Function(NotificationDevice) updates) =>
      super.copyWith((message) => updates(message as NotificationDevice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationDevice create() => NotificationDevice._();
  NotificationDevice createEmptyInstance() => create();
  static $pb.PbList<NotificationDevice> createRepeated() =>
      $pb.PbList<NotificationDevice>();
  @$core.pragma('dart2js:noInline')
  static NotificationDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationDevice>(create);
  static NotificationDevice _defaultInstance;

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
  $2.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($2.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get deviceToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeviceToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceToken() => clearField(4);
}

class CreateNotificationDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateNotificationDeviceRequest',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationDevice>(1, 'payload',
        subBuilder: NotificationDevice.create)
    ..hasRequiredFields = false;

  CreateNotificationDeviceRequest._() : super();
  factory CreateNotificationDeviceRequest() => create();
  factory CreateNotificationDeviceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateNotificationDeviceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateNotificationDeviceRequest clone() =>
      CreateNotificationDeviceRequest()..mergeFromMessage(this);
  CreateNotificationDeviceRequest copyWith(
          void Function(CreateNotificationDeviceRequest) updates) =>
      super.copyWith(
          (message) => updates(message as CreateNotificationDeviceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceRequest create() =>
      CreateNotificationDeviceRequest._();
  CreateNotificationDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationDeviceRequest> createRepeated() =>
      $pb.PbList<CreateNotificationDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNotificationDeviceRequest>(
          create);
  static CreateNotificationDeviceRequest _defaultInstance;

  @$pb.TagNumber(1)
  NotificationDevice get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(NotificationDevice v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  NotificationDevice ensurePayload() => $_ensure(0);
}

class CreateNotificationDeviceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CreateNotificationDeviceResponse',
      package: const $pb.PackageName('service'),
      createEmptyInstance: create)
    ..aOM<NotificationDevice>(1, 'result',
        subBuilder: NotificationDevice.create)
    ..hasRequiredFields = false;

  CreateNotificationDeviceResponse._() : super();
  factory CreateNotificationDeviceResponse() => create();
  factory CreateNotificationDeviceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateNotificationDeviceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateNotificationDeviceResponse clone() =>
      CreateNotificationDeviceResponse()..mergeFromMessage(this);
  CreateNotificationDeviceResponse copyWith(
          void Function(CreateNotificationDeviceResponse) updates) =>
      super.copyWith(
          (message) => updates(message as CreateNotificationDeviceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceResponse create() =>
      CreateNotificationDeviceResponse._();
  CreateNotificationDeviceResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNotificationDeviceResponse> createRepeated() =>
      $pb.PbList<CreateNotificationDeviceResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateNotificationDeviceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNotificationDeviceResponse>(
          create);
  static CreateNotificationDeviceResponse _defaultInstance;

  @$pb.TagNumber(1)
  NotificationDevice get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(NotificationDevice v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  NotificationDevice ensureResult() => $_ensure(0);
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
    ..aOS(7, 'profilePictureUrl')
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

  @$pb.TagNumber(7)
  $core.String get profilePictureUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set profilePictureUrl($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasProfilePictureUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearProfilePictureUrl() => clearField(7);
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

class ListProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListProfileResponse',
      package: const $pb.PackageName('service'), createEmptyInstance: create)
    ..pc<Profile>(1, 'results', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..hasRequiredFields = false;

  ListProfileResponse._() : super();
  factory ListProfileResponse() => create();
  factory ListProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListProfileResponse clone() => ListProfileResponse()..mergeFromMessage(this);
  ListProfileResponse copyWith(void Function(ListProfileResponse) updates) =>
      super.copyWith((message) => updates(message as ListProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProfileResponse create() => ListProfileResponse._();
  ListProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ListProfileResponse> createRepeated() =>
      $pb.PbList<ListProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ListProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListProfileResponse>(create);
  static ListProfileResponse _defaultInstance;

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
