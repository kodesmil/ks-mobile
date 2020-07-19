import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ServiceApplicationStore = _ServiceApplicationStore
    with _$ServiceApplicationStore;

abstract class _ServiceApplicationStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  List<ServiceApplication> subjects = [];

  @observable
  ServiceApplication subject;

  _ServiceApplicationStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future fetch() async {
    try {
      subject = ServiceApplication();
      subject.provider = ServiceProvider();
      subject.provider.serviceInPerson = ServiceInPerson();
      // final request = ListServiceApplicationRequest();
      // final response = await client.listServiceApplication(request);
      // loadingStore.success = true;
      // subjects = response.results;

    } catch (e) {
      print(e);
    }
  }

  @action
  Future create() async {
    try {
      final payload = subject;
      final request = CreateServiceApplicationRequest();
      request..payload = payload;
      final response = await client.createServiceApplication(request);
      loadingStore.success = true;
      subject = response.result;
    } catch (e) {
      print(e);
    }
  }
}
