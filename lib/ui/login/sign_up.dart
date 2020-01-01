import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/form/sign_up_store.dart';
import 'package:boilerplate/widgets/date_field_widget.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _store = SignUpStore();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      _store.setEmail(_emailController.text);
    });
    _passwordController.addListener(() {
      _store.setPassword(_passwordController.text);
    });
    _dateOfBirthController.addListener(() {
      _store.setDateOfBirth(_dateOfBirthController.text);
    });
    _firstNameController.addListener(() {
      _store.setFirstName(_firstNameController.text);
    });
    _lastNameController.addListener(() {
      _store.setPassword(_lastNameController.text);
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _lastNameController.dispose();
    _firstNameController.dispose();
    _dateOfBirthController.dispose();
    _passwordFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        primary: true,
        appBar: EmptyAppBar(),
        body: _buildBody(),
      );

  Widget _buildBody() => Stack(
        children: [
          _buildRightSide(),
          Observer(
            builder: (context) => _store.success
                ? navigate(context)
                : showErrorMessage(context, _store.errorStore.errorMessage),
          ),
          Observer(
            builder: (context) => Visibility(
              visible: _store.loading,
              child: CustomProgressIndicatorWidget(),
            ),
          )
        ],
      );

  Widget _buildRightSide() => Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 32.0),
              _buildFirstNameField(),
              _buildLastNameField(),
              _buildDateOfBirthField(),
              _buildEmailField(),
              _buildPasswordField(),
              SizedBox(height: 32.0),
              _buildSignUpButton()
            ],
          ),
        ),
      );

  Widget _buildEmailField() => Observer(
        builder: (context) => TextFieldWidget(
          hint: Strings.login_et_user_email,
          inputType: TextInputType.emailAddress,
          textController: _emailController,
          focusNode: _emailFocusNode,
          padding: EdgeInsets.only(top: 16.0),
          inputAction: TextInputAction.next,
          onFieldSubmitted: (value) =>
              FocusScope.of(context).requestFocus(_passwordFocusNode),
          errorText: _store.signUpErrorStore.email,
        ),
      );

  Widget _buildFirstNameField() => Observer(
        builder: (context) => TextFieldWidget(
          hint: 'First Name',
          textController: _firstNameController,
          inputAction: TextInputAction.next,
          autoFocus: true,
          textCapitalization: TextCapitalization.words,
          onFieldSubmitted: (value) =>
              FocusScope.of(context).requestFocus(_lastNameFocusNode),
          errorText: _store.signUpErrorStore.firstName,
        ),
      );

  Widget _buildLastNameField() => Observer(
        builder: (context) => TextFieldWidget(
          hint: 'Last Name',
          textController: _lastNameController,
          inputAction: TextInputAction.next,
          focusNode: _lastNameFocusNode,
          textCapitalization: TextCapitalization.words,
          padding: EdgeInsets.only(top: 16.0),
          errorText: _store.signUpErrorStore.lastName,
        ),
      );

  Widget _buildPasswordField() => Observer(
        builder: (context) => TextFieldWidget(
          hint: Strings.login_et_user_password,
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: _store.signUpErrorStore.password,
        ),
      );

  Widget _buildDateOfBirthField() => Observer(
        builder: (context) => DateFieldWidget(
          hint: 'Date of birth',
          padding: EdgeInsets.only(top: 16.0),
          textController: _dateOfBirthController,
          selectedDate: (date) =>
              _dateOfBirthController.text = DateFormat.yMMMMd().format(date),
          errorText: _store.signUpErrorStore.dateOfBirth,
        ),
      );

  Widget _buildSignUpButton() {
    return RaisedButton(
      child: Text('Sign up'),
      shape: StadiumBorder(),
      onPressed: () async {
        if (_store.canSignUp) {
          _store.signUp();
        } else {
          showErrorMessage(context, 'Please fill in all fields');
        }
      },
    );
  }

  showErrorMessage(BuildContext context, String message) {
    if (message != null) {
      FlushbarHelper.createError(
        message: message,
        title: 'Error',
        duration: Duration(seconds: 3),
      )..show(context);
    }

    return Container();
  }

  Widget navigate(BuildContext context) {
    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        Routes.home,
        (Route<dynamic> route) => false,
      );
    });
    return Container();
  }
}
