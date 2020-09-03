import 'package:feat_auth/feat_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
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
    store.reset();
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
          _buildRightSide(store),
          Observer(
            builder: (context) => store.success
                ? ksNavigateNamedAndRemoveUntil(context, '/')
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
          padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'welcome to',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Swanly Care',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    'women\'s health platform',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(height: 50),
                  Observer(
                    builder: (context) => KsTextField(
                      hint: 'Email',
                      autoFocus: true,
                      inputType: TextInputType.emailAddress,
                      icon: Icons.email,
                      textCapitalization: TextCapitalization.none,
                      textController: _emailController,
                      inputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(_passwordFocusNode);
                      },
                      errorText: store.formErrorStore.email,
                    ),
                  ),
                  Observer(
                    builder: (context) => KsTextField(
                      hint: 'Password',
                      isObscure: true,
                      padding: EdgeInsets.only(top: 16.0),
                      icon: Icons.lock,
                      textCapitalization: TextCapitalization.none,
                      textController: _passwordController,
                      focusNode: _passwordFocusNode,
                      errorText: store.formErrorStore.password,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Observer(
                    builder: (context) => RaisedButton(
                      child: Text('Login'),
                      shape: StadiumBorder(),
                      onPressed: () async {
                        store.validateAll();
                        if (store.canLogin) {
                          await store.login();
                        } else {
                          ksShowErrorMessage(
                            context,
                            'Please fill in all fields',
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Observer(
                    builder: (context) => OutlineButton(
                      child: Text('Sign up with email'),
                      shape: StadiumBorder(),
                      onPressed: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => SignUpPage(),
                          )),
                    ),
                  ),
                  Observer(
                    builder: (context) => OutlineButton(
                      child: Text('Continue anonymously'),
                      shape: StadiumBorder(),
                      onPressed: () => store.continueAnonymously(),
                    ),
                  ),
                  Observer(
                    builder: (context) => OutlineButton(
                        child: Text('Continue with Google'),
                        shape: StadiumBorder(),
                        onPressed: () => store.continueWithGoogle()),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
