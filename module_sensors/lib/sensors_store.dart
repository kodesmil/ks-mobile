import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

part 'sensors_store.g.dart';

class SensorsStore = _SensorsStore with _$SensorsStore;

abstract class _SensorsStore with Store {
  final errorStore = ErrorStore();

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @action
  Future getFits() async {}
}
