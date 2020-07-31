// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceOfferStore on _ServiceOfferStore, Store {
  final _$subjectsAtom = Atom(name: '_ServiceOfferStore.subjects');

  @override
  List<ServiceOffer> get subjects {
    _$subjectsAtom.reportRead();
    return super.subjects;
  }

  @override
  set subjects(List<ServiceOffer> value) {
    _$subjectsAtom.reportWrite(value, super.subjects, () {
      super.subjects = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceOfferStore.fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$startSessionAsyncAction =
      AsyncAction('_ServiceOfferStore.startSession');

  @override
  Future<ServiceSession> startSession(ServiceOffer offer) {
    return _$startSessionAsyncAction.run(() => super.startSession(offer));
  }

  @override
  String toString() {
    return '''
subjects: ${subjects}
    ''';
  }
}
