// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menstruation_daily_entry.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenstruationDailyEntryStore on _MenstruationDailyEntryStore, Store {
  Computed<Map<String, HealthMenstruationDailyEntry>> _$entriesByDayComputed;

  @override
  Map<String, HealthMenstruationDailyEntry> get entriesByDay =>
      (_$entriesByDayComputed ??=
              Computed<Map<String, HealthMenstruationDailyEntry>>(
                  () => super.entriesByDay,
                  name: '_MenstruationDailyEntryStore.entriesByDay'))
          .value;

  final _$entriesAtom = Atom(name: '_MenstruationDailyEntryStore.entries');

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

  final _$createOrUpdateAsyncAction =
      AsyncAction('_MenstruationDailyEntryStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate(HealthMenstruationDailyEntry entry,
      {int intensityPercent, DateTime day}) {
    return _$createOrUpdateAsyncAction.run(() => super
        .createOrUpdate(entry, intensityPercent: intensityPercent, day: day));
  }

  final _$createAsyncAction =
      AsyncAction('_MenstruationDailyEntryStore.create');

  @override
  Future<dynamic> create({int intensityPercent, DateTime day}) {
    return _$createAsyncAction
        .run(() => super.create(intensityPercent: intensityPercent, day: day));
  }

  final _$updateAsyncAction =
      AsyncAction('_MenstruationDailyEntryStore.update');

  @override
  Future<dynamic> update(HealthMenstruationDailyEntry entry,
      {int intensityPercent, DateTime day}) {
    return _$updateAsyncAction.run(() =>
        super.update(entry, intensityPercent: intensityPercent, day: day));
  }

  final _$listAsyncAction = AsyncAction('_MenstruationDailyEntryStore.list');

  @override
  Future<dynamic> list() {
    return _$listAsyncAction.run(() => super.list());
  }

  @override
  String toString() {
    return '''
entries: ${entries},
entriesByDay: ${entriesByDay}
    ''';
  }
}
