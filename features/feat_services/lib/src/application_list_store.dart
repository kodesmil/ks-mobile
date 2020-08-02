import 'dart:async';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'application_list_store.g.dart';

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
