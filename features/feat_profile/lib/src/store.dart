import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  final ErrorStore errorStore;

  ProfilesClient client;
  FirebaseUser user;

  _ProfileStore(
    this.errorStore,
    this.client,
    this.user,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  Profile profile;

  @action
  Future fetchProfile() async {
    final id = Identifier.create()..resourceId = user.uid;
    final request = ReadProfileRequest.create()..id = id;
    final response = await client.read(request);
    profile = response.result;
  }

  @action
  Future createProfile() async {
    final payload = Profile.create()..primaryEmail = 'marcin@gmail.com';
    final request = CreateProfileRequest.create()..payload = payload;
    final response = await client.create(request);
    profile = response.result;
  }
}
