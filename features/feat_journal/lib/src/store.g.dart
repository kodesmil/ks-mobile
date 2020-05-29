// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JournalStore on _JournalStore, Store {
  final _$successAtom = Atom(name: '_JournalStore.success');

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

  final _$loadingAtom = Atom(name: '_JournalStore.loading');

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

  final _$journalEntryAtom = Atom(name: '_JournalStore.journalEntry');

  @override
  JournalEntry get journalEntry {
    _$journalEntryAtom.reportRead();
    return super.journalEntry;
  }

  @override
  set journalEntry(JournalEntry value) {
    _$journalEntryAtom.reportWrite(value, super.journalEntry, () {
      super.journalEntry = value;
    });
  }

  final _$journalActivitiesAtom = Atom(name: '_JournalStore.journalActivities');

  @override
  List<JournalSubject> get journalActivities {
    _$journalActivitiesAtom.reportRead();
    return super.journalActivities;
  }

  @override
  set journalActivities(List<JournalSubject> value) {
    _$journalActivitiesAtom.reportWrite(value, super.journalActivities, () {
      super.journalActivities = value;
    });
  }

  final _$entriesAtom = Atom(name: '_JournalStore.entries');

  @override
  List<JournalEntry> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(List<JournalEntry> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$createJournalAsyncAction = AsyncAction('_JournalStore.createJournal');

  @override
  Future<dynamic> createJournal() {
    return _$createJournalAsyncAction.run(() => super.createJournal());
  }

  final _$fetchJournalSubjectActivitiesAsyncAction =
      AsyncAction('_JournalStore.fetchJournalSubjectActivities');

  @override
  Future<dynamic> fetchJournalSubjectActivities(JournalSubject_Type type) {
    return _$fetchJournalSubjectActivitiesAsyncAction
        .run(() => super.fetchJournalSubjectActivities(type));
  }

  final _$fetchJournalEntriesAsyncAction =
      AsyncAction('_JournalStore.fetchJournalEntries');

  @override
  Future<dynamic> fetchJournalEntries() {
    return _$fetchJournalEntriesAsyncAction
        .run(() => super.fetchJournalEntries());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
journalEntry: ${journalEntry},
journalActivities: ${journalActivities},
entries: ${entries}
    ''';
  }
}
