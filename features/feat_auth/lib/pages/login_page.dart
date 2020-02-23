import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/app_bars.dart';
import 'package:lib_lego/navigations.dart';
import 'package:lib_lego/progress_indicators.dart';
import 'package:lib_lego/snack_bars.dart';
import 'package:lib_lego/textfields.dart';
import 'package:feat_auth/stores/login_storeart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _store = LoginStore();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      _store.setEmail(_emailController.text);
    });
    _passwordController.addListener(() {
      _store.setPassword(_passwordController.text);
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        primary: true,
        appBar: KsEmptyAppBar(),
        body: _buildBody(),
      );

  Widget _buildBody() => Stack(
        children: <Widget>[
          Center(
            heightFactor: 1.5,
            child: _buildRightSide(),
          ),
          Observer(
            builder: (context) => _store.success
                ? ksNavigateAndRemoveUntil(context, '/home')
                : ksShowErrorMessage(context, _store.errorStore.errorMessage),
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
              Column(
                children: <Widget>[
                  Text(
                    'welcome to',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'motim fit',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Text(
                    'find your motivation',
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
              SizedBox(height: 48.0),
              _buildEmailField(),
              _buildPasswordField(),
              SizedBox(height: 48.0),
              _buildLoginField(),
              SizedBox(height: 16.0),
              _buildSignInButton()
            ],
          ),
        ),
      );

  Widget _buildEmailField() => Observer(
        builder: (context) => KsTextField(
          hint: 'Email',
          autoFocus: true,
          inputType: TextInputType.emailAddress,
          icon: Icons.email,
          textController: _emailController,
          inputAction: TextInputAction.next,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: _store.formErrorStore.email,
        ),
      );

  Widget _buildPasswordField() => Observer(
        builder: (context) => KsTextField(
          hint: 'Password',
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          icon: Icons.lock,
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: _store.formErrorStore.password,
        ),
      );

  Widget _buildLoginField() => Observer(
        builder: (context) => RaisedButton(
          child: Text('Login'),
          shape: StadiumBorder(),
          onPressed: () async {
            _store.validateAll();
            if (_store.canLogin) {
              _store.login();
            } else {
              ksShowErrorMessage(context, 'Please fill in all fields');
            }
          },
        ),
      );

  Widget _buildSignInButton() => Observer(
        builder: (context) => FlatButton(
          child: Text('Sign up'),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, '/sign-up'),
        ),
      );
}
