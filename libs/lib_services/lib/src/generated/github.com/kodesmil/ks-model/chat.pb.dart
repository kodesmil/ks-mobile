///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $6;
import '../../../google/protobuf/timestamp.pb.dart' as $8;
import 'profile.pb.dart' as $1;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $7;

import 'chat.pbenum.dart';

export 'chat.pbenum.dart';

class ChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatMessage', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..aOM<$8.Timestamp>(2, 'createdAt', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(3, 'updatedAt', subBuilder: $8.Timestamp.create)
    ..aOS(4, 'text')
    ..aOM<ChatRoomParticipant>(5, 'author', subBuilder: ChatRoomParticipant.create)
    ..aOM<$6.Identifier>(6, 'authorId', subBuilder: $6.Identifier.create)
    ..e<ChatMessage_Status>(7, 'status', $pb.PbFieldType.OE, defaultOrMaker: ChatMessage_Status.NOT_DELIVERED, valueOf: ChatMessage_Status.valueOf, enumValues: ChatMessage_Status.values)
    ..hasRequiredFields = false
  ;

  ChatMessage._() : super();
  factory ChatMessage() => create();
  factory ChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  ChatMessage copyWith(void Function(ChatMessage) updates) => super.copyWith((message) => updates(message as ChatMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($8.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $8.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => clearField(4);

  @$pb.TagNumber(5)
  ChatRoomParticipant get author => $_getN(4);
  @$pb.TagNumber(5)
  set author(ChatRoomParticipant v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthor() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthor() => clearField(5);
  @$pb.TagNumber(5)
  ChatRoomParticipant ensureAuthor() => $_ensure(4);

  @$pb.TagNumber(6)
  $6.Identifier get authorId => $_getN(5);
  @$pb.TagNumber(6)
  set authorId($6.Identifier v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuthorId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthorId() => clearField(6);
  @$pb.TagNumber(6)
  $6.Identifier ensureAuthorId() => $_ensure(5);

  @$pb.TagNumber(7)
  ChatMessage_Status get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(ChatMessage_Status v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);
}

class ChatRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatRoom', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..aOM<$8.Timestamp>(2, 'createdAt', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(3, 'updatedAt', subBuilder: $8.Timestamp.create)
    ..pc<ChatRoomParticipant>(4, 'participants', $pb.PbFieldType.PM, subBuilder: ChatRoomParticipant.create)
    ..aOS(5, 'name')
    ..hasRequiredFields = false
  ;

  ChatRoom._() : super();
  factory ChatRoom() => create();
  factory ChatRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChatRoom clone() => ChatRoom()..mergeFromMessage(this);
  ChatRoom copyWith(void Function(ChatRoom) updates) => super.copyWith((message) => updates(message as ChatRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatRoom create() => ChatRoom._();
  ChatRoom createEmptyInstance() => create();
  static $pb.PbList<ChatRoom> createRepeated() => $pb.PbList<ChatRoom>();
  @$core.pragma('dart2js:noInline')
  static ChatRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoom>(create);
  static ChatRoom _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($8.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $8.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<ChatRoomParticipant> get participants => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);
}

class ChatRoomParticipant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatRoomParticipant', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$6.Identifier>(1, 'id', subBuilder: $6.Identifier.create)
    ..aOM<$8.Timestamp>(2, 'createdAt', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(3, 'updatedAt', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(4, 'lastSeenAt', subBuilder: $8.Timestamp.create)
    ..aOM<$1.Profile>(5, 'profile', subBuilder: $1.Profile.create)
    ..aOM<ChatRoom>(6, 'chatRoom', subBuilder: ChatRoom.create)
    ..hasRequiredFields = false
  ;

  ChatRoomParticipant._() : super();
  factory ChatRoomParticipant() => create();
  factory ChatRoomParticipant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatRoomParticipant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChatRoomParticipant clone() => ChatRoomParticipant()..mergeFromMessage(this);
  ChatRoomParticipant copyWith(void Function(ChatRoomParticipant) updates) => super.copyWith((message) => updates(message as ChatRoomParticipant));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatRoomParticipant create() => ChatRoomParticipant._();
  ChatRoomParticipant createEmptyInstance() => create();
  static $pb.PbList<ChatRoomParticipant> createRepeated() => $pb.PbList<ChatRoomParticipant>();
  @$core.pragma('dart2js:noInline')
  static ChatRoomParticipant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoomParticipant>(create);
  static ChatRoomParticipant _defaultInstance;

  @$pb.TagNumber(1)
  $6.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($6.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $6.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($8.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $8.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $8.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $8.Timestamp get lastSeenAt => $_getN(3);
  @$pb.TagNumber(4)
  set lastSeenAt($8.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastSeenAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastSeenAt() => clearField(4);
  @$pb.TagNumber(4)
  $8.Timestamp ensureLastSeenAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Profile get profile => $_getN(4);
  @$pb.TagNumber(5)
  set profile($1.Profile v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfile() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfile() => clearField(5);
  @$pb.TagNumber(5)
  $1.Profile ensureProfile() => $_ensure(4);

  @$pb.TagNumber(6)
  ChatRoom get chatRoom => $_getN(5);
  @$pb.TagNumber(6)
  set chatRoom(ChatRoom v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasChatRoom() => $_has(5);
  @$pb.TagNumber(6)
  void clearChatRoom() => clearField(6);
  @$pb.TagNumber(6)
  ChatRoom ensureChatRoom() => $_ensure(5);
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
  static const $core.Map<$core.int, StreamChatEvent_Event> _StreamChatEvent_EventByTag = {
    1 : StreamChatEvent_Event.none,
    2 : StreamChatEvent_Event.loadRoom,
    3 : StreamChatEvent_Event.loadRooms,
    4 : StreamChatEvent_Event.leaveRoom,
    5 : StreamChatEvent_Event.leaveRooms,
    6 : StreamChatEvent_Event.sendRooms,
    7 : StreamChatEvent_Event.sendMessage,
    8 : StreamChatEvent_Event.sendMessages,
    9 : StreamChatEvent_Event.forceClose,
    10 : StreamChatEvent_Event.inviteProfile,
    0 : StreamChatEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamChatEvent', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<EventNone>(1, 'none', subBuilder: EventNone.create)
    ..aOM<EventLoadRoom>(2, 'loadRoom', subBuilder: EventLoadRoom.create)
    ..aOM<EventLoadRooms>(3, 'loadRooms', subBuilder: EventLoadRooms.create)
    ..aOM<EventLeaveRoom>(4, 'leaveRoom', subBuilder: EventLeaveRoom.create)
    ..aOM<EventLeaveRooms>(5, 'leaveRooms', subBuilder: EventLeaveRooms.create)
    ..aOM<EventSendRooms>(6, 'sendRooms', subBuilder: EventSendRooms.create)
    ..aOM<EventSendMessage>(7, 'sendMessage', subBuilder: EventSendMessage.create)
    ..aOM<EventSendMessages>(8, 'sendMessages', subBuilder: EventSendMessages.create)
    ..aOM<EventForceClose>(9, 'forceClose', subBuilder: EventForceClose.create)
    ..aOM<EventInviteProfile>(10, 'inviteProfile', subBuilder: EventInviteProfile.create)
    ..hasRequiredFields = false
  ;

  StreamChatEvent._() : super();
  factory StreamChatEvent() => create();
  factory StreamChatEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamChatEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StreamChatEvent clone() => StreamChatEvent()..mergeFromMessage(this);
  StreamChatEvent copyWith(void Function(StreamChatEvent) updates) => super.copyWith((message) => updates(message as StreamChatEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamChatEvent create() => StreamChatEvent._();
  StreamChatEvent createEmptyInstance() => create();
  static $pb.PbList<StreamChatEvent> createRepeated() => $pb.PbList<StreamChatEvent>();
  @$core.pragma('dart2js:noInline')
  static StreamChatEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamChatEvent>(create);
  static StreamChatEvent _defaultInstance;

  StreamChatEvent_Event whichEvent() => _StreamChatEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventNone get none => $_getN(0);
  @$pb.TagNumber(1)
  set none(EventNone v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNone() => $_has(0);
  @$pb.TagNumber(1)
  void clearNone() => clearField(1);
  @$pb.TagNumber(1)
  EventNone ensureNone() => $_ensure(0);

  @$pb.TagNumber(2)
  EventLoadRoom get loadRoom => $_getN(1);
  @$pb.TagNumber(2)
  set loadRoom(EventLoadRoom v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoadRoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoadRoom() => clearField(2);
  @$pb.TagNumber(2)
  EventLoadRoom ensureLoadRoom() => $_ensure(1);

  @$pb.TagNumber(3)
  EventLoadRooms get loadRooms => $_getN(2);
  @$pb.TagNumber(3)
  set loadRooms(EventLoadRooms v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLoadRooms() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoadRooms() => clearField(3);
  @$pb.TagNumber(3)
  EventLoadRooms ensureLoadRooms() => $_ensure(2);

  @$pb.TagNumber(4)
  EventLeaveRoom get leaveRoom => $_getN(3);
  @$pb.TagNumber(4)
  set leaveRoom(EventLeaveRoom v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLeaveRoom() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeaveRoom() => clearField(4);
  @$pb.TagNumber(4)
  EventLeaveRoom ensureLeaveRoom() => $_ensure(3);

  @$pb.TagNumber(5)
  EventLeaveRooms get leaveRooms => $_getN(4);
  @$pb.TagNumber(5)
  set leaveRooms(EventLeaveRooms v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLeaveRooms() => $_has(4);
  @$pb.TagNumber(5)
  void clearLeaveRooms() => clearField(5);
  @$pb.TagNumber(5)
  EventLeaveRooms ensureLeaveRooms() => $_ensure(4);

  @$pb.TagNumber(6)
  EventSendRooms get sendRooms => $_getN(5);
  @$pb.TagNumber(6)
  set sendRooms(EventSendRooms v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendRooms() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendRooms() => clearField(6);
  @$pb.TagNumber(6)
  EventSendRooms ensureSendRooms() => $_ensure(5);

  @$pb.TagNumber(7)
  EventSendMessage get sendMessage => $_getN(6);
  @$pb.TagNumber(7)
  set sendMessage(EventSendMessage v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSendMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendMessage() => clearField(7);
  @$pb.TagNumber(7)
  EventSendMessage ensureSendMessage() => $_ensure(6);

  @$pb.TagNumber(8)
  EventSendMessages get sendMessages => $_getN(7);
  @$pb.TagNumber(8)
  set sendMessages(EventSendMessages v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSendMessages() => $_has(7);
  @$pb.TagNumber(8)
  void clearSendMessages() => clearField(8);
  @$pb.TagNumber(8)
  EventSendMessages ensureSendMessages() => $_ensure(7);

  @$pb.TagNumber(9)
  EventForceClose get forceClose => $_getN(8);
  @$pb.TagNumber(9)
  set forceClose(EventForceClose v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasForceClose() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceClose() => clearField(9);
  @$pb.TagNumber(9)
  EventForceClose ensureForceClose() => $_ensure(8);

  @$pb.TagNumber(10)
  EventInviteProfile get inviteProfile => $_getN(9);
  @$pb.TagNumber(10)
  set inviteProfile(EventInviteProfile v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasInviteProfile() => $_has(9);
  @$pb.TagNumber(10)
  void clearInviteProfile() => clearField(10);
  @$pb.TagNumber(10)
  EventInviteProfile ensureInviteProfile() => $_ensure(9);
}

class EventNone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventNone', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EventNone._() : super();
  factory EventNone() => create();
  factory EventNone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventNone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventNone clone() => EventNone()..mergeFromMessage(this);
  EventNone copyWith(void Function(EventNone) updates) => super.copyWith((message) => updates(message as EventNone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventNone create() => EventNone._();
  EventNone createEmptyInstance() => create();
  static $pb.PbList<EventNone> createRepeated() => $pb.PbList<EventNone>();
  @$core.pragma('dart2js:noInline')
  static EventNone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventNone>(create);
  static EventNone _defaultInstance;
}

class EventLoadRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLoadRoom', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ChatRoom>(1, 'room', subBuilder: ChatRoom.create)
    ..aOM<ChatRoomParticipant>(2, 'me', subBuilder: ChatRoomParticipant.create)
    ..hasRequiredFields = false
  ;

  EventLoadRoom._() : super();
  factory EventLoadRoom() => create();
  factory EventLoadRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventLoadRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventLoadRoom clone() => EventLoadRoom()..mergeFromMessage(this);
  EventLoadRoom copyWith(void Function(EventLoadRoom) updates) => super.copyWith((message) => updates(message as EventLoadRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLoadRoom create() => EventLoadRoom._();
  EventLoadRoom createEmptyInstance() => create();
  static $pb.PbList<EventLoadRoom> createRepeated() => $pb.PbList<EventLoadRoom>();
  @$core.pragma('dart2js:noInline')
  static EventLoadRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventLoadRoom>(create);
  static EventLoadRoom _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ChatRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoom ensureRoom() => $_ensure(0);

  @$pb.TagNumber(2)
  ChatRoomParticipant get me => $_getN(1);
  @$pb.TagNumber(2)
  set me(ChatRoomParticipant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMe() => $_has(1);
  @$pb.TagNumber(2)
  void clearMe() => clearField(2);
  @$pb.TagNumber(2)
  ChatRoomParticipant ensureMe() => $_ensure(1);
}

class EventLoadRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLoadRooms', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EventLoadRooms._() : super();
  factory EventLoadRooms() => create();
  factory EventLoadRooms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventLoadRooms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventLoadRooms clone() => EventLoadRooms()..mergeFromMessage(this);
  EventLoadRooms copyWith(void Function(EventLoadRooms) updates) => super.copyWith((message) => updates(message as EventLoadRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLoadRooms create() => EventLoadRooms._();
  EventLoadRooms createEmptyInstance() => create();
  static $pb.PbList<EventLoadRooms> createRepeated() => $pb.PbList<EventLoadRooms>();
  @$core.pragma('dart2js:noInline')
  static EventLoadRooms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventLoadRooms>(create);
  static EventLoadRooms _defaultInstance;
}

class EventLeaveRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLeaveRoom', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ChatRoom>(1, 'room', subBuilder: ChatRoom.create)
    ..hasRequiredFields = false
  ;

  EventLeaveRoom._() : super();
  factory EventLeaveRoom() => create();
  factory EventLeaveRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventLeaveRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventLeaveRoom clone() => EventLeaveRoom()..mergeFromMessage(this);
  EventLeaveRoom copyWith(void Function(EventLeaveRoom) updates) => super.copyWith((message) => updates(message as EventLeaveRoom));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLeaveRoom create() => EventLeaveRoom._();
  EventLeaveRoom createEmptyInstance() => create();
  static $pb.PbList<EventLeaveRoom> createRepeated() => $pb.PbList<EventLeaveRoom>();
  @$core.pragma('dart2js:noInline')
  static EventLeaveRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventLeaveRoom>(create);
  static EventLeaveRoom _defaultInstance;

  @$pb.TagNumber(1)
  ChatRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(ChatRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  ChatRoom ensureRoom() => $_ensure(0);
}

class EventLeaveRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventLeaveRooms', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EventLeaveRooms._() : super();
  factory EventLeaveRooms() => create();
  factory EventLeaveRooms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventLeaveRooms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventLeaveRooms clone() => EventLeaveRooms()..mergeFromMessage(this);
  EventLeaveRooms copyWith(void Function(EventLeaveRooms) updates) => super.copyWith((message) => updates(message as EventLeaveRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventLeaveRooms create() => EventLeaveRooms._();
  EventLeaveRooms createEmptyInstance() => create();
  static $pb.PbList<EventLeaveRooms> createRepeated() => $pb.PbList<EventLeaveRooms>();
  @$core.pragma('dart2js:noInline')
  static EventLeaveRooms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventLeaveRooms>(create);
  static EventLeaveRooms _defaultInstance;
}

class EventSendMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendMessage', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<ChatMessage>(1, 'message', subBuilder: ChatMessage.create)
    ..hasRequiredFields = false
  ;

  EventSendMessage._() : super();
  factory EventSendMessage() => create();
  factory EventSendMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSendMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSendMessage clone() => EventSendMessage()..mergeFromMessage(this);
  EventSendMessage copyWith(void Function(EventSendMessage) updates) => super.copyWith((message) => updates(message as EventSendMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendMessage create() => EventSendMessage._();
  EventSendMessage createEmptyInstance() => create();
  static $pb.PbList<EventSendMessage> createRepeated() => $pb.PbList<EventSendMessage>();
  @$core.pragma('dart2js:noInline')
  static EventSendMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSendMessage>(create);
  static EventSendMessage _defaultInstance;

  @$pb.TagNumber(1)
  ChatMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(ChatMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  ChatMessage ensureMessage() => $_ensure(0);
}

class EventSendMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendMessages', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ChatMessage>(1, 'messages', $pb.PbFieldType.PM, subBuilder: ChatMessage.create)
    ..hasRequiredFields = false
  ;

  EventSendMessages._() : super();
  factory EventSendMessages() => create();
  factory EventSendMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSendMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSendMessages clone() => EventSendMessages()..mergeFromMessage(this);
  EventSendMessages copyWith(void Function(EventSendMessages) updates) => super.copyWith((message) => updates(message as EventSendMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendMessages create() => EventSendMessages._();
  EventSendMessages createEmptyInstance() => create();
  static $pb.PbList<EventSendMessages> createRepeated() => $pb.PbList<EventSendMessages>();
  @$core.pragma('dart2js:noInline')
  static EventSendMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSendMessages>(create);
  static EventSendMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatMessage> get messages => $_getList(0);
}

class EventSendRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSendRooms', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ChatRoom>(1, 'rooms', $pb.PbFieldType.PM, subBuilder: ChatRoom.create)
    ..hasRequiredFields = false
  ;

  EventSendRooms._() : super();
  factory EventSendRooms() => create();
  factory EventSendRooms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSendRooms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventSendRooms clone() => EventSendRooms()..mergeFromMessage(this);
  EventSendRooms copyWith(void Function(EventSendRooms) updates) => super.copyWith((message) => updates(message as EventSendRooms));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSendRooms create() => EventSendRooms._();
  EventSendRooms createEmptyInstance() => create();
  static $pb.PbList<EventSendRooms> createRepeated() => $pb.PbList<EventSendRooms>();
  @$core.pragma('dart2js:noInline')
  static EventSendRooms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSendRooms>(create);
  static EventSendRooms _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatRoom> get rooms => $_getList(0);
}

class EventInviteProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventInviteProfile', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$1.Profile>(1, 'user', subBuilder: $1.Profile.create)
    ..hasRequiredFields = false
  ;

  EventInviteProfile._() : super();
  factory EventInviteProfile() => create();
  factory EventInviteProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventInviteProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventInviteProfile clone() => EventInviteProfile()..mergeFromMessage(this);
  EventInviteProfile copyWith(void Function(EventInviteProfile) updates) => super.copyWith((message) => updates(message as EventInviteProfile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventInviteProfile create() => EventInviteProfile._();
  EventInviteProfile createEmptyInstance() => create();
  static $pb.PbList<EventInviteProfile> createRepeated() => $pb.PbList<EventInviteProfile>();
  @$core.pragma('dart2js:noInline')
  static EventInviteProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventInviteProfile>(create);
  static EventInviteProfile _defaultInstance;

  @$pb.TagNumber(1)
  $1.Profile get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($1.Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $1.Profile ensureUser() => $_ensure(0);
}

class EventForceClose extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventForceClose', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EventForceClose._() : super();
  factory EventForceClose() => create();
  factory EventForceClose.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventForceClose.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventForceClose clone() => EventForceClose()..mergeFromMessage(this);
  EventForceClose copyWith(void Function(EventForceClose) updates) => super.copyWith((message) => updates(message as EventForceClose));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventForceClose create() => EventForceClose._();
  EventForceClose createEmptyInstance() => create();
  static $pb.PbList<EventForceClose> createRepeated() => $pb.PbList<EventForceClose>();
  @$core.pragma('dart2js:noInline')
  static EventForceClose getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventForceClose>(create);
  static EventForceClose _defaultInstance;
}

class ListChatMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatMessageRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Filtering>(1, 'filter', subBuilder: $7.Filtering.create)
    ..aOM<$7.Sorting>(2, 'orderBy', subBuilder: $7.Sorting.create)
    ..aOM<$7.FieldSelection>(3, 'fields', subBuilder: $7.FieldSelection.create)
    ..aOM<$7.Pagination>(4, 'paging', subBuilder: $7.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListChatMessageRequest._() : super();
  factory ListChatMessageRequest() => create();
  factory ListChatMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChatMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListChatMessageRequest clone() => ListChatMessageRequest()..mergeFromMessage(this);
  ListChatMessageRequest copyWith(void Function(ListChatMessageRequest) updates) => super.copyWith((message) => updates(message as ListChatMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatMessageRequest create() => ListChatMessageRequest._();
  ListChatMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ListChatMessageRequest> createRepeated() => $pb.PbList<ListChatMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ListChatMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChatMessageRequest>(create);
  static ListChatMessageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $7.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($7.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $7.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($7.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $7.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($7.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $7.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($7.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $7.Pagination ensurePaging() => $_ensure(3);
}

class ListChatMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatMessageResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ChatMessage>(1, 'results', $pb.PbFieldType.PM, subBuilder: ChatMessage.create)
    ..hasRequiredFields = false
  ;

  ListChatMessageResponse._() : super();
  factory ListChatMessageResponse() => create();
  factory ListChatMessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChatMessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListChatMessageResponse clone() => ListChatMessageResponse()..mergeFromMessage(this);
  ListChatMessageResponse copyWith(void Function(ListChatMessageResponse) updates) => super.copyWith((message) => updates(message as ListChatMessageResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatMessageResponse create() => ListChatMessageResponse._();
  ListChatMessageResponse createEmptyInstance() => create();
  static $pb.PbList<ListChatMessageResponse> createRepeated() => $pb.PbList<ListChatMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListChatMessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChatMessageResponse>(create);
  static ListChatMessageResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatMessage> get results => $_getList(0);
}

class ListChatRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatRoomRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$7.Filtering>(1, 'filter', subBuilder: $7.Filtering.create)
    ..aOM<$7.Sorting>(2, 'orderBy', subBuilder: $7.Sorting.create)
    ..aOM<$7.FieldSelection>(3, 'fields', subBuilder: $7.FieldSelection.create)
    ..aOM<$7.Pagination>(4, 'paging', subBuilder: $7.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListChatRoomRequest._() : super();
  factory ListChatRoomRequest() => create();
  factory ListChatRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChatRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListChatRoomRequest clone() => ListChatRoomRequest()..mergeFromMessage(this);
  ListChatRoomRequest copyWith(void Function(ListChatRoomRequest) updates) => super.copyWith((message) => updates(message as ListChatRoomRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatRoomRequest create() => ListChatRoomRequest._();
  ListChatRoomRequest createEmptyInstance() => create();
  static $pb.PbList<ListChatRoomRequest> createRepeated() => $pb.PbList<ListChatRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static ListChatRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChatRoomRequest>(create);
  static ListChatRoomRequest _defaultInstance;

  @$pb.TagNumber(1)
  $7.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($7.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $7.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($7.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $7.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($7.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $7.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($7.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $7.Pagination ensurePaging() => $_ensure(3);
}

class ListChatRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChatRoomResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<ChatRoom>(1, 'results', $pb.PbFieldType.PM, subBuilder: ChatRoom.create)
    ..hasRequiredFields = false
  ;

  ListChatRoomResponse._() : super();
  factory ListChatRoomResponse() => create();
  factory ListChatRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChatRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListChatRoomResponse clone() => ListChatRoomResponse()..mergeFromMessage(this);
  ListChatRoomResponse copyWith(void Function(ListChatRoomResponse) updates) => super.copyWith((message) => updates(message as ListChatRoomResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChatRoomResponse create() => ListChatRoomResponse._();
  ListChatRoomResponse createEmptyInstance() => create();
  static $pb.PbList<ListChatRoomResponse> createRepeated() => $pb.PbList<ListChatRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static ListChatRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChatRoomResponse>(create);
  static ListChatRoomResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChatRoom> get results => $_getList(0);
}

