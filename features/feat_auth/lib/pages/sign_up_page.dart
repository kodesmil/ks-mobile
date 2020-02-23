import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/app_bars.dart';
import 'package:lib_lego/date_fields.dart';
import 'package:lib_lego/navigations.dart';
import 'package:lib_lego/progress_indicators.dart';
import 'package:lib_lego/snack_bars.dart';
import 'package:lib_lego/textfields.dart';
import 'package:feat_auth/stores/sign_up_storeart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _dateOfBirthFocusNode = FocusNode();
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
      _store.setLastName(_lastNameController.text);
    });
    _dateOfBirthController.addListener(() {
      _store.setDateOfBirth(_dateOfBirthController.text);
    });
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _emailController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _passwordController.dispose();
    _lastNameController.dispose();
    _lastNameFocusNode.dispose();
    _dateOfBirthController.dispose();
    _dateOfBirthFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        primary: true,
        appBar: KsEmptyAppBar(),
        body: _buildBody(),
      );

  Widget _buildBody() => Stack(
        children: [
          _buildRightSide(),
          Observer(
            builder: (context) => _store.success
                ? ksNavigateAndRemoveUntil(context, '/home')
                : ksShowErrorMessage(
                    context,
                    _store.errorStore.errorMessage,
                  ),
          ),
          Observer(
            builder: (context) => Visibility(
              visible: _store.loading,
              child: KsProgressIndicator(),
            ),
          )
        ],
      );

  Widget _buildRightSide() => Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 48.0),
              _buildFirstNameField(),
              _buildLastNameField(),
              _buildDateOfBirthField(),
              _buildEmailField(),
              _buildPasswordField(),
              SizedBox(height: 48.0),
              _buildSignUpButton(),
              SizedBox(height: 16.0),
              _buildLoginButton(),
            ],
          ),
        ),
      );

  Widget _buildEmailField() => Observer(
        builder: (context) => KsTextField(
          hint: 'Email',
          icon: Icons.email,
          inputType: TextInputType.emailAddress,
          textController: _emailController,
          focusNode: _emailFocusNode,
          padding: EdgeInsets.only(top: 16.0),
          inputAction: TextInputAction.next,
          onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(
            _passwordFocusNode,
          ),
          errorText: _store.signUpErrorStore.email,
        ),
      );

  Widget _buildFirstNameField() => Observer(
        builder: (context) => KsTextField(
          hint: 'First Name',
          icon: Icons.person,
          textController: _firstNameController,
          inputAction: TextInputAction.next,
          autoFocus: true,
          textCapitalization: TextCapitalization.words,
          onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(
            _lastNameFocusNode,
          ),
          errorText: _store.signUpErrorStore.firstName,
        ),
      );

  Widget _buildLastNameField() => Observer(
        builder: (context) => KsTextField(
          hint: 'Last Name',
          icon: Icons.person,
          textController: _lastNameController,
          inputAction: TextInputAction.next,
          focusNode: _lastNameFocusNode,
          textCapitalization: TextCapitalization.words,
          padding: EdgeInsets.only(top: 16.0),
          errorText: _store.signUpErrorStore.lastName,
          onFieldSubmitted: (value) => FocusScope.of(context).requestFocus(
            _dateOfBirthFocusNode,
          ),
        ),
      );

  Widget _buildPasswordField() => Observer(
        builder: (context) => KsTextField(
          hint: 'Password',
          icon: Icons.lock,
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: _store.signUpErrorStore.password,
        ),
      );

  Widget _buildDateOfBirthField() => Observer(
        builder: (context) => KsDateFieldWidget(
          hint: 'Date of birth',
          icon: Icons.child_friendly,
          padding: EdgeInsets.only(top: 16.0),
          textController: _dateOfBirthController,
          focusNode: _dateOfBirthFocusNode,
          selectedDate: (date) {
            if (date != null) {
              _dateOfBirthController.text = DateFormat.yMMMMd().format(date);
              FocusScope.of(context).requestFocus(_emailFocusNode);
            }
          },
          errorText: _store.signUpErrorStore.dateOfBirth,
        ),
      );

  Widget _buildSignUpButton() {
    return RaisedButton(
      child: Text('Sign up'.toUpperCase()),
      shape: StadiumBorder(),
      onPressed: () async {
        _store.validateAll();
        if (_store.canSignUp) {
          _store.signUp();
        } else {
          ksShowErrorMessage(context, 'Please fill in all fields');
        }
      },
    );
  }

  Widget _buildLoginButton() => Observer(
        builder: (context) => FlatButton(
          child: Text('Login'.toUpperCase()),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, '/login'),
        ),
      );
}
