import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'application_edit_store.g.dart';

class ServiceApplicationEditStore = _ServiceApplicationJoinStore
    with _$ServiceApplicationJoinStore;

abstract class _ServiceApplicationJoinStore with Store {
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

  _ServiceApplicationJoinStore(
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
    application = a ??
        (ServiceApplication()..id = (Identifier()..resourceId = Uuid().v4()));
    application = application
      ..provider = (a?.provider ??
          (ServiceProvider()..id = (Identifier()..resourceId = Uuid().v4()))
        ..details = a?.provider?.details ?? ServiceDetails());

    if (application.provider.employments.isEmpty) {
      application.provider.employments.add(ServiceEmployment());
    }

    if (application.files.isEmpty) {
      application.files.add(
        ServiceApplicationFile()..id = (Identifier()..resourceId = Uuid().v4()),
      );
    }

    details = application.provider.details;
    employment = application.provider.employments[0];
    file = application.files[0];
  }

  @action
  Future createOrUpdate() async =>
      application?.updatedAt != null ? await update() : await create();

  @action
  Future update() async {
    try {
      final request = UpdateServiceApplicationRequest()
        ..payload = application.copyWith((e1) {
          e1.provider = e1.provider.copyWith(
            (p) {
              p.employments.clear();
              p.employments.addAll(p.employments.map(
                (e) => hasSameId(e, employment) ? employment : e,
              ));
              p.details = details;
            },
          );
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
          e1.provider = e1.provider.copyWith(
            (p) {
              p.employments.clear();
              p.employments.addAll(p.employments.map(
                (e) => hasSameId(e, employment) ? employment : e,
              ));
              p.details = details;
            },
          );
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
