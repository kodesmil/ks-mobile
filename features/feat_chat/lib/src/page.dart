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
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                subtitle: Text(
                                  '${e.participants.length} participants',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                onTap: () => navigateToChatRoomPage(
                                  context,
                                  e,
                                ),
                                trailing: OverlappedImages(
                                  profiles: e.participants,
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
  void dispose() {
    super.dispose();
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
                          (e) => MyListTile(
                            text: e.text,
                            subtitle: '${e.author.firstName}',
                            left: store.userStore.user.uid ==
                                e.author.id.resourceId,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Container(
                color: Theme.of(context).colorScheme.surface,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        autofocus: true,
                        textInputAction: TextInputAction.send,
                        style: Theme.of(context).textTheme.bodyText2,
                        onSubmitted: (String text) {
                          store.sendMessage(text);
                          _messageController.clear();
                        },
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
                      onPressed: () {
                        store.sendMessage(_messageController.text);
                        _messageController.clear();
                      },
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

class OverlappedImages extends StatelessWidget {
  final List<Profile> profiles;

  const OverlappedImages({Key key, this.profiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final overlap = 25;

    final items = profiles
        .map((e) => CircleAvatar(
              backgroundImage: NetworkImage(e.profilePictureUrl),
              child: Text(
                '${e.firstName[0]} ${e.lastName[0]}',
                style: Theme.of(context).textTheme.caption,
              ),
            ))
        .toList();

    var stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
        padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(2),
          child: items[index],
        ),
      );
    });

    return Stack(children: stackLayers);
  }
}

class MyListTile extends StatelessWidget {
  final String text;
  final String subtitle;
  final bool left;

  const MyListTile({
    Key key,
    this.text,
    this.subtitle,
    this.left = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            left ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: left
                ? const EdgeInsets.only(
                    left: 15,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  )
                : const EdgeInsets.only(
                    left: 20,
                    right: 15,
                    top: 10,
                    bottom: 10,
                  ),
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: left
                  ? BorderRadius.only(topRight: Radius.circular(10))
                  : BorderRadius.only(topLeft: Radius.circular(10)),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Padding(
            padding: left
                ? const EdgeInsets.only(left: 15, bottom: 20)
                : const EdgeInsets.only(right: 15, bottom: 20),
            child: Text(
              subtitle,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
