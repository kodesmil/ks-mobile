import 'dart:async';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class JournalStore = _JournalStore with _$JournalStore;

abstract class _JournalStore with Store {
  final ErrorStore errorStore;

  JournalClient client;

  _JournalStore(
    this.errorStore,
    this.client,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  JournalEntry journalEntry;

  @observable
  List<JournalSubject> journalActivities = [];

  @observable
  List<JournalEntry> entries = [];

  @action
  Future createJournal() async {
    final payload = JournalEntry()..severity = JournalEntry_Severity.NONE;
    final request = CreateJournalEntryRequest()..payload = payload;
    final response = await client.createJournalEntry(request);
    journalEntry = response.result;
  }

  @action
  Future fetchJournalSubjectActivities() async {
    /*
    final condition = NumberCondition()
      ..fieldPath.add('type')
      ..value = type.value.toDouble();
    final filter = Filtering()..numberCondition = condition;
    final request = ListJournalSubjectRequest()..filter = filter;
    final response = await jsClient.list(request);
    journalActivities = response.results;
     */
  }

  @action
  Future fetchJournalEntries() async {
    final request = ListJournalEntryRequest();
    final response = await client.listJournalEntry(request);
    entries = response.results;
  }
}
