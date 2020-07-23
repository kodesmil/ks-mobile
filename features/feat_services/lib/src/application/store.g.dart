// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceApplicationStore on _ServiceApplicationStore, Store {
  final _$subjectsAtom = Atom(name: '_ServiceApplicationStore.subjects');

  @override
  List<ServiceApplication> get subjects {
    _$subjectsAtom.reportRead();
    return super.subjects;
  }

  @override
  set subjects(List<ServiceApplication> value) {
    _$subjectsAtom.reportWrite(value, super.subjects, () {
      super.subjects = value;
    });
  }

  final _$subjectAtom = Atom(name: '_ServiceApplicationStore.subject');

  @override
  ServiceApplication get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(ServiceApplication value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceApplicationStore.fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$addApplicationFileAsyncAction =
      AsyncAction('_ServiceApplicationStore.addApplicationFile');

  @override
  Future<dynamic> addApplicationFile(String url) {
    return _$addApplicationFileAsyncAction
        .run(() => super.addApplicationFile(url));
  }

  final _$createOrUpdateAsyncAction =
      AsyncAction('_ServiceApplicationStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate() {
    return _$createOrUpdateAsyncAction.run(() => super.createOrUpdate());
  }

  final _$updateAsyncAction = AsyncAction('_ServiceApplicationStore.update');

  @override
  Future<dynamic> update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  final _$createAsyncAction = AsyncAction('_ServiceApplicationStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  @override
  String toString() {
    return '''
subjects: ${subjects},
subject: ${subject}
    ''';
  }
}
