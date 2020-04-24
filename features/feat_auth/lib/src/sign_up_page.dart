import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    final store = Provider.of<SignUpStore>(context);
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
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SignUpStore>(context);
    return Scaffold(
      primary: true,
      appBar: KsEmptyAppBar(),
      body: _buildBody(store),
    );
  }

  Widget _buildBody(SignUpStore store) => Stack(
        children: [
          _buildRightSide(store),
          Observer(
            builder: (context) => store.success
                ? ksNavigateAndRemoveUntil(context, '/home')
                : ksShowErrorMessage(
                    context,
                    store.errorStore.errorMessage,
                  ),
          ),
          Observer(
            builder: (context) => Visibility(
              visible: store.loading,
              child: KsProgressIndicator(),
            ),
          )
        ],
      );

  Widget _buildRightSide(SignUpStore store) => Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 48.0),
              _buildEmailField(store),
              _buildPasswordField(store),
              SizedBox(height: 48.0),
              _buildSignUpButton(store),
              SizedBox(height: 16.0),
              _buildLoginButton(store),
            ],
          ),
        ),
      );

  Widget _buildEmailField(SignUpStore store) => Observer(
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
          errorText: store.signUpErrorStore.email,
        ),
      );

  Widget _buildPasswordField(SignUpStore store) => Observer(
        builder: (context) => KsTextField(
          hint: 'Password',
          icon: Icons.lock,
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: store.signUpErrorStore.password,
        ),
      );

  Widget _buildSignUpButton(SignUpStore store) {
    return RaisedButton(
      child: Text('Sign up'.toUpperCase()),
      shape: StadiumBorder(),
      onPressed: () async {
        store.validateAll();
        if (store.canSignUp) {
          await store.signUp();
        } else {
          ksShowErrorMessage(context, 'Please fill in all fields');
        }
      },
    );
  }

  Widget _buildLoginButton(SignUpStore store) => Observer(
        builder: (context) => FlatButton(
          child: Text('Login'.toUpperCase()),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, '/login'),
        ),
      );
}
