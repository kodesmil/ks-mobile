import 'package:flutter/widgets.dart';

class SessionsStateNotifier extends ChangeNotifier {
  int sessions = 0;

  void reloadSessionState() {
    sessions++;
    notifyListeners();
  }
}
