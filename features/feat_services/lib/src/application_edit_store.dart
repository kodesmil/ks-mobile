import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'application_edit_store.g.dart';

class ServiceApplicationEditStore = _ServiceApplicationEditStore
    with _$ServiceApplicationEditStore;

abstract class _ServiceApplicationEditStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  ServiceApplication application;

  @observable
  ServiceDetails details;

  @observable
  ServiceEmployment employment;

  @observable
  ServiceApplicationFile file;

  _ServiceApplicationEditStore(
    this.errorStore,
    this.loadingStore,
    this.client,
    this.application,
  ) {
    setApplication(application);
  }

  @action
  Future addApplicationFile(String url) async =>
      file = file.copyWith((e) => e.url = url);

  @action
  Future setApplication(ServiceApplication a) async {
    application = a ?? ServiceApplication();

    if (application.provider.employments.isEmpty) {
      var provider = application.provider.clone();
      provider.employments.add(ServiceEmployment());
      application.provider = provider;
    }

    if (application.files.isEmpty) {
      application.files.add(ServiceApplicationFile());
    }

    details = application.provider.details.clone();
    employment = application.provider.employments[0].clone();
    file = application.files[0].clone();
  }

  @action
  Future createOrUpdate() async =>
      application?.id?.value?.isNotEmpty == true ? await update() : await create();

  @action
  Future update() async {
    try {
      final request = UpdateServiceApplicationRequest()
        ..payload = application.copyWith((e1) {
          var provider = e1.provider.clone();
          provider.details = details;
          provider.employments.clear();
          provider.employments.addAll(provider.employments.map((e) => hasSameId(e, employment) ? employment : e));
          e1.provider = provider;
          e1.files.clear();
          e1.files.addAll(e1.files.map((e) => hasSameId(e, file) ? file : e));
        });
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
      final request = CreateServiceApplicationRequest()
        ..payload = application.copyWith((e1) {
          var provider = e1.provider.clone();
          provider.details = details;
          provider.employments.clear();
          provider.employments.addAll(provider.employments.map((e) => hasSameId(e, employment) ? employment : e));
          e1.provider = provider;
          e1.files.clear();
          e1.files.addAll(e1.files.map((e) => hasSameId(e, file) ? file : e));
        });
      final response = await client.createServiceApplication(request);
      loadingStore.success = true;
      application = response.result;
    } catch (e) {
      print(e);
    }
  }

  bool hasSameId(e, other) => e.id.resourceId == other?.id?.resourceId;
}
