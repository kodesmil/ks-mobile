import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/form/sign_up_store.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flushbar/flushbar_helper.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
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
    return Scaffold(
      primary: true,
      appBar: EmptyAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _buildRightSide(),
        Observer(
          builder: (context) {
            return _store.success
                ? navigate(context)
                : showErrorMessage(context, _store.errorStore.errorMessage);
          },
        ),
        Observer(
          builder: (context) {
            return Visibility(
              visible: _store.loading,
              child: CustomProgressIndicatorWidget(),
            );
          },
        )
      ],
    );
  }

  Widget _buildRightSide() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 96.0),
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
            SizedBox(height: 96.0),
            _buildUserIdField(),
            _buildPasswordField(),
            SizedBox(height: 48.0),
            _buildSignInButton()
          ],
        ),
      ),
    );
  }

  Widget _buildUserIdField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: Strings.login_et_user_email,
          inputType: TextInputType.emailAddress,
          icon: Icons.person,
          textController: _emailController,
          inputAction: TextInputAction.next,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: _store.signUpErrorStore.email,
        );
      },
    );
  }

  Widget _buildPasswordField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: Strings.login_et_user_password,
          isObscure: true,
          padding: EdgeInsets.only(top: 16.0),
          icon: Icons.lock,
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          errorText: _store.signUpErrorStore.password,
        );
      },
    );
  }

  Widget _buildSignInButton() {
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
