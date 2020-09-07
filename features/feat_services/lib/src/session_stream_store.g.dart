// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_stream_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SessionStreamStore on _SessionStreamStore, Store {
  final _$sessionAtom = Atom(name: '_SessionStreamStore.session');

  @override
  ServiceSession get session {
    _$sessionAtom.reportRead();
    return super.session;
  }

  @override
  set session(ServiceSession value) {
    _$sessionAtom.reportWrite(value, super.session, () {
      super.session = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_SessionStreamStore.init');

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$connectAsyncAction = AsyncAction('_SessionStreamStore.connect');

  @override
  Future<dynamic> connect() {
    return _$connectAsyncAction.run(() => super.connect());
  }

  final _$joinSessionAsyncAction =
      AsyncAction('_SessionStreamStore.joinSession');

  @override
  Future<dynamic> joinSession() {
    return _$joinSessionAsyncAction.run(() => super.joinSession());
  }

  @override
  String toString() {
    return '''
session: ${session}
    ''';
  }
}
