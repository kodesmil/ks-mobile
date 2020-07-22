import 'dart:async';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'store.g.dart';

class ServiceApplicationFileStore = _ServiceApplicationFileStore with _$ServiceApplicationFileStore;

abstract class _ServiceApplicationFileStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceApplicationFileStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  ServiceApplicationFile subject;

  @action
  Future fetch() async {
    try {
      subject = ServiceApplicationFile()
        ..id = (Identifier()..resourceId = Uuid().v4());
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
      final request = CreateServiceApplicationFileRequest();
      request..payload = payload;
      final response = await client.createServiceApplicationFile(request);
      loadingStore.success = true;
      subject = response.result;
    } catch (e) {
      print(e);
    }
  }
}
