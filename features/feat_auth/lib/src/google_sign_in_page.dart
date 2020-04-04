import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

import 'google_sign_in_store.dart';

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  Widget _buildBody() {
    final store = Provider.of<GoogleSignInStore>(context);
    if (store.currentUser == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Connect the app with Google",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
          KsSpace.xs(),
          Text(
            "Bla bla bla",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          KsSpace.l(),
          SvgPicture.asset(
            'assets/images/onboarding1.svg',
            height: 100,
          ),
          KsSpace.l(),
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
