import 'package:feat_auth/feat_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'sign_up_store.g.dart';

class SignUpStore = _SignUpStore with _$SignUpStore;

abstract class _SignUpStore with Store {
  final SignUpErrorStore signUpErrorStore;
  final ErrorStore errorStore;
  final FirebaseAuth firebaseAuth;
  final UserStore userStore;

  _SignUpStore(
    this.errorStore,
    this.signUpErrorStore,
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
  bool loading = false;

  @computed
  bool get canSignUp => !signUpErrorStore.hasErrors;

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  Future reset() async {
    loading = false;
    success = false;
  }

  @action
  void validateEmail(String value) {
    if (value.isEmpty) {
      signUpErrorStore.email = "Email can't be empty";
    } else if (!isEmail(value)) {
      signUpErrorStore.email = 'Please enter a valid email address';
    } else {
      signUpErrorStore.email = null;
    }
  }

  @action
  void validatePassword(String value) {
    if (value.isEmpty) {
      signUpErrorStore.password = "Password can't be empty";
    } else if (value.length < 6) {
      signUpErrorStore.password = 'Password must be at-least 6 characters long';
    } else {
      signUpErrorStore.password = null;
    }
  }

  @action
  Future signUp() async {
    loading = true;
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
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

class SignUpErrorStore = _SignUpErrorStore with _$SignUpErrorStore;

abstract class _SignUpErrorStore with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
