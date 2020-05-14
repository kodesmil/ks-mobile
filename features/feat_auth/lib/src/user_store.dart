import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final FirebaseAuth firebaseAuth;

  _UserStore(this.firebaseAuth);

  @observable
  FirebaseUser user;

  @action
  Future<FirebaseUser> signInSilently() async {
    user = await firebaseAuth.currentUser();
    return user;
  }

  @action
  Future signOut() async {
    await firebaseAuth.signOut();
    user = null;
  }

  @action
  Future deleteUser() async {
    await user.delete();
    user = null;
  }
}
