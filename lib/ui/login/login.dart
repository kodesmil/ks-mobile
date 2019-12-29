import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/form/form_store.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flushbar/flushbar_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _store = FormStore();

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
      children: <Widget>[
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
    return SingleChildScrollView(
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
  }

  Widget _buildLoginField() {
    return Observer(
      builder: (context) {
        return RaisedButton(
          child: Text('Login'),
          shape: StadiumBorder(),
          onPressed: () => _store.login(),
        );
      },
    );
  }

  Widget _buildSignInButton() {
    return Observer(
      builder: (context) {
        return FlatButton(
          child: Text('Sign up'),
          shape: StadiumBorder(),
          onPressed: () => Navigator.pushNamed(context, Routes.signUp),
        );
      },
    );
  }

  // General Methods:-----------------------------------------------------------
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
