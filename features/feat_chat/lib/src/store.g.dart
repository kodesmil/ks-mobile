// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on _ChatStore, Store {
  final _$messagesAtom = Atom(name: '_ChatStore.messages');

  @override
  List<ChatMessage> get messages {
    _$messagesAtom.context.enforceReadPolicy(_$messagesAtom);
    _$messagesAtom.reportObserved();
    return super.messages;
  }

  @override
  set messages(List<ChatMessage> value) {
    _$messagesAtom.context.conditionallyRunInAction(() {
      super.messages = value;
      _$messagesAtom.reportChanged();
    }, _$messagesAtom, name: '${_$messagesAtom.name}_set');
  }

  final _$connectAsyncAction = AsyncAction('connect');

  @override
  Future<dynamic> connect() {
    return _$connectAsyncAction.run(() => super.connect());
  }

  final _$joinAsyncAction = AsyncAction('join');

  @override
  Future<dynamic> join() {
    return _$joinAsyncAction.run(() => super.join());
  }

  final _$sendMessageAsyncAction = AsyncAction('sendMessage');

  @override
  Future<dynamic> sendMessage() {
    return _$sendMessageAsyncAction.run(() => super.sendMessage());
  }

  final _$disposeAsyncAction = AsyncAction('dispose');

  @override
  Future<dynamic> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }
}
