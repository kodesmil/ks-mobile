import 'dart:async';
import 'package:feat_auth/feat_auth.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'menstruation_personal_info.g.dart';

class MenstruationPersonalInfoStore = _MenstruationPersonalInfoStore
    with _$MenstruationPersonalInfoStore;

abstract class _MenstruationPersonalInfoStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ProfileStore profileStore;
  final HealthClient client;

  _MenstruationPersonalInfoStore(
    this.errorStore,
    this.loadingStore,
    this.profileStore,
    this.client,
  );

  @observable
  HealthMenstruationPersonalInfo personalInfo;

  @action
  Future read() async {
    loadingStore.loading = true;
    final request = ListHealthMenstruationPersonalInfoRequest();
    try {
      final response = await client.listHealthMenstruationPersonalInfo(request);
      personalInfo = response.results?.first;
      loadingStore.success = true;
    } catch (e) {
      loadingStore.loading = false;
      loadingStore.success = false;
    }
    loadingStore.loading = false;
  }

  @action
  Future createOrUpdate(
    HealthMenstruationPersonalInfo payload, {
    int cycleLength,
    int periodLength,
  }) async =>
      payload?.id != null
          ? await update(
              payload,
              periodLength: periodLength,
              cycleLength: cycleLength,
            )
          : await create(
              periodLength: periodLength,
              cycleLength: cycleLength,
            );

  @action
  Future create({
    int cycleLength,
    int periodLength,
  }) async {
    loadingStore.loading = true;
    final payload = HealthMenstruationPersonalInfo()
      ..profileId = profileStore.profile.id
      ..periodLengthInDays = periodLength
      ..cycleLengthInDays = cycleLength;
    final request = CreateHealthMenstruationPersonalInfoRequest()
      ..payload = payload;
    final response = await client.createHealthMenstruationPersonalInfo(request);
    personalInfo = response.result;
    loadingStore.success = true;
    loadingStore.loading = false;
  }

  @action
  Future update(
    HealthMenstruationPersonalInfo payload, {
    int cycleLength,
    int periodLength,
  }) async {
    loadingStore.loading = true;
    payload = payload
      ..periodLengthInDays = periodLength
      ..cycleLengthInDays = cycleLength;
    final request = UpdateHealthMenstruationPersonalInfoRequest()
      ..payload = payload;
    final response = await client.updateHealthMenstruationPersonalInfo(request);
    personalInfo = response.result;
    loadingStore.success = true;
    loadingStore.loading = false;
  }
}
