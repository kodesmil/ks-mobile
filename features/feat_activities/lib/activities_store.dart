import 'dart:async';

import 'package:feat_activities/activities_api.dart';
import 'package:feat_auth/stores/google_sign_in_store.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

part 'activities_store.g.dart';

class ActivitiesStore = _ActivitiesStore with _$ActivitiesStore;

abstract class _ActivitiesStore with Store {
  final errorStore = ErrorStore();

  final GoogleSignInStore _googleSignInStore;
  final ActivitiesApi _activitiesApi;

  _ActivitiesStore(this._googleSignInStore, this._activitiesApi);

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @action
  Future sendData() async {
    final authentication = await _googleSignInStore.currentUser.authentication;
    final email = _googleSignInStore.currentUser.email;
    await _activitiesApi.getFitActivities(authentication.accessToken, email);
  }

  @action
  Future close() async {}
}
