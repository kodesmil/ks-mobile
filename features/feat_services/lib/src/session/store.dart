import 'dart:async';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

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
  List<Service> services = [];

  @action
  Future fetch(String tagKey) async {
    final request = ListServiceRequest();
    final response = await client.listService(request);
    loadingStore.success = true;
    services = response.results;
  }
}
