// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceApplicationFileStore on _ServiceApplicationFileStore, Store {
  final _$subjectAtom = Atom(name: '_ServiceApplicationFileStore.subject');

  @override
  ServiceApplicationFile get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(ServiceApplicationFile value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceApplicationFileStore.fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$createAsyncAction =
      AsyncAction('_ServiceApplicationFileStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  @override
  String toString() {
    return '''
subject: ${subject}
    ''';
  }
}
