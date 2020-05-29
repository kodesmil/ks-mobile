// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocationsStore on _LocationsStore, Store {
  final _$successAtom = Atom(name: '_LocationsStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LocationsStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$postLocationAsyncAction = AsyncAction('_LocationsStore.postLocation');

  @override
  Future<dynamic> postLocation(bg.Location location) {
    return _$postLocationAsyncAction.run(() => super.postLocation(location));
  }

  final _$closeAsyncAction = AsyncAction('_LocationsStore.close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading}
    ''';
  }
}
