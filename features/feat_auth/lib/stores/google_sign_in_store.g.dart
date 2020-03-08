// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoogleSignInStore on _GoogleSignInStore, Store {
  final _$currentUserAtom = Atom(name: '_GoogleSignInStore.currentUser');

  @override
  GoogleSignInAccount get currentUser {
    _$currentUserAtom.context.enforceReadPolicy(_$currentUserAtom);
    _$currentUserAtom.reportObserved();
    return super.currentUser;
  }

  @override
  set currentUser(GoogleSignInAccount value) {
    _$currentUserAtom.context.conditionallyRunInAction(() {
      super.currentUser = value;
      _$currentUserAtom.reportChanged();
    }, _$currentUserAtom, name: '${_$currentUserAtom.name}_set');
  }

  final _$signInSilentlyAsyncAction = AsyncAction('signInSilently');

  @override
  Future<void> signInSilently() {
    return _$signInSilentlyAsyncAction.run(() => super.signInSilently());
  }

  final _$signInAsyncAction = AsyncAction('signIn');

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  final _$_GoogleSignInStoreActionController =
      ActionController(name: '_GoogleSignInStore');

  @override
  Future<void> signOut() {
    final _$actionInfo = _$_GoogleSignInStoreActionController.startAction();
    try {
      return super.signOut();
    } finally {
      _$_GoogleSignInStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> dispose() {
    final _$actionInfo = _$_GoogleSignInStoreActionController.startAction();
    try {
      return super.dispose();
    } finally {
      _$_GoogleSignInStoreActionController.endAction(_$actionInfo);
    }
  }
}
