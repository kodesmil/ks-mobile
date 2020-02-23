import 'package:module_auth/models/user.dart';
import 'package:module_auth/di/auth_component.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'sign_up_store.g.dart';

class SignUpStore = _SignUpStore with _$SignUpStore;

abstract class _SignUpStore with Store {
  final signUpErrorStore = SignUpErrorStore();
  final errorStore = ErrorStore();
  final tokenApi = networkModule.provideTokenApi();
  final userApi = networkModule.provideUserApi();
  final sharedPreferenceHelper = localModule.provideSharedPreferenceHelper();

  _SignUpStore() {
    _setupValidations();
  }

  List<ReactionDisposer> _disposers;

  void _setupValidations() {
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => firstName, validateFirstName),
      reaction((_) => lastName, validateLastName),
      reaction((_) => dateOfBirth, validateDateOfBirth),
      reaction((_) => password, validatePassword),
    ];
  }

  @observable
  String email = '';

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @observable
  String dateOfBirth = '';

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
  void setFirstName(String value) {
    firstName = value;
  }

  @action
  void setLastName(String value) {
    lastName = value;
  }

  @action
  void setDateOfBirth(String value) {
    dateOfBirth = value;
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
  void validateFirstName(String value) {
    if (value.isEmpty) {
      signUpErrorStore.firstName = "First name can't be empty";
    } else {
      signUpErrorStore.firstName = null;
    }
  }

  @action
  void validateLastName(String value) {
    if (value.isEmpty) {
      signUpErrorStore.lastName = "Last name can't be empty";
    } else {
      signUpErrorStore.lastName = null;
    }
  }

  @action
  void validatePassword(String value) {
    if (value.isEmpty) {
      signUpErrorStore.password = "Password can't be empty";
    } else if (value.length < 6) {
      signUpErrorStore.password = "Password must be at-least 6 characters long";
    } else {
      signUpErrorStore.password = null;
    }
  }

  @action
  void validateDateOfBirth(String value) {
    if (value.isEmpty) {
      signUpErrorStore.dateOfBirth = "Date of birth can't be empty";
    } else {
      signUpErrorStore.dateOfBirth = null;
    }
  }

  @action
  Future signUp() async {
    loading = true;
    try {
      final token = await tokenApi.getSkimAccessToken();
      final user = User(
        userName: email,
        password: password,
        active: true,
        name: Name(
          familyName: lastName,
          givenName: firstName,
        ),
        emails: [
          Email(value: email),
        ],
      );
      await userApi.postUser(token, user);
      final result = await tokenApi.getAuthAccessToken(user);
      await sharedPreferenceHelper.saveAuthToken(result);
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
    validateDateOfBirth(dateOfBirth);
    validateFirstName(firstName);
    validateLastName(lastName);
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

  @observable
  String firstName;

  @observable
  String lastName;

  @observable
  String dateOfBirth;

  @computed
  bool get hasErrors =>
      email != null ||
      password != null ||
      firstName != null ||
      lastName != null ||
      dateOfBirth != null;
}
