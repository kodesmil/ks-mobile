import 'dart:async';
import 'dart:math';

import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class NotificationSettingsStore = _NotificationSettingsStore
    with _$NotificationSettingsStore;

abstract class _NotificationSettingsStore with Store {
  final noon = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    12,
  ).toUtc();
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

  @computed
  TimeOfDay get timeJournalReminder {
    final reminder = setting.cronJournalReminder;
    final parts = reminder.split(' ');
    final time = DateTime.utc(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      int.parse(parts[0]),
      int.parse(parts[1]),
    ).toLocal();
    return TimeOfDay.fromDateTime(time);
  }

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
    final timestamp = Timestamp.fromDateTime(DateTime.now());
    final payload = NotificationSetting()
      ..enableNotifications = true
      ..cronJournalReminder = '${noon.hour} ${noon.minute} * * * *'
      ..enableJournalReminder = true;
    final request = CreateNotificationSettingRequest()..payload = payload;
    final response = await client.create(request);
    setting = response.result;
  }

  @action
  Future update({
    bool enableNotifications,
    bool enableJournalReminder,
    TimeOfDay timeJournalReminder,
  }) async {
    if (timeJournalReminder != null) {
      final time = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        timeJournalReminder.hour,
        timeJournalReminder.minute,
      ).toUtc();
      setting.cronJournalReminder = '${time.hour} ${time.minute} * * * *';
    }
    final timestamp = Timestamp.fromDateTime(DateTime.now());
    setting..updatedAt = timestamp;
    final payload = setting
      ..enableJournalReminder =
          enableJournalReminder ?? setting.enableJournalReminder
      ..enableNotifications =
          enableNotifications ?? setting.enableNotifications;
    final request = UpdateNotificationSettingRequest()..payload = payload;
    final response = await client.update(request);
    setting = response.result;
  }
}
