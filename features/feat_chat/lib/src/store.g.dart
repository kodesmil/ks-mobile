// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on _ChatStore, Store {
  Computed<ChatRoomParticipant> _$selectedMyParticipationComputed;

  @override
  ChatRoomParticipant get selectedMyParticipation =>
      (_$selectedMyParticipationComputed ??= Computed<ChatRoomParticipant>(
              () => super.selectedMyParticipation,
              name: '_ChatStore.selectedMyParticipation'))
          .value;
  Computed<Map<String, ChatMessagePlace>> _$chatMessagePlacesComputed;

  @override
  Map<String, ChatMessagePlace> get chatMessagePlaces =>
      (_$chatMessagePlacesComputed ??= Computed<Map<String, ChatMessagePlace>>(
              () => super.chatMessagePlaces,
              name: '_ChatStore.chatMessagePlaces'))
          .value;

  final _$roomsAtom = Atom(name: '_ChatStore.rooms');

  @override
  List<ChatRoom> get rooms {
    _$roomsAtom.reportRead();
    return super.rooms;
  }

  @override
  set rooms(List<ChatRoom> value) {
    _$roomsAtom.reportWrite(value, super.rooms, () {
      super.rooms = value;
    });
  }

  final _$selectedRoomAtom = Atom(name: '_ChatStore.selectedRoom');

  @override
  ChatRoom get selectedRoom {
    _$selectedRoomAtom.reportRead();
    return super.selectedRoom;
  }

  @override
  set selectedRoom(ChatRoom value) {
    _$selectedRoomAtom.reportWrite(value, super.selectedRoom, () {
      super.selectedRoom = value;
    });
  }

  final _$selectedMessagesAtom = Atom(name: '_ChatStore.selectedMessages');

  @override
  List<ChatMessage> get selectedMessages {
    _$selectedMessagesAtom.reportRead();
    return super.selectedMessages;
  }

  @override
  set selectedMessages(List<ChatMessage> value) {
    _$selectedMessagesAtom.reportWrite(value, super.selectedMessages, () {
      super.selectedMessages = value;
    });
  }

  final _$connectAsyncAction = AsyncAction('_ChatStore.connect');

  @override
  Future<dynamic> connect() {
    return _$connectAsyncAction.run(() => super.connect());
  }

  final _$loadRoomsAsyncAction = AsyncAction('_ChatStore.loadRooms');

  @override
  Future<dynamic> loadRooms() {
    return _$loadRoomsAsyncAction.run(() => super.loadRooms());
  }

  final _$loadRoomAsyncAction = AsyncAction('_ChatStore.loadRoom');

  @override
  Future<dynamic> loadRoom(ChatRoom room) {
    return _$loadRoomAsyncAction.run(() => super.loadRoom(room));
  }

  final _$sendMessageAsyncAction = AsyncAction('_ChatStore.sendMessage');

  @override
  Future<dynamic> sendMessage(String text) {
    return _$sendMessageAsyncAction.run(() => super.sendMessage(text));
  }

  final _$disposeAsyncAction = AsyncAction('_ChatStore.dispose');

  @override
  Future<dynamic> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  @override
  String toString() {
    return '''
rooms: ${rooms},
selectedRoom: ${selectedRoom},
selectedMessages: ${selectedMessages},
selectedMyParticipation: ${selectedMyParticipation},
chatMessagePlaces: ${chatMessagePlaces}
    ''';
  }
}
