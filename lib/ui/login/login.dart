import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/form/login_store.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flushbar/flushbar_helper.dart';

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
          Center(child: _buildRightSide()),
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
              SizedBox(height: 32.0),
              _buildLoginField(),
              SizedBox(height: 16.0),
              _buildSignInButton()
            ],
          ),
        ),
      );

  Widget _buildEmailField() => Observer(
        builder: (context) => TextFieldWidget(
          hint: Strings.login_et_user_email,
          inputType: TextInputType.emailAddress,
          icon: Icons.person,
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
          hint: Strings.login_et_user_password,
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
          onPressed: () => _store.login(),
        ),
      );

  Widget _buildSignInButton() => Observer(
        builder: (context) => FlatButton(
          child: Text('Sign up'.toUpperCase()),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, Routes.signUp),
        ),
      );

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
