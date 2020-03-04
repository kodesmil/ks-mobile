import 'package:feat_auth/stores/google_sign_in_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/navigations.dart';
import 'package:provider/provider.dart';

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  Widget _buildBody() {
    final store = Provider.of<GoogleSignInStore>(context);
    if (store.currentUser == null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text("Connect the app with Google"),
          RaisedButton(
            child: const Text('Connect'),
            onPressed: store.signIn,
          ),
        ],
      );
    } else {
      return ksNavigateAndRemoveUntil(
        context,
        '/home',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Observer(builder: (context) => _buildBody()),
      ),
    );
  }
}
