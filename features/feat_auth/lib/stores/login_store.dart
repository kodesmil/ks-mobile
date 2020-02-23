import 'package:feat_auth/di/auth_component.dart';
import 'package:feat_auth/models/user.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final formErrorStore = LoginErrorStore();
  final errorStore = ErrorStore();
  final tokenApi = networkModule.provideTokenApi();
  final userApi = networkModule.provideUserApi();
  final sharedPreferenceHelper = localModule.provideSharedPreferenceHelper();

  _LoginStore() {
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
      formErrorStore.password = "Password must be at-least 6 characters long";
    } else {
      formErrorStore.password = null;
    }
  }

  @action
  Future login() async {
    loading = true;
    try {
      final user = User(
        userName: email,
        password: password,
      );
      final result = await tokenApi.getAuthAccessToken(user);
      await sharedPreferenceHelper.saveAuthToken(result);
      loading = false;
      success = false;
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

class LoginErrorStore = _LoginErrorStore with _$LoginErrorStore;

abstract class _LoginErrorStore with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
