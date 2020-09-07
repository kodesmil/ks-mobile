import 'dart:async';
import 'package:feat_services/feat_services.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'session_evaluation_store.g.dart';

class ServiceSessionEvaluationStore = _ServiceSessionEvaluationStore
    with _$ServiceSessionEvaluationStore;

abstract class _ServiceSessionEvaluationStore with Store {
  final ErrorStore errorStore;
  final LoadingStore loadingStore;
  final SessionsStateNotifier notifier;

  ServicesClient client;

  _ServiceSessionEvaluationStore(
    this.errorStore,
    this.loadingStore,
    this.notifier,
    this.client,
  );

  @observable
  ServiceSessionEvaluation evaluation;

  @action
  Future create(ServiceSession session) async {
    final request = UpdateServiceSessionRequest()
      ..payload = (session
        ..status = ServiceSession_Status.FINISHED
        ..finishedAt = Timestamp.fromDateTime(DateTime.now()));
    await client.updateServiceSession(request);
    await client.createServiceSessionEvaluation(
      CreateServiceSessionEvaluationRequest()
        ..payload = (evaluation.copyWith((o) {
          o.session = session;
        })),
    );
    loadingStore.success = true;
    notifier.reloadSessionState();
  }
}
