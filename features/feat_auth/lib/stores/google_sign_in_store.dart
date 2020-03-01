import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';

part 'google_sign_in_store.g.dart';

class GoogleSignInStore = _GoogleSignInStore with _$GoogleSignInStore;

abstract class _GoogleSignInStore with Store {
  @observable
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'profile',
      'openid',
      'https://www.googleapis.com/auth/fitness.body.read',
      'https://www.googleapis.com/auth/fitness.location.read',
      'https://www.googleapis.com/auth/fitness.nutrition.read',
    ],
  );

  @observable
  GoogleSignInAccount currentUser;

  StreamSubscription<GoogleSignInAccount> user$;

  _GoogleSignInStore() {
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
