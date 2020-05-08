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
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_JournalStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$journalEntryAtom = Atom(name: '_JournalStore.journalEntry');

  @override
  JournalEntry get journalEntry {
    _$journalEntryAtom.context.enforceReadPolicy(_$journalEntryAtom);
    _$journalEntryAtom.reportObserved();
    return super.journalEntry;
  }

  @override
  set journalEntry(JournalEntry value) {
    _$journalEntryAtom.context.conditionallyRunInAction(() {
      super.journalEntry = value;
      _$journalEntryAtom.reportChanged();
    }, _$journalEntryAtom, name: '${_$journalEntryAtom.name}_set');
  }

  final _$journalActivitiesAtom = Atom(name: '_JournalStore.journalActivities');

  @override
  List<JournalSubject> get journalActivities {
    _$journalActivitiesAtom.context.enforceReadPolicy(_$journalActivitiesAtom);
    _$journalActivitiesAtom.reportObserved();
    return super.journalActivities;
  }

  @override
  set journalActivities(List<JournalSubject> value) {
    _$journalActivitiesAtom.context.conditionallyRunInAction(() {
      super.journalActivities = value;
      _$journalActivitiesAtom.reportChanged();
    }, _$journalActivitiesAtom, name: '${_$journalActivitiesAtom.name}_set');
  }

  final _$createJournalAsyncAction = AsyncAction('createJournal');

  @override
  Future<dynamic> createJournal() {
    return _$createJournalAsyncAction.run(() => super.createJournal());
  }

  final _$fetchJournalSubjectActivitiesAsyncAction =
      AsyncAction('fetchJournalSubjectActivities');

  @override
  Future<dynamic> fetchJournalSubjectActivities(JournalSubject_Type type) {
    return _$fetchJournalSubjectActivitiesAsyncAction
        .run(() => super.fetchJournalSubjectActivities(type));
  }
}
