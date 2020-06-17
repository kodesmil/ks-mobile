// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenstruationStore on _MenstruationStore, Store {
  Computed<Map<String, HealthMenstruationDailyEntry>> _$entriesByDayComputed;

  @override
  Map<String, HealthMenstruationDailyEntry> get entriesByDay =>
      (_$entriesByDayComputed ??=
              Computed<Map<String, HealthMenstruationDailyEntry>>(
                  () => super.entriesByDay,
                  name: '_MenstruationStore.entriesByDay'))
          .value;

  final _$entriesAtom = Atom(name: '_MenstruationStore.entries');

  @override
  List<HealthMenstruationDailyEntry> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(List<HealthMenstruationDailyEntry> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$createOrUpdatePeriodDailyEntryAsyncAction =
      AsyncAction('_MenstruationStore.createOrUpdatePeriodDailyEntry');

  @override
  Future<dynamic> createOrUpdatePeriodDailyEntry(
      HealthMenstruationDailyEntry entry,
      {int intensityPercent,
      DateTime day}) {
    return _$createOrUpdatePeriodDailyEntryAsyncAction.run(() => super
        .createOrUpdatePeriodDailyEntry(entry,
            intensityPercent: intensityPercent, day: day));
  }

  final _$createPeriodDailyEntryAsyncAction =
      AsyncAction('_MenstruationStore.createPeriodDailyEntry');

  @override
  Future<dynamic> createPeriodDailyEntry({int intensityPercent, DateTime day}) {
    return _$createPeriodDailyEntryAsyncAction.run(() => super
        .createPeriodDailyEntry(intensityPercent: intensityPercent, day: day));
  }

  final _$updatePeriodDailyEntryAsyncAction =
      AsyncAction('_MenstruationStore.updatePeriodDailyEntry');

  @override
  Future<dynamic> updatePeriodDailyEntry(HealthMenstruationDailyEntry entry,
      {int intensityPercent, DateTime day}) {
    return _$updatePeriodDailyEntryAsyncAction.run(() => super
        .updatePeriodDailyEntry(entry,
            intensityPercent: intensityPercent, day: day));
  }

  final _$fetchPeriodEntriesAsyncAction =
      AsyncAction('_MenstruationStore.fetchPeriodEntries');

  @override
  Future<dynamic> fetchPeriodEntries() {
    return _$fetchPeriodEntriesAsyncAction
        .run(() => super.fetchPeriodEntries());
  }

  @override
  String toString() {
    return '''
entries: ${entries},
entriesByDay: ${entriesByDay}
    ''';
  }
}
