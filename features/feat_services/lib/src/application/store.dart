import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'store.g.dart';

class ServiceApplicationJoinStore = _ServiceApplicationJoinStore
    with _$ServiceApplicationJoinStore;

abstract class _ServiceApplicationJoinStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  ServiceDetails details;

  @observable
  ServiceEmployment employment;

  @observable
  ServiceProvider provider;

  @observable
  ServiceApplicationFile file;

  _ServiceApplicationJoinStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future addApplicationFile(String url) async {
    file = ServiceApplicationFile()
      ..id = (Identifier()..resourceId = Uuid().v4())
      ..url = url;
  }

  @action
  Future createOrUpdate(ServiceApplication application) async =>
      application?.updatedAt != null
          ? await update(application)
          : await create(application);

  @action
  Future update(ServiceApplication application) async {
    try {
      final payload = application
        ..files.add(file)
        ..provider = (provider
          ..employments.add(employment)
          ..details = details);
      final request = UpdateServiceApplicationRequest();
      request..payload = payload;
      final response = await client.updateServiceApplication(request);
      loadingStore.success = true;
      application = response.result;
    } catch (e) {
      print(e);
    }
  }

  @action
  Future create(ServiceApplication application) async {
    try {
      final payload = application
        ..files.add(file)
        ..provider = (provider
          ..employments.add(employment)
          ..details = details);
      final request = CreateServiceApplicationRequest();
      request..payload = payload;
      final response = await client.createServiceApplication(request);
      loadingStore.success = true;
      application = response.result;
    } catch (e) {
      print(e);
    }
  }
}

class ServiceApplicationListStore = _ServiceApplicationListStore
    with _$ServiceApplicationListStore;

abstract class _ServiceApplicationListStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  List<ServiceApplication> subjects = [];

  _ServiceApplicationListStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future fetch() async {
    try {
      final request = ListServiceApplicationRequest();
      final response = await client.listServiceApplication(request);
      subjects = response.results;
    } catch (e) {
      print(e);
    }
  }
}
