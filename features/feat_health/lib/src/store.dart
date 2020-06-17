import 'dart:async';
import 'package:intl/intl.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class MenstruationStore = _MenstruationStore with _$MenstruationStore;

abstract class _MenstruationStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  HealthClient client;

  _MenstruationStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  List<HealthMenstruationDailyEntry> entries = [];

  @computed
  Map<String, HealthMenstruationDailyEntry> get entriesByDay {
    final result = entries.asMap().map(
          (key, value) => MapEntry(
            DateFormat.yMd().format(value.day.toDateTime()),
            value,
          ),
        );
    return result;
  }

  @action
  Future createOrUpdatePeriodDailyEntry(
    HealthMenstruationDailyEntry entry, {
    int intensityPercent,
    DateTime day,
  }) async =>
      entry?.id?.resourceId?.isNotEmpty == true
          ? await updatePeriodDailyEntry(
              entry,
              intensityPercent: intensityPercent,
              day: day,
            )
          : await createPeriodDailyEntry(
              intensityPercent: intensityPercent,
              day: day,
            );

  @action
  Future createPeriodDailyEntry({
    int intensityPercent,
    DateTime day,
  }) async {
    final payload = HealthMenstruationDailyEntry()
      ..intensityPercentage = intensityPercent
      ..day = Timestamp.fromDateTime(day.toUtc());
    final request = CreateHealthMenstruationDailyEntryRequest()
      ..payload = payload;
    final response = await client.createHealthMenstruationDailyEntry(request);
    entries.add(response.result);
    entries = [...entries];
  }

  @action
  Future updatePeriodDailyEntry(
    HealthMenstruationDailyEntry entry, {
    int intensityPercent,
    DateTime day,
  }) async {
    entry = entry
      ..day = Timestamp.fromDateTime(day.toUtc())
      ..intensityPercentage = intensityPercent;
    final request = UpdateHealthMenstruationDailyEntryRequest()
      ..payload = entry;
    final response = await client.updateHealthMenstruationDailyEntry(request);
    entries.add(response.result);
    entries = [...entries];
  }

  @action
  Future fetchPeriodEntries() async {
    loadingStore.loading = true;
    final request = ListHealthMenstruationDailyEntryRequest();
    try {
      final response = await client.listHealthMenstruationDailyEntry(request);
      entries = response.results;
    } catch (e) {
      loadingStore.loading = false;
    }
    loadingStore.loading = false;
  }
}
