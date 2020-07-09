import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceInPersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'ServiceInPerson',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
          ),
        ],
      ),
    );
  }
}
