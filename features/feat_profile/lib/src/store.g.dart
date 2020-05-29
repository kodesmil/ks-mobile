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
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_ProfileStore.loading');

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

  final _$profileAtom = Atom(name: '_ProfileStore.profile');

  @override
  Profile get profile {
    _$profileAtom.reportRead();
    return super.profile;
  }

  @override
  set profile(Profile value) {
    _$profileAtom.reportWrite(value, super.profile, () {
      super.profile = value;
    });
  }

  final _$fetchProfileAsyncAction = AsyncAction('_ProfileStore.fetchProfile');

  @override
  Future<dynamic> fetchProfile() {
    return _$fetchProfileAsyncAction.run(() => super.fetchProfile());
  }

  final _$createOrUpdateProfileAsyncAction =
      AsyncAction('_ProfileStore.createOrUpdateProfile');

  @override
  Future<dynamic> createOrUpdateProfile() {
    return _$createOrUpdateProfileAsyncAction
        .run(() => super.createOrUpdateProfile());
  }

  final _$createProfileAsyncAction = AsyncAction('_ProfileStore.createProfile');

  @override
  Future<dynamic> createProfile() {
    return _$createProfileAsyncAction.run(() => super.createProfile());
  }

  final _$updateProfileAsyncAction = AsyncAction('_ProfileStore.updateProfile');

  @override
  Future<dynamic> updateProfile() {
    return _$updateProfileAsyncAction.run(() => super.updateProfile());
  }

  final _$signOutAsyncAction = AsyncAction('_ProfileStore.signOut');

  @override
  Future<dynamic> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$deleteUserAsyncAction = AsyncAction('_ProfileStore.deleteUser');

  @override
  Future<dynamic> deleteUser() {
    return _$deleteUserAsyncAction.run(() => super.deleteUser());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
profile: ${profile}
    ''';
  }
}
