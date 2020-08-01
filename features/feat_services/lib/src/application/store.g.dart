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

  final _$applicationAtom = Atom(name: '_ServiceApplicationStore.application');

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

  final _$detailsAtom = Atom(name: '_ServiceApplicationStore.details');

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

  final _$contactAtom = Atom(name: '_ServiceApplicationStore.contact');

  @override
  ServiceDetailsContact get contact {
    _$contactAtom.reportRead();
    return super.contact;
  }

  @override
  set contact(ServiceDetailsContact value) {
    _$contactAtom.reportWrite(value, super.contact, () {
      super.contact = value;
    });
  }

  final _$companyAtom = Atom(name: '_ServiceApplicationStore.company');

  @override
  ServiceDetailsCompany get company {
    _$companyAtom.reportRead();
    return super.company;
  }

  @override
  set company(ServiceDetailsCompany value) {
    _$companyAtom.reportWrite(value, super.company, () {
      super.company = value;
    });
  }

  final _$providerAtom = Atom(name: '_ServiceApplicationStore.provider');

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
application: ${application},
details: ${details},
contact: ${contact},
company: ${company},
provider: ${provider}
    ''';
  }
}
