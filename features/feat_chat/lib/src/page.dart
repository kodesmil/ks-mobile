import 'package:feat_chat/feat_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<ChatStore>(context);
    store.connect();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ChatStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Chat',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: <Widget>[
                  KsSpace.m(),
                  Text('Send messages here'),
                  KsSpace.m(),
                  RaisedButton(
                    child: Text('Send message'),
                    onPressed: () => store.sendMessage(),
                  ),
                  KsSpace.m(),
                  Observer(
                    builder: (context) => Container(
                      height: 300,
                      child: ListView(
                        children: store.messages
                            .map(
                              (e) => ListTile(
                                title: Text(e.text),
                                subtitle: Text(
                                  '${e.author.firstName} ${e.author.lastName}',
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
