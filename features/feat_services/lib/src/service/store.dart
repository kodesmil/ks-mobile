import 'dart:async';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ServiceStore = _ServiceStore with _$ServiceStore;

abstract class _ServiceStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  @observable
  Service service;

  @observable
  List<Service> services = [];

  _ServiceStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future fetch(String tagKey) async {
    final request = ListServiceRequest();
    final response = await client.listService(request);
    loadingStore.success = true;
    services = response.results;
  }

  @action
  Future create() async {
    final request = CreateServiceRequest();
    final response = await client.createService(request);
    loadingStore.success = true;
    service = response.result;
  }
}
