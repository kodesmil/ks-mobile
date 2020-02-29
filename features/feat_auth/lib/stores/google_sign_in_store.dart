import 'package:feat_auth/di/auth_component.dart';
import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'google_sign_in_store.g.dart';

class GoogleSignInStore = _GoogleSignInStore with _$GoogleSignInStore;

abstract class _GoogleSignInStore with Store {


  @observable
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'https://www.googleapis.com/auth/fitness.activity.read'
    ],
  );

  @observable
  GoogleSignInAccount currentUser;


  _GoogleSignInStore() {
    _googleSignIn.onCurrentUserChanged.listen(
            (GoogleSignInAccount account) {currentUser = account;}
    );
    _googleSignIn.signInSilently();
  }

  @action
  Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @action
  Future<void> handleSignOut() => _googleSignIn.disconnect();
}
