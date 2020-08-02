import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'session_store.g.dart';

class ServiceSessionStore = _ServiceSessionStore with _$ServiceSessionStore;

abstract class _ServiceSessionStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceSessionStore(
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
  }
}
