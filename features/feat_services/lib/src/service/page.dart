import 'package:feat_services/feat_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Service',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Observer(
              builder: (context) => OutlineButton(
                child: Text('Continue with Google'),
                shape: StadiumBorder(),
                onPressed: () => store.create(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
