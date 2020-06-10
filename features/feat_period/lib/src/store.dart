import 'dart:async';
import 'package:intl/intl.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class PeriodStore = _PeriodStore with _$PeriodStore;

abstract class _PeriodStore with Store {
  final ErrorStore errorStore;

  PeriodClient client;

  _PeriodStore(
    this.errorStore,
    this.client,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  List<PeriodDailyEntry> entries = [];

  @computed
  Map<String, PeriodDailyEntry> get entriesByDay {
    final result = entries.asMap().map(
        (key, value) => MapEntry(
          DateFormat.yMd().format(value.day.toDateTime().toLocal()),
          value,
        ),
      );
    return result;
  }

  @action
  Future createOrUpdatePeriodDailyEntry(
    PeriodDailyEntry entry, {
    PeriodDailyEntry_Severity severity,
    DateTime day,
  }) async =>
      entry?.id?.resourceId?.isNotEmpty == true
          ? await updatePeriodDailyEntry(
              entry,
              severity: severity,
              day: day,
            )
          : await createPeriodDailyEntry(
              severity: severity,
              day: day,
            );

  @action
  Future createPeriodDailyEntry({
    PeriodDailyEntry_Severity severity,
    DateTime day,
  }) async {
    final payload = PeriodDailyEntry()
      ..severity = severity
      ..day = Timestamp.fromDateTime(day.toUtc());
    final request = CreatePeriodDailyEntryRequest()..payload = payload;
    final response = await client.createPeriodDailyEntry(request);
    entries.add(response.result);
    entries = [...entries];
  }

  @action
  Future updatePeriodDailyEntry(
    PeriodDailyEntry entry, {
    PeriodDailyEntry_Severity severity,
    DateTime day,
  }) async {
    entry = entry
      ..day = Timestamp.fromDateTime(day.toUtc())
      ..severity = severity;
    final request = UpdatePeriodDailyEntryRequest()..payload = entry;
    final response = await client.updatePeriodDailyEntry(request);
    entries.add(response.result);
    entries = [...entries];
  }

  @action
  Future fetchPeriodEntries() async {
    final request = ListPeriodDailyEntryRequest();
    final response = await client.listPeriodDailyEntry(request);
    entries = response.results;
    entries = [...entries];
  }
}
