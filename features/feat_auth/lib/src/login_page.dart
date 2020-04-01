import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/app_bars.dart';
import 'package:lib_lego/navigations.dart';
import 'package:lib_lego/progress_indicators.dart';
import 'package:lib_lego/snack_bars.dart';
import 'package:lib_lego/textfields.dart';
import 'package:provider/provider.dart';

import 'login_store.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    final store = Provider.of<LoginStore>(context);
    _emailController.addListener(() {
      store.setEmail(_emailController.text);
    });
    _passwordController.addListener(() {
      store.setPassword(_passwordController.text);
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<LoginStore>(context);
    return Scaffold(
      primary: true,
      appBar: KsEmptyAppBar(),
      body: _buildBody(store),
    );
  }

  Widget _buildBody(LoginStore store) => Stack(
        children: <Widget>[
          Center(
            heightFactor: 1.5,
            child: _buildRightSide(store),
          ),
          Observer(
            builder: (context) => store.success
                ? ksNavigateAndRemoveUntil(context, '/home')
                : ksShowErrorMessage(context, store.errorStore.errorMessage),
          ),
          Observer(
            builder: (context) => Visibility(
              visible: store.loading,
              child: KsProgressIndicator(),
            ),
          )
        ],
      );

  Widget _buildRightSide(LoginStore store) => Form(
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
              _buildEmailField(store),
              _buildPasswordField(store),
              SizedBox(height: 48.0),
              _buildLoginField(store),
              SizedBox(height: 16.0),
              _buildSignInButton(store)
            ],
          ),
        ),
      );

  Widget _buildEmailField(LoginStore store) => Observer(
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
          errorText: store.formErrorStore.email,
        ),
      );

  Widget _buildPasswordField(LoginStore store) => Observer(
        builder: (context) => KsTextField(
          hint: 'Password',
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          icon: Icons.lock,
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: store.formErrorStore.password,
        ),
      );

  Widget _buildLoginField(LoginStore store) => Observer(
        builder: (context) => RaisedButton(
          child: Text('Login'),
          shape: StadiumBorder(),
          onPressed: () async {
            store.validateAll();
            if (store.canLogin) {
              store.login();
            } else {
              ksShowErrorMessage(context, 'Please fill in all fields');
            }
          },
        ),
      );

  Widget _buildSignInButton(LoginStore store) => Observer(
        builder: (context) => FlatButton(
          child: Text('Sign up'),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, '/sign-up'),
        ),
      );
}
