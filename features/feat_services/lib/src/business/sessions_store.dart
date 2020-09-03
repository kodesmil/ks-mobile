import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'sessions_store.g.dart';

class ServiceSessionBizListStore = _ServiceSessionBizListStore with _$ServiceSessionBizListStore;

abstract class _ServiceSessionBizListStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceSessionBizListStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  List<ServiceSession> sessions = [];

  @action
  Future fetch() async {
    final request = ListServiceOfferSessionRequest();
    final response = await client.listServiceOfferSession(request);
    loadingStore.success = true;
    sessions = response.results;
    sessions.sort(
      (a, b) => b.createdAt.toDateTime().compareTo(a.createdAt.toDateTime()),
    );
  }
}
