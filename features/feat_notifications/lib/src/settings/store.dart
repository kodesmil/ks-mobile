import 'dart:async';
import 'dart:math';

import 'package:feat_auth/feat_auth.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class NotificationSettingsStore = _NotificationSettingsStore
    with _$NotificationSettingsStore;

abstract class _NotificationSettingsStore with Store {
  final ErrorStore errorStore;
  final UserStore userStore;
  final NotificationSettingsClient client;

  _NotificationSettingsStore(
    this.errorStore,
    this.userStore,
    this.client,
  );

  @observable
  NotificationSetting setting;

  @action
  Future readOrCreate() async {
    final condition = StringCondition()
      ..fieldPath.add('account_id')
      ..value = userStore.user.uid;
    final filter = Filtering()..stringCondition = condition;
    final request = ListNotificationSettingRequest()..filter = filter;
    final settings = await client.list(request);
    if (settings.results.isNotEmpty) {
      setting = settings.results.first;
    } else {
      await create();
    }
  }

  @action
  Future create() async {
    final timestamp = Timestamp();
    final payload = NotificationSetting()
      ..createdAt = timestamp
      ..updatedAt = timestamp
      ..enableNotifications = true
      ..cronJournalReminder = '12 * * * * *'
      ..enableJournalReminder = true;
    final request = CreateNotificationSettingRequest()..payload = payload;
    final response = await client.create(request);
    setting = response.result;
  }

  @action
  Future update() async {
    final timestamp = Timestamp();
    setting..updatedAt = timestamp;
    final payload = setting;
    final request = UpdateNotificationSettingRequest()..payload = payload;
    final response = await client.update(request);
    setting = response.result;
  }
}
