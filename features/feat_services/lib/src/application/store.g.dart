// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceApplicationJoinStore on _ServiceApplicationJoinStore, Store {
  final _$detailsAtom = Atom(name: '_ServiceApplicationJoinStore.details');

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
      Atom(name: '_ServiceApplicationJoinStore.employment');

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

  final _$providerAtom = Atom(name: '_ServiceApplicationJoinStore.provider');

  @override
  ServiceProvider get provider {
    _$providerAtom.reportRead();
    return super.provider;
  }

  @override
  set provider(ServiceProvider value) {
    _$providerAtom.reportWrite(value, super.provider, () {
      super.provider = value;
    });
  }

  final _$fileAtom = Atom(name: '_ServiceApplicationJoinStore.file');

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
      AsyncAction('_ServiceApplicationJoinStore.addApplicationFile');

  @override
  Future<dynamic> addApplicationFile(String url) {
    return _$addApplicationFileAsyncAction
        .run(() => super.addApplicationFile(url));
  }

  final _$createOrUpdateAsyncAction =
      AsyncAction('_ServiceApplicationJoinStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate(ServiceApplication application) {
    return _$createOrUpdateAsyncAction
        .run(() => super.createOrUpdate(application));
  }

  final _$updateAsyncAction =
      AsyncAction('_ServiceApplicationJoinStore.update');

  @override
  Future<dynamic> update(ServiceApplication application) {
    return _$updateAsyncAction.run(() => super.update(application));
  }

  final _$createAsyncAction =
      AsyncAction('_ServiceApplicationJoinStore.create');

  @override
  Future<dynamic> create(ServiceApplication application) {
    return _$createAsyncAction.run(() => super.create(application));
  }

  @override
  String toString() {
    return '''
details: ${details},
employment: ${employment},
provider: ${provider},
file: ${file}
    ''';
  }
}

mixin _$ServiceApplicationListStore on _ServiceApplicationListStore, Store {
  final _$subjectsAtom = Atom(name: '_ServiceApplicationListStore.subjects');

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

  final _$fetchAsyncAction = AsyncAction('_ServiceApplicationListStore.fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  @override
  String toString() {
    return '''
subjects: ${subjects}
    ''';
  }
}
