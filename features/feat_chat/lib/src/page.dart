import 'package:feat_chat/feat_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
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
                  Observer(
                    builder: (context) => SafeArea(
                      child: ListView(
                        shrinkWrap: true,
                        children: store.rooms
                            .map(
                              (e) => ListTile(
                                title: Text(
                                  e.participants
                                      .map((e) => e.firstName)
                                      .join(', '),
                                ),
                                subtitle: Text(
                                  '${e.participants.length} participants',
                                ),
                                onTap: () => navigateToChatRoomPage(
                                  context,
                                  e,
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

  Future navigateToChatRoomPage(BuildContext context, ChatRoom chatRoom) {
    return Navigator.of(context, rootNavigator: true).push(
      CupertinoPageRoute<void>(
        builder: (BuildContext context) {
          return ChatRoomPage(chatRoom: chatRoom);
        },
      ),
    );
  }
}

class ChatRoomPage extends StatefulWidget {
  final ChatRoom chatRoom;

  const ChatRoomPage({Key key, this.chatRoom}) : super(key: key);

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  final _messageController = TextEditingController();

  @override
  void didChangeDependencies() {
    final store = Provider.of<ChatStore>(context);
    store.loadRoom(widget.chatRoom);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ChatStore>(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Messages'),
      ),
      child: SafeArea(
        child: Material(
          child: Column(
            children: [
              Flexible(
                child: Observer(
                  builder: (context) => ListView(
                    reverse: true,
                    children: store.selectedMessages
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
              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        textInputAction: TextInputAction.send,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          hintText: 'Send message',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () =>
                          store.sendMessage(_messageController.text),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
