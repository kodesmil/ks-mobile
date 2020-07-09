import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ServiceApplicationStore = _ServiceApplicationStore with _$ServiceApplicationStore;

abstract class _ServiceApplicationStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceApplicationStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  List<Service> ServiceApplication = [];

  @action
  Future fetch(String tagKey) async {
    final request = ListServiceRequest();
    final response = await client.listService(request);
    loadingStore.success = true;
    ServiceApplication = response.results;
  }
}
