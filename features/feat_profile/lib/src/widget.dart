import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget();

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<ProfileStore>(context);
    store.fetchProfile();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ProfileStore>(context);
    return Column(
      children: <Widget>[
        KsSpace.l(),
        Observer(
          builder: (context) => Text(
            store.profile?.primaryEmail ?? 'Empty',
          ),
        ),
        KsSpace.l(),
        RaisedButton(
          child: Text('Create profile'),
          onPressed: () => store.createProfile(),
        ),
      ],
    );
  }
}
