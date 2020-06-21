import 'dart:async';
import 'package:intl/intl.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'menstruation_daily_entry.g.dart';

class MenstruationDailyEntryStore = _MenstruationDailyEntryStore with _$MenstruationDailyEntryStore;

abstract class _MenstruationDailyEntryStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  HealthClient client;


  _MenstruationDailyEntryStore(
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
  Future createOrUpdate(
    HealthMenstruationDailyEntry entry, {
    int intensityPercent,
    DateTime day,
  }) async =>
      entry?.id?.resourceId?.isNotEmpty == true
          ? await update(
              entry,
              intensityPercent: intensityPercent,
              day: day,
            )
          : await create(
              intensityPercent: intensityPercent,
              day: day,
            );


  @action
  Future create({
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
  Future update(
    HealthMenstruationDailyEntry entry, {
    int intensityPercent,
    DateTime day,
  }) async {
    entry = entry
      ..day = Timestamp.fromDateTime(day.toUtc())
      ..manual = true
      ..intensityPercentage = intensityPercent;
    final request = UpdateHealthMenstruationDailyEntryRequest()
      ..payload = entry;
    final response = await client.updateHealthMenstruationDailyEntry(request);
    entries.add(response.result);
    entries = [...entries];
  }

  @action
  Future list() async {
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
