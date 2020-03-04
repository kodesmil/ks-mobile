import 'package:feat_auth/stores/google_sign_in_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GoogleSignInStore>(context);
    return Material(
      color: Theme.of(context).accentColor,
    );
  }
}
