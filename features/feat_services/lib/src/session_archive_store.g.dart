// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_archive_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceSessionArchiveStore on _ServiceSessionArchiveStore, Store {
  final _$sessionsAtom = Atom(name: '_ServiceSessionArchiveStore.sessions');

  @override
  List<ServiceSession> get sessions {
    _$sessionsAtom.reportRead();
    return super.sessions;
  }

  @override
  set sessions(List<ServiceSession> value) {
    _$sessionsAtom.reportWrite(value, super.sessions, () {
      super.sessions = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceSessionArchiveStore.fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  @override
  String toString() {
    return '''
sessions: ${sessions}
    ''';
  }
}
