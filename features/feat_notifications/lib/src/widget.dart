import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class NotificationsWidget extends StatefulWidget {
  NotificationsWidget();

  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<NotificationsStore>(context);
    store.fetchAll();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<NotificationsStore>(context);
    return Column(
      children: <Widget>[
        KsSpace.l(),
        Observer(
          builder: (context) => Text(
            store.notifications.data?.toString() ?? 'Empty',
          ),
        ),
        KsSpace.l(),
        RaisedButton(
          child: Text('Create notification'),
          onPressed: () => store.createNotification(),
        ),
      ],
    );
  }
}
