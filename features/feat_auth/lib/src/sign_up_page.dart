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
                ? ksNavigateNamedAndRemoveUntil(context, '/')
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
          padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
          child: Column(
            children: <Widget>[
              Text(
                'Create User',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Observer(
                builder: (context) => KsTextField(
                  hint: 'Email',
                  icon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  textController: _emailController,
                  textCapitalization: TextCapitalization.none,
                  focusNode: _emailFocusNode,
                  padding: EdgeInsets.only(top: 16.0),
                  inputAction: TextInputAction.next,
                  onFieldSubmitted: (value) =>
                      FocusScope.of(context).requestFocus(
                    _passwordFocusNode,
                  ),
                  errorText: store.signUpErrorStore.email,
                ),
              ),
              Observer(
                builder: (context) => KsTextField(
                  hint: 'Password',
                  icon: Icons.lock,
                  isObscure: true,
                  padding: EdgeInsets.only(top: 20.0),
                  textController: _passwordController,
                  textCapitalization: TextCapitalization.none,
                  focusNode: _passwordFocusNode,
                  errorText: store.signUpErrorStore.password,
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Sign up'),
                shape: StadiumBorder(),
                onPressed: () async {
                  store.validateAll();
                  if (store.canSignUp) {
                    await store.signUp();
                  } else {
                    ksShowErrorMessage(context, 'Please fill in all fields');
                  }
                },
              ),
              SizedBox(height: 40),
              Observer(
                builder: (context) => OutlineButton(
                  child: Text('Back'),
                  shape: StadiumBorder(),
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                ),
              ),
            ],
          ),
        ),
      );
}
