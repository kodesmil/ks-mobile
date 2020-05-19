// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on _ChatStore, Store {
  final _$roomsAtom = Atom(name: '_ChatStore.rooms');

  @override
  List<ChatRoom> get rooms {
    _$roomsAtom.context.enforceReadPolicy(_$roomsAtom);
    _$roomsAtom.reportObserved();
    return super.rooms;
  }

  @override
  set rooms(List<ChatRoom> value) {
    _$roomsAtom.context.conditionallyRunInAction(() {
      super.rooms = value;
      _$roomsAtom.reportChanged();
    }, _$roomsAtom, name: '${_$roomsAtom.name}_set');
  }

  final _$selectedRoomAtom = Atom(name: '_ChatStore.selectedRoom');

  @override
  ChatRoom get selectedRoom {
    _$selectedRoomAtom.context.enforceReadPolicy(_$selectedRoomAtom);
    _$selectedRoomAtom.reportObserved();
    return super.selectedRoom;
  }

  @override
  set selectedRoom(ChatRoom value) {
    _$selectedRoomAtom.context.conditionallyRunInAction(() {
      super.selectedRoom = value;
      _$selectedRoomAtom.reportChanged();
    }, _$selectedRoomAtom, name: '${_$selectedRoomAtom.name}_set');
  }

  final _$selectedMessagesAtom = Atom(name: '_ChatStore.selectedMessages');

  @override
  List<ChatMessage> get selectedMessages {
    _$selectedMessagesAtom.context.enforceReadPolicy(_$selectedMessagesAtom);
    _$selectedMessagesAtom.reportObserved();
    return super.selectedMessages;
  }

  @override
  set selectedMessages(List<ChatMessage> value) {
    _$selectedMessagesAtom.context.conditionallyRunInAction(() {
      super.selectedMessages = value;
      _$selectedMessagesAtom.reportChanged();
    }, _$selectedMessagesAtom, name: '${_$selectedMessagesAtom.name}_set');
  }

  final _$connectAsyncAction = AsyncAction('connect');

  @override
  Future<dynamic> connect() {
    return _$connectAsyncAction.run(() => super.connect());
  }

  final _$loadRoomsAsyncAction = AsyncAction('loadRooms');

  @override
  Future<dynamic> loadRooms() {
    return _$loadRoomsAsyncAction.run(() => super.loadRooms());
  }

  final _$loadRoomAsyncAction = AsyncAction('loadRoom');

  @override
  Future<dynamic> loadRoom(ChatRoom room) {
    return _$loadRoomAsyncAction.run(() => super.loadRoom(room));
  }

  final _$sendMessageAsyncAction = AsyncAction('sendMessage');

  @override
  Future<dynamic> sendMessage(String text) {
    return _$sendMessageAsyncAction.run(() => super.sendMessage(text));
  }

  final _$disposeAsyncAction = AsyncAction('dispose');

  @override
  Future<dynamic> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }
}
