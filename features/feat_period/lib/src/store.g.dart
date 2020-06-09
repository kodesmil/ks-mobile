// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PeriodStore on _PeriodStore, Store {
  Computed<Map<String, PeriodDailyEntry>> _$entriesByDayComputed;

  @override
  Map<String, PeriodDailyEntry> get entriesByDay => (_$entriesByDayComputed ??=
          Computed<Map<String, PeriodDailyEntry>>(() => super.entriesByDay,
              name: '_PeriodStore.entriesByDay'))
      .value;

  final _$successAtom = Atom(name: '_PeriodStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_PeriodStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$entriesAtom = Atom(name: '_PeriodStore.entries');

  @override
  List<PeriodDailyEntry> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(List<PeriodDailyEntry> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$createOrUpdatePeriodDailyEntryAsyncAction =
      AsyncAction('_PeriodStore.createOrUpdatePeriodDailyEntry');

  @override
  Future<dynamic> createOrUpdatePeriodDailyEntry(PeriodDailyEntry entry,
      {PeriodDailyEntry_Severity severity, DateTime day}) {
    return _$createOrUpdatePeriodDailyEntryAsyncAction.run(() => super
        .createOrUpdatePeriodDailyEntry(entry, severity: severity, day: day));
  }

  final _$createPeriodDailyEntryAsyncAction =
      AsyncAction('_PeriodStore.createPeriodDailyEntry');

  @override
  Future<dynamic> createPeriodDailyEntry(
      {PeriodDailyEntry_Severity severity, DateTime day}) {
    return _$createPeriodDailyEntryAsyncAction
        .run(() => super.createPeriodDailyEntry(severity: severity, day: day));
  }

  final _$updatePeriodDailyEntryAsyncAction =
      AsyncAction('_PeriodStore.updatePeriodDailyEntry');

  @override
  Future<dynamic> updatePeriodDailyEntry(PeriodDailyEntry entry,
      {PeriodDailyEntry_Severity severity, DateTime day}) {
    return _$updatePeriodDailyEntryAsyncAction.run(() =>
        super.updatePeriodDailyEntry(entry, severity: severity, day: day));
  }

  final _$fetchPeriodEntriesAsyncAction =
      AsyncAction('_PeriodStore.fetchPeriodEntries');

  @override
  Future<dynamic> fetchPeriodEntries() {
    return _$fetchPeriodEntriesAsyncAction
        .run(() => super.fetchPeriodEntries());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
entries: ${entries},
entriesByDay: ${entriesByDay}
    ''';
  }
}
