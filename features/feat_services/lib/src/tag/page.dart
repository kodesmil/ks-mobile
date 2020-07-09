import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceTagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'ServiceTag',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
          ),
        ],
      ),
    );
  }
}
