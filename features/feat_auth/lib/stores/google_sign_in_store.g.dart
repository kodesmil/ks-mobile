// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoogleSignInStore on _GoogleSignInStore, Store {
  final _$_googleSignInAtom = Atom(name: '_GoogleSignInStore._googleSignIn');

  @override
  GoogleSignIn get _googleSignIn {
    _$_googleSignInAtom.context.enforceReadPolicy(_$_googleSignInAtom);
    _$_googleSignInAtom.reportObserved();
    return super._googleSignIn;
  }

  @override
  set _googleSignIn(GoogleSignIn value) {
    _$_googleSignInAtom.context.conditionallyRunInAction(() {
      super._googleSignIn = value;
      _$_googleSignInAtom.reportChanged();
    }, _$_googleSignInAtom, name: '${_$_googleSignInAtom.name}_set');
  }

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

  final _$handleSignInAsyncAction = AsyncAction('handleSignIn');

  @override
  Future<void> handleSignIn() {
    return _$handleSignInAsyncAction.run(() => super.handleSignIn());
  }

  final _$_GoogleSignInStoreActionController =
      ActionController(name: '_GoogleSignInStore');

  @override
  Future<void> handleSignOut() {
    final _$actionInfo = _$_GoogleSignInStoreActionController.startAction();
    try {
      return super.handleSignOut();
    } finally {
      _$_GoogleSignInStoreActionController.endAction(_$actionInfo);
    }
  }
}
