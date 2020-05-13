import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class FeedWidget extends StatefulWidget {
  FeedWidget();

  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<FeedStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<FeedStore>(context);
    return Column(
      children: <Widget>[
      ],
    );
  }
}
