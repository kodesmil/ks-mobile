// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileStore on _ProfileStore, Store {
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

  final _$deleteProfileAsyncAction = AsyncAction('_ProfileStore.deleteProfile');

  @override
  Future<dynamic> deleteProfile() {
    return _$deleteProfileAsyncAction.run(() => super.deleteProfile());
  }

  final _$signOutAsyncAction = AsyncAction('_ProfileStore.signOut');

  @override
  Future<dynamic> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$fetchOrCreateProfileAsyncAction =
      AsyncAction('_ProfileStore.fetchOrCreateProfile');

  @override
  Future<dynamic> fetchOrCreateProfile() {
    return _$fetchOrCreateProfileAsyncAction
        .run(() => super.fetchOrCreateProfile());
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
  Future<dynamic> updateProfile({String url}) {
    return _$updateProfileAsyncAction.run(() => super.updateProfile(url: url));
  }

  @override
  String toString() {
    return '''
profile: ${profile}
    ''';
  }
}
