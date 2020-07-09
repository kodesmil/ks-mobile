// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServiceApplicationStore on _ServiceApplicationStore, Store {
  final _$ServiceApplicationAtom =
      Atom(name: '_ServiceApplicationStore.ServiceApplication');

  @override
  List<Service> get ServiceApplication {
    _$ServiceApplicationAtom.reportRead();
    return super.ServiceApplication;
  }

  @override
  set ServiceApplication(List<Service> value) {
    _$ServiceApplicationAtom.reportWrite(value, super.ServiceApplication, () {
      super.ServiceApplication = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_ServiceApplicationStore.fetch');

  @override
  Future<dynamic> fetch(String tagKey) {
    return _$fetchAsyncAction.run(() => super.fetch(tagKey));
  }

  @override
  String toString() {
    return '''
ServiceApplication: ${ServiceApplication}
    ''';
  }
}
