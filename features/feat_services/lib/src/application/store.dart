import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

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
      final request = ListServiceApplicationRequest();
      final response = await client.listServiceApplication(request);
      if (response.results.isEmpty) {
        subject = ServiceApplication()
          ..id = (Identifier()..resourceId = Uuid().v4());
        subject.provider = ServiceProvider();
        subject.provider.serviceInPerson = ServiceInPerson()
          ..id = (Identifier()..resourceId = Uuid().v4());
      } else {
        subject = response.results.first;
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  Future addApplicationFile(String url) async {
    final file = ServiceApplicationFile()
      ..id = (Identifier()..resourceId = Uuid().v4())
      ..url = url;
    subject.files.add(file);
  }

  @action
  Future createOrUpdate() async =>
      subject?.updatedAt != null
          ? await update()
          : await create();

  @action
  Future update() async {
    try {
      final payload = subject;
      final request = UpdateServiceApplicationRequest();
      request..payload = payload;
      final response = await client.updateServiceApplication(request);
      loadingStore.success = true;
      subject = response.result;
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
