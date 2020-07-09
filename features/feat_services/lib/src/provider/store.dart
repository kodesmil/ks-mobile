import 'dart:async';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ServiceProviderStore = _ServiceProviderStore with _$ServiceProviderStore;

abstract class _ServiceProviderStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceProviderStore(
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
