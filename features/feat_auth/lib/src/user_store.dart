import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final FirebaseAuth firebaseAuth;

  _UserStore(this.firebaseAuth);

  @observable
  FirebaseUser user;

  final _controller = StreamController<FirebaseUser>.broadcast();

  Stream<FirebaseUser> get output => _controller.stream;

  Sink<FirebaseUser> get input => _controller.sink;

  @action
  Future<FirebaseUser> signInSilently() async {
    if (user == null) {
      user = await firebaseAuth.currentUser();
      input.add(user);
    }
    return user;
  }

  @action
  Future signOut() async {
    await firebaseAuth.signOut();
    user = null;
    input.add(null);
  }

  @action
  Future deleteUser() async {
    await user.delete();
    user = null;
    input.add(null);
  }
}
