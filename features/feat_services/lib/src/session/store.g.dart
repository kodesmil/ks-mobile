// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceSessionStore on _ServiceSessionStore, Store {
  final _$sessionsAtom = Atom(name: '_ServiceSessionStore.sessions');

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

  final _$fetchAsyncAction = AsyncAction('_ServiceSessionStore.fetch');

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

mixin _$ServiceSessionEvaluationStore on _ServiceSessionEvaluationStore, Store {
  final _$evaluationAtom =
      Atom(name: '_ServiceSessionEvaluationStore.evaluation');

  @override
  ServiceSessionEvaluation get evaluation {
    _$evaluationAtom.reportRead();
    return super.evaluation;
  }

  @override
  set evaluation(ServiceSessionEvaluation value) {
    _$evaluationAtom.reportWrite(value, super.evaluation, () {
      super.evaluation = value;
    });
  }

  final _$createAsyncAction =
      AsyncAction('_ServiceSessionEvaluationStore.create');

  @override
  Future<dynamic> create(ServiceSession session) {
    return _$createAsyncAction.run(() => super.create(session));
  }

  @override
  String toString() {
    return '''
evaluation: ${evaluation}
    ''';
  }
}
