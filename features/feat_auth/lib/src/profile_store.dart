import 'dart:async';

import 'package:feat_auth/feat_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  final ErrorStore errorStore;
  final UserStore userStore;
  final ProfilesClient client;

  _ProfileStore(this.errorStore, this.userStore, this.client);

  @observable
  Profile profile;

  @action
  Future deleteProfile() async {
    final request = DeleteProfileRequest()..id = profile.id;
    await client.delete(request);
    await userStore.deleteUser();
    profile = null;
  }

  @action
  Future signOut() async {
    await userStore.signOut();
    profile = null;
  }

  @action
  Future fetchOrCreateProfile() async {
    try {
      final request = ListProfileRequest();
      final response = await client.list(request);
      if (response.results.isEmpty) {
        await createOrUpdateProfile();
      } else {
        profile = response.results?.first;
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  Future createOrUpdateProfile() async => profile?.id?.value?.isNotEmpty == true
      ? await updateProfile()
      : await createProfile();

  @action
  Future createProfile() async {
    final request = CreateProfileRequest()..payload = Profile();
    final response = await client.create(request);
    profile = response.result;
  }

  @action
  Future updateProfile({
    String url,
  }) async {
    if (url != null) {
      profile = profile..profilePictureUrl = url;
    }
    final request = UpdateProfileRequest()..payload = profile;
    final response = await client.update(request);
    profile = response.result;
  }
}
