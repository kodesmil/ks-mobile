import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'offer_store.g.dart';

class ServiceOfferStore = _ServiceOfferStore with _$ServiceOfferStore;

abstract class _ServiceOfferStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final ServicesClient client;

  @observable
  List<ServiceOffer> subjects = [];

  _ServiceOfferStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @action
  Future fetch() async {
    try {
      final request = ListServiceOfferRequest();
      final response = await client.listServiceOffer(request);
      subjects = response.results;
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<ServiceSession> startSession(ServiceOffer offer) async {
    try {
      final payload = ServiceSession()
        ..scheduledAt = Timestamp.fromDateTime(DateTime.now())
        ..offer = offer;
      //..client
      final request = CreateServiceSessionRequest();
      request..payload = payload;
      final response = await client.createServiceSession(request);
      return response.result;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
