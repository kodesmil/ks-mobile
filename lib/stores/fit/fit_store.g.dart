// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FitStore on _FitStore, Store {
  final _$fitsAtom = Atom(name: '_FitStore.fits');

  @override
  FitsList get fits {
    _$fitsAtom.context.enforceReadPolicy(_$fitsAtom);
    _$fitsAtom.reportObserved();
    return super.fits;
  }

  @override
  set fits(FitsList value) {
    _$fitsAtom.context.conditionallyRunInAction(() {
      super.fits = value;
      _$fitsAtom.reportChanged();
    }, _$fitsAtom, name: '${_$fitsAtom.name}_set');
  }

  final _$successAtom = Atom(name: '_FitStore.success');

  @override
  bool get success {
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_FitStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$getFitsAsyncAction = AsyncAction('getFits');

  @override
  Future<dynamic> getFits() {
    return _$getFitsAsyncAction.run(() => super.getFits());
  }
}
