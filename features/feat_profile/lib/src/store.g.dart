// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileStore on _ProfileStore, Store {
  final _$successAtom = Atom(name: '_ProfileStore.success');

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

  final _$loadingAtom = Atom(name: '_ProfileStore.loading');

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

  final _$profileAtom = Atom(name: '_ProfileStore.profile');

  @override
  Profile get profile {
    _$profileAtom.context.enforceReadPolicy(_$profileAtom);
    _$profileAtom.reportObserved();
    return super.profile;
  }

  @override
  set profile(Profile value) {
    _$profileAtom.context.conditionallyRunInAction(() {
      super.profile = value;
      _$profileAtom.reportChanged();
    }, _$profileAtom, name: '${_$profileAtom.name}_set');
  }

  final _$fetchProfileAsyncAction = AsyncAction('fetchProfile');

  @override
  Future<dynamic> fetchProfile() {
    return _$fetchProfileAsyncAction.run(() => super.fetchProfile());
  }

  final _$createOrUpdateProfileAsyncAction =
      AsyncAction('createOrUpdateProfile');

  @override
  Future<dynamic> createOrUpdateProfile() {
    return _$createOrUpdateProfileAsyncAction
        .run(() => super.createOrUpdateProfile());
  }
}
