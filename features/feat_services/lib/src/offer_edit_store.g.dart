// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_edit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceOfferEditStore on _ServiceOfferEditStore, Store {
  final _$offerAtom = Atom(name: '_ServiceOfferEditStore.offer');

  @override
  ServiceOffer get offer {
    _$offerAtom.reportRead();
    return super.offer;
  }

  @override
  set offer(ServiceOffer value) {
    _$offerAtom.reportWrite(value, super.offer, () {
      super.offer = value;
    });
  }

  final _$employmentAtom = Atom(name: '_ServiceOfferEditStore.employment');

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

  final _$setApplicationAsyncAction =
      AsyncAction('_ServiceOfferEditStore.setApplication');

  @override
  Future<dynamic> setApplication(ServiceProvider p, ServiceOffer o) {
    return _$setApplicationAsyncAction.run(() => super.setApplication(p, o));
  }

  final _$createOrUpdateAsyncAction =
      AsyncAction('_ServiceOfferEditStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate() {
    return _$createOrUpdateAsyncAction.run(() => super.createOrUpdate());
  }

  final _$updateAsyncAction = AsyncAction('_ServiceOfferEditStore.update');

  @override
  Future<dynamic> update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  final _$createAsyncAction = AsyncAction('_ServiceOfferEditStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  @override
  String toString() {
    return '''
offer: ${offer},
employment: ${employment}
    ''';
  }
}
