// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationSettingsStore on _NotificationSettingsStore, Store {
  Computed<TimeOfDay> _$timeJournalReminderComputed;

  @override
  TimeOfDay get timeJournalReminder => (_$timeJournalReminderComputed ??=
          Computed<TimeOfDay>(() => super.timeJournalReminder,
              name: '_NotificationSettingsStore.timeJournalReminder'))
      .value;

  final _$settingAtom = Atom(name: '_NotificationSettingsStore.setting');

  @override
  NotificationSetting get setting {
    _$settingAtom.reportRead();
    return super.setting;
  }

  @override
  set setting(NotificationSetting value) {
    _$settingAtom.reportWrite(value, super.setting, () {
      super.setting = value;
    });
  }

  final _$readOrCreateAsyncAction =
      AsyncAction('_NotificationSettingsStore.readOrCreate');

  @override
  Future<dynamic> readOrCreate() {
    return _$readOrCreateAsyncAction.run(() => super.readOrCreate());
  }

  final _$createAsyncAction = AsyncAction('_NotificationSettingsStore.create');

  @override
  Future<dynamic> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  final _$updateAsyncAction = AsyncAction('_NotificationSettingsStore.update');

  @override
  Future<dynamic> update(
      {bool enableNotifications,
      bool enableJournalReminder,
      TimeOfDay timeJournalReminder}) {
    return _$updateAsyncAction.run(() => super.update(
        enableNotifications: enableNotifications,
        enableJournalReminder: enableJournalReminder,
        timeJournalReminder: timeJournalReminder));
  }

  @override
  String toString() {
    return '''
setting: ${setting},
timeJournalReminder: ${timeJournalReminder}
    ''';
  }
}
