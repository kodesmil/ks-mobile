import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';

part 'google_sign_in_store.g.dart';

class GoogleSignInStore = _GoogleSignInStore with _$GoogleSignInStore;

abstract class _GoogleSignInStore with Store {
  GoogleSignIn _googleSignIn;

  @observable
  GoogleSignInAccount currentUser;

  StreamSubscription<GoogleSignInAccount> user$;

  _GoogleSignInStore(this._googleSignIn) {
    user$ = _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount account) {
      currentUser = account;
    });
  }

  @action
  Future<void> signInSilently() async {
    await _googleSignIn.signInSilently();
  }

  @action
  Future<void> signIn() async {
    await _googleSignIn.signIn();
  }

  @action
  Future<void> signOut() => _googleSignIn.signOut();

  @action
  Future<void> dispose() => user$.cancel();
}
