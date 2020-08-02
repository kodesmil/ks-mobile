// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_edit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceApplicationEditStore on _ServiceApplicationEditStore, Store {
  final _$applicationAtom =
      Atom(name: '_ServiceApplicationEditStore.application');

  @override
  ServiceApplication get application {
    _$applicationAtom.reportRead();
    return super.application;
  }

  @override
  set application(ServiceApplication value) {
    _$applicationAtom.reportWrite(value, super.application, () {
      super.application = value;
    });
  }

  final _$detailsAtom = Atom(name: '_ServiceApplicationEditStore.details');

  @override
  ServiceDetails get details {
    _$detailsAtom.reportRead();
    return super.details;
  }

  @override
  set details(ServiceDetails value) {
    _$detailsAtom.reportWrite(value, super.details, () {
      super.details = value;
    });
  }

  final _$employmentAtom =
      Atom(name: '_ServiceApplicationEditStore.employment');

  @override
  ServiceEmployment get employment {
    _$employmentAtom.reportRead();
    return super.employment;
  }

  @override
  set employment(ServiceEmployment value) {
    _$employmentAtom.reportWrite(value, super.employment, () {
      super.employment = value;
    });
  }

  final _$fileAtom = Atom(name: '_ServiceApplicationEditStore.file');

  @override
  ServiceApplicationFile get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(ServiceApplicationFile value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$addApplicationFileAsyncAction =
      AsyncAction('_ServiceApplicationEditStore.addApplicationFile');

  @override
  Future<dynamic> addApplicationFile(String url) {
    return _$addApplicationFileAsyncAction
        .run(() => super.addApplicationFile(url));
  }

  final _$setApplicationAsyncAction =
      AsyncAction('_ServiceApplicationEditStore.setApplication');

  @override
  Future<dynamic> setApplication(ServiceApplication a) {
    return _$setApplicationAsyncAction.run(() => super.setApplication(a));
  }

  final _$createOrUpdateAsyncAction =
      AsyncAction('_ServiceApplicationEditStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate() {
    return _$createOrUpdateAsyncAction.run(() => super.createOrUpdate());
  }

  final _$updateAsyncAction =
      AsyncAction('_ServiceApplicationEditStore.update');

  @override
  Future<dynamic> update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  final _$createAsyncAction =
      AsyncAction('_ServiceApplicationEditStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  @override
  String toString() {
    return '''
application: ${application},
details: ${details},
employment: ${employment},
file: ${file}
    ''';
  }
}
