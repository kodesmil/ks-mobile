import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/form/login_store.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flushbar/flushbar_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _store = LoginStore();

  @override
  Widget build(BuildContext context) => Scaffold(
        primary: true,
        appBar: EmptyAppBar(),
        body: _buildBody(),
      );

  Widget _buildBody() => Stack(
        children: <Widget>[
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

  Widget _buildRightSide() => SingleChildScrollView(
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
            SizedBox(
              height: 96.0,
              width: 1000,
            ),
            _buildLoginField(),
            SizedBox(height: 16.0),
            _buildSignInButton()
          ],
        ),
      );

  Widget _buildLoginField() => Observer(
        builder: (context) => RaisedButton(
          child: Text('Login'),
          shape: StadiumBorder(),
          onPressed: () => _store.login(),
        ),
      );

  Widget _buildSignInButton() => Observer(
        builder: (context) => FlatButton(
          child: Text('Sign up'),
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
