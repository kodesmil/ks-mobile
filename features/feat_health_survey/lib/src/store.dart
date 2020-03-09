import 'dart:async';

import 'package:feat_auth/data/auth_storage.dart';
import 'package:feat_health_survey/feat_health_survey.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

import 'models/rank.dart';

part 'store.g.dart';

class HealthSurveyStore = _HealthSurveyStore with _$HealthSurveyStore;

abstract class _HealthSurveyStore with Store {
  final ErrorStore errorStore;
  final HealthSurveyApi api;
  final AuthStorage authStorage;

  _HealthSurveyStore(
    this.errorStore,
    this.api,
    this.authStorage,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @action
  Future sendMoodRank(double value) async {
    api.postRank(
      await authStorage.accessToken,
      Rank(
        value: value,
        type: RankType.mood,
      ),
    );
  }

  @action
  Future sendHealthRank(double value) async {
    api.postRank(
      await authStorage.accessToken,
      Rank(
        value: value,
        type: RankType.health,
      ),
    );
  }

  @action
  Future close() async {}
}
