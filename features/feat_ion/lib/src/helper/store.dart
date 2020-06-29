import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'store.g.dart';

class IonStore = _IonStore with _$IonStore;

abstract class _IonStore with Store {

}
