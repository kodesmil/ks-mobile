import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'employment_edit_store.g.dart';

class ServiceEmploymentEditStore = _ServiceEmploymentEditStore
    with _$ServiceEmploymentEditStore;

abstract class _ServiceEmploymentEditStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  ServiceProvider _provider;

  @observable
  ServiceEmployment employment;

  _ServiceEmploymentEditStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future setApplication(ServiceProvider p, ServiceEmployment o) async {
    _provider = p;
    employment = o ?? ServiceEmployment();
  }

  @action
  Future createOrUpdate() async =>
      employment?.updatedAt != null ? await update() : await create();

  @action
  Future update() async {
    try {
      final request = UpdateServiceEmploymentRequest()..payload = employment;
      final response = await client.updateServiceEmployment(request);
      loadingStore.success = true;
      employment = response.result;
    } catch (e) {
      print(e);
    }
  }

  @action
  Future create() async {
    try {
      final request = CreateServiceEmploymentRequest()..payload = employment;
      final response = await client.createServiceEmployment(request);
      loadingStore.success = true;
      employment = response.result;
    } catch (e) {
      print(e);
    }
  }
}
