import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final FirebaseAuth firebaseAuth;

  _UserStore(this.firebaseAuth);

  @computed
  User get user => firebaseAuth.currentUser;

  Stream<User> get changes => firebaseAuth.authStateChanges();

  @action
  Future signOut() async {
    await firebaseAuth.signOut();
  }

  @action
  Future deleteUser() async {
    await user.delete();
  }
}
