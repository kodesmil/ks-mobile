// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceStore on _ServiceStore, Store {
  final _$serviceAtom = Atom(name: '_ServiceStore.service');

  @override
  Service get service {
    _$serviceAtom.reportRead();
    return super.service;
  }

  @override
  set service(Service value) {
    _$serviceAtom.reportWrite(value, super.service, () {
      super.service = value;
    });
  }

  final _$servicesAtom = Atom(name: '_ServiceStore.services');

  @override
  List<Service> get services {
    _$servicesAtom.reportRead();
    return super.services;
  }

  @override
  set services(List<Service> value) {
    _$servicesAtom.reportWrite(value, super.services, () {
      super.services = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceStore.fetch');

  @override
  Future<dynamic> fetch(String tagKey) {
    return _$fetchAsyncAction.run(() => super.fetch(tagKey));
  }

  final _$createAsyncAction = AsyncAction('_ServiceStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  @override
  String toString() {
    return '''
service: ${service},
services: ${services}
    ''';
  }
}
