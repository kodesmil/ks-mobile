import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'offer_edit_store.g.dart';

class ServiceOfferEditStore = _ServiceOfferEditStore
    with _$ServiceOfferEditStore;

abstract class _ServiceOfferEditStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  ServiceOffer offer;

  _ServiceOfferEditStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future setApplication(ServiceProvider p, ServiceOffer o) async {
    offer =
        o ?? (ServiceOffer()..id = (Identifier()..resourceId = Uuid().v4()));
    offer = offer.copyWith((e) {
      e.provider = p;
    });
  }

  @action
  Future createOrUpdate() async =>
      offer?.updatedAt != null ? await update() : await create();

  @action
  Future update() async {
    try {
      final request = UpdateServiceOfferRequest()..payload = offer;
      final response = await client.updateServiceOffer(request);
      loadingStore.success = true;
      offer = response.result;
    } catch (e) {
      print(e);
    }
  }

  @action
  Future create() async {
    try {
      final request = CreateServiceOfferRequest()..payload = offer;
      final response = await client.createServiceOffer(request);
      loadingStore.success = true;
      offer = response.result;
    } catch (e) {
      print(e);
    }
  }
}
