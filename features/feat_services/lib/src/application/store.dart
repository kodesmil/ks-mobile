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
  ServiceApplication application;

  @observable
  ServiceDetails details;

  @observable
  ServiceDetailsContact contact;

  @observable
  ServiceDetailsCompany company;

  @observable
  ServiceProvider provider;

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
        details = ServiceDetails();
        company = ServiceDetailsCompany();
        contact = ServiceDetailsContact();
        provider = ServiceProvider()
          ..id = (Identifier()..resourceId = Uuid().v4());
        application = ServiceApplication()
          ..id = (Identifier()..resourceId = Uuid().v4());
      } else {
        application = response.results.first;
        provider = application.provider;
        details = provider.details;
        company = details.company;
        contact = details.contact;
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
    application.files.add(file);
  }

  @action
  Future createOrUpdate() async =>
      application?.updatedAt != null ? await update() : await create();

  @action
  Future update() async {
    try {
      final payload = application
        ..provider = (provider
          ..details = (details
            ..contact = contact
            ..company = company));
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
  Future create() async {
    try {
      final payload = application
        ..provider = (provider
          ..details = (details
            ..contact = contact
            ..company = company));
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
