import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

import 'widget.dart';

class JournalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Journal',
              style: Theme.of(context).textTheme.headline5,
            ),
            backgroundColor: Colors.black26,
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  KsSpace.xs(),
                  ListTile(
                    leading: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  CheckboxListTile(
                    value: true,
                    title: Text('Journal'),
                    onChanged: (value) {},
                  ),
                  JournalWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
