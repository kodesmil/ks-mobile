import 'package:mobx/mobx.dart';

part 'loading_store.g.dart';

class LoadingStore = _LoadingStore with _$LoadingStore;

abstract class _LoadingStore with Store {

  @observable
  bool loading = false;

  @observable
  bool success = false;

  @observable
  bool failure = false;

  @observable
  String failureMessage = '';
}
