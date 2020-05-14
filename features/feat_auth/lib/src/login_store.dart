import 'package:feat_auth/feat_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_di/lib_di.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final LoginErrorStore formErrorStore;
  final ErrorStore errorStore;
  final FirebaseAuth firebaseAuth;
  final UserStore userStore;

  _LoginStore(
    this.errorStore,
    this.formErrorStore,
    this.firebaseAuth,
    this.userStore,
  ) {
    _setupValidations();
  }

  List<ReactionDisposer> _disposers;

  void _setupValidations() {
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
    ];
  }

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool success = false;

  @observable
  bool loading = true;

  @computed
  bool get canLogin => !formErrorStore.hasErrors;

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void validateEmail(String value) {
    if (value.isEmpty) {
      formErrorStore.email = "Email can't be empty";
    } else if (!isEmail(value)) {
      formErrorStore.email = 'Please enter a valid email address';
    } else {
      formErrorStore.email = null;
    }
  }

  @action
  void validatePassword(String value) {
    if (value.isEmpty) {
      formErrorStore.password = "Password can't be empty";
    } else if (value.length < 6) {
      formErrorStore.password = 'Password must be at-least 6 characters long';
    } else {
      formErrorStore.password = null;
    }
  }

  @action
  Future login() async {
    loading = true;
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      userStore.user = result.user;
      loading = false;
      success = true;
      errorStore.showError = false;
    } catch (e) {
      loading = false;
      success = false;
      errorStore.showError = true;
      errorStore.errorMessage = e.toString().contains('ERROR_USER_NOT_FOUND')
          ? 'Username and password doesn\'t match'
          : 'Something went wrong, please check your internet connection and try again';
      print(e);
    }
  }

  @action
  Future logout() async {
    loading = true;
  }

  @action
  Future reset() async {
     success = false;
  }

  @action
  void validateAll() {
    validatePassword(password);
    validateEmail(email);
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}

class LoginErrorStore = _LoginErrorStore with _$LoginErrorStore;

abstract class _LoginErrorStore with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
