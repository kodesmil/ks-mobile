import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class ServiceSessionStore = _ServiceSessionStore with _$ServiceSessionStore;

class ServiceSessionEvaluationStore = _ServiceSessionEvaluationStore
    with _$ServiceSessionEvaluationStore;

abstract class _ServiceSessionStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceSessionStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  List<ServiceSession> sessions = [];

  @action
  Future fetch() async {
    final request = ListServiceSessionRequest();
    final response = await client.listServiceSession(request);
    loadingStore.success = true;
    sessions = response.results;
  }
}

abstract class _ServiceSessionEvaluationStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;

  ServicesClient client;

  _ServiceSessionEvaluationStore(
    this.errorStore,
    this.loadingStore,
    this.client,
  );

  @observable
  ServiceProviderSessionEvaluation evaluation;

  @action
  Future create(ServiceSession session) async {
    final request = UpdateServiceSessionRequest()
      ..payload = (session
        ..finishedAt = Timestamp.fromDateTime(DateTime.now())
        ..evaluation = evaluation);
    final response = await client.updateServiceSession(request);
    loadingStore.success = true;
  }
}
