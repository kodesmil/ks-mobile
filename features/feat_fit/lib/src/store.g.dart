// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FitStore on _FitStore, Store {
  final _$fitsAtom = Atom(name: '_FitStore.fits');

  @override
  FitsList get fits {
    _$fitsAtom.reportRead();
    return super.fits;
  }

  @override
  set fits(FitsList value) {
    _$fitsAtom.reportWrite(value, super.fits, () {
      super.fits = value;
    });
  }

  final _$successAtom = Atom(name: '_FitStore.success');

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

  final _$loadingAtom = Atom(name: '_FitStore.loading');

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

  final _$getFitsAsyncAction = AsyncAction('_FitStore.getFits');

  @override
  Future<dynamic> getFits() {
    return _$getFitsAsyncAction.run(() => super.getFits());
  }

  @override
  String toString() {
    return '''
fits: ${fits},
success: ${success},
loading: ${loading}
    ''';
  }
}
