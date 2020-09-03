import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'session_archive_store.g.dart';

class ServiceSessionArchiveStore = _ServiceSessionArchiveStore with _$ServiceSessionArchiveStore;

abstract class _ServiceSessionArchiveStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceSessionArchiveStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  List<ServiceSession> sessions = [];

  @action
  Future fetch() async {
    final request = ListServiceSessionRequest();
    final response = await client.listServiceSession(request);
    loadingStore.success = true;
    sessions = response.results;
    sessions.sort(
      (a, b) => b.createdAt.toDateTime().compareTo(a.createdAt.toDateTime()),
    );
  }
}
