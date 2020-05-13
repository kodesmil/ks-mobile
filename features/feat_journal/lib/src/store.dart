import 'dart:async';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class JournalStore = _JournalStore with _$JournalStore;

abstract class _JournalStore with Store {
  final ErrorStore errorStore;

  JournalsClient client;

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
    final payload = JournalEntry.create()..severity = JournalEntry_Severity.NONE;
    final request = CreateJournalEntryRequest.create()..payload = payload;
    final response = await client.createEntry(request);
    journalEntry = response.result;
  }

  @action
  Future fetchJournalSubjectActivities(JournalSubject_Type type) async {
    final condition = NumberCondition.create()
      ..fieldPath.add('type')
      ..value = type.value.toDouble();
    final filter = Filtering.create()
      ..numberCondition = condition;
    final request = ListJournalSubjectRequest.create()
      ..filter = filter;
    final response = await client.listSubjects(request);
    journalActivities = response.results;
  }

  @action
  Future fetchJournalEntries() async {
    final request = ListJournalEntryRequest();
    final response = await client.listEntries(request);
    entries = response.results;
  }
}
