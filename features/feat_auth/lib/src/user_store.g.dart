// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$userAtom = Atom(name: '_UserStore.user');

  @override
  FirebaseUser get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(FirebaseUser value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$signInSilentlyAsyncAction = AsyncAction('_UserStore.signInSilently');

  @override
  Future<FirebaseUser> signInSilently() {
    return _$signInSilentlyAsyncAction.run(() => super.signInSilently());
  }

  final _$signOutAsyncAction = AsyncAction('_UserStore.signOut');

  @override
  Future<dynamic> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$deleteUserAsyncAction = AsyncAction('_UserStore.deleteUser');

  @override
  Future<dynamic> deleteUser() {
    return _$deleteUserAsyncAction.run(() => super.deleteUser());
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
