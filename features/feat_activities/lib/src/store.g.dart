// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ActivitiesStore on _ActivitiesStore, Store {
  final _$successAtom = Atom(name: '_ActivitiesStore.success');

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

  final _$loadingAtom = Atom(name: '_ActivitiesStore.loading');

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

  final _$sendDataAsyncAction = AsyncAction('_ActivitiesStore.sendData');

  @override
  Future<dynamic> sendData() {
    return _$sendDataAsyncAction.run(() => super.sendData());
  }

  final _$closeAsyncAction = AsyncAction('_ActivitiesStore.close');

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
