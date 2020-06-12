import 'package:feat_chat/feat_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';
import 'package:more/collection.dart';
import 'package:more/iterable.dart';

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
      child: Observer(
        builder: (context) => CustomScrollView(
          slivers: <Widget>[
            KsNavigationBar(title: 'Chat'),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final e = store.rooms[index];
                  return Material(
                    child: ListTile(
                      title: Text(
                        e.tileTitle,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      subtitle: Text(
                        e.tileCaption,
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
                  );
                },
                childCount: store.rooms.length,
              ),
            )
          ],
        ),
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
    store.connect();
    store.loadRoom(widget.chatRoom);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ChatStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(context: context, title: 'Messages'),
      child: Material(
        child: Column(
          children: [
            Flexible(
              child: Observer(
                builder: (context) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    reverse: true,
                    children: store.selectedMessages
                        .indexed()
                        .map(
                          (e) => MyListTile(
                            message: e.value,
                            text: e.value.text,
                            subtitle: e.value.caption,
                            place:
                                store.chatMessagePlaces[e.value.id.resourceId],
                            left: store.selectedMyParticipation.id.resourceId !=
                                e.value.authorId.resourceId,
                            status: e.value.status,
                          ),
                        )
                        .toList(),
                  ),
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
    );
  }
}

class OverlappedImages extends StatelessWidget {
  final List<ChatRoomParticipant> profiles;

  const OverlappedImages({Key key, this.profiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final overlap = 25;
    final items = profiles
        .map((e) => CircleAvatar(
              backgroundImage: NetworkImage(e.profile.profilePictureUrl),
              child: Text(
                e.profile.initials,
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
  final ChatMessagePlace place;
  final ChatMessage_Status status;
  final ChatMessage message;

  const MyListTile({
    Key key,
    this.text,
    this.subtitle,
    this.left = true,
    this.place,
    this.status,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: place == ChatMessagePlace.FIRST ||
                place == ChatMessagePlace.LAST_SINGLE
            ? 10
            : 0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            left ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            padding: left
                ? EdgeInsets.only(
                    left: 15,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  )
                : EdgeInsets.only(
                    left: 20,
                    right: 15,
                    top: 10,
                    bottom: 10,
                  ),
            decoration: BoxDecoration(
              borderRadius: calculateBorderRadius(left, place),
              color: left
                  ? Theme.of(context).colorScheme.secondary.withAlpha(64)
                  : Theme.of(context).colorScheme.primary.withAlpha(16),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Visibility(
              visible: left &&
                  (place == ChatMessagePlace.LAST ||
                      place == ChatMessagePlace.LAST_SINGLE),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        NetworkImage(message.author.profile.profilePictureUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      subtitle,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: false,
            child: Padding(
              padding: left
                  ? const EdgeInsets.only(left: 15, bottom: 20)
                  : const EdgeInsets.only(right: 15, bottom: 20),
              child: Text(
                status == ChatMessage_Status.DELIVERED
                    ? 'Delivered'
                    : 'Not delivered',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BorderRadius calculateBorderRadius(bool left, ChatMessagePlace place) {
    if (left) {
      switch (place) {
        case ChatMessagePlace.MIDDLE:
          return BorderRadius.zero;
        case ChatMessagePlace.FIRST:
          return BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          );
        case ChatMessagePlace.LAST:
          return BorderRadius.only(
            bottomRight: Radius.circular(10),
          );
        case ChatMessagePlace.LAST_SINGLE:
          return BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          );
      }
    } else {
      switch (place) {
        case ChatMessagePlace.MIDDLE:
          return BorderRadius.zero;
        case ChatMessagePlace.FIRST:
          return BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          );
        case ChatMessagePlace.LAST:
          return BorderRadius.only(
            bottomLeft: Radius.circular(10),
          );
          break;
        case ChatMessagePlace.LAST_SINGLE:
          return BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          );
      }
    }
    return null;
  }
}
