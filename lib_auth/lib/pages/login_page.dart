import 'package:lib_auth/stores/login_store.dart';
import 'package:lib_lego/widgets/empty_app_bar_widget.dart';
import 'package:lib_lego/widgets/progress_indicator_widget.dart';
import 'package:lib_lego/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        appBar: EmptyAppBar(),
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
                    'Robin Hood for active people',
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
        builder: (context) => TextFieldWidget(
          hint: 'Email',
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
        builder: (context) => TextFieldWidget(
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
          child: Text('Login'.toUpperCase()),
          shape: StadiumBorder(),
          onPressed: () async {
            _store.validateAll();
            if (_store.canLogin) {
              _store.login();
            } else {
              showErrorMessage(context, 'Please fill in all fields');
            }
          },
        ),
      );

  Widget _buildSignInButton() => Observer(
        builder: (context) => FlatButton(
          child: Text('Sign up'.toUpperCase()),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, '/sign-up'),
        ),
      );

  showErrorMessage(BuildContext context, String message) {
    if (message?.isNotEmpty == true) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
    }
    return Container();
  }

  Widget navigate(BuildContext context) {
    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/home',
        (route) => false,
      );
    });
    return Container();
  }
}
