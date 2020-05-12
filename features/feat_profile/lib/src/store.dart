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
    profile = Profile();
    if (user != null) {
      try {
        final id = Identifier()..resourceId = user.uid;
        final request = ReadProfileRequest()..id = id;
        final response = await client.read(request);
        profile = response.result;
      } catch (e) {
        profile = Profile()..primaryEmail = user.email;
      }
    }
  }

  @action
  Future createOrUpdateProfile() async {
    return profile?.id == null ? createProfile() : updateProfile();
  }

  @action
  Future createProfile() async {
    final request = CreateProfileRequest()..payload = profile;
    final response = await client.create(request);
    profile = response.result;
  }

  @action
  Future updateProfile() async {
    final request = UpdateProfileRequest()..payload = profile;
    final response = await client.update(request);
    profile = response.result;
  }
}
