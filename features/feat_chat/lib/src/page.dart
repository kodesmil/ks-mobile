import 'package:feat_chat/feat_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:more/iterable.dart';
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
    return Observer(
      builder: (context) => Column(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: store.rooms.length,
            itemBuilder: (BuildContext context, int index) {
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
    store.connect();
    store.loadRoom(widget.chatRoom);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ChatStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Messages'),
      child: Material(
        child: Column(
          children: [
            Flexible(
              child: Observer(
                builder: (context) => ListView(
                  reverse: true,
                  children: store.selectedMessages.indexed().map(
                    (e) {
                      return MyListTile(
                        message: e.value,
                        text: e.value.text,
                        subtitle: e.value.caption,
                        info: store.chatMessagePlaces[e.value.id.value],
                        left: store.selectedMyParticipation.id !=
                            e.value.author.id,
                        status: e.value.status,
                      );
                    },
                  ).toList(),
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
                        if (text?.isNotEmpty == true) {
                          store.sendMessage(text);
                          _messageController.clear();
                        }
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
                      if (_messageController.text?.isNotEmpty == true) {
                        store.sendMessage(_messageController.text);
                        _messageController.clear();
                      }
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
  final double imageSize;
  final double overlapSize;

  const OverlappedImages({
    Key key,
    this.profiles,
    this.imageSize = 40,
    this.overlapSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = profiles
        .map(
          (e) => KsCircleAvatar(
            size: imageSize,
            image: e.profile.profilePictureUrl,
          ),
        )
        .toList();

    var stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
        padding: EdgeInsets.fromLTRB(
          index.toDouble() * overlapSize,
          0,
          0,
          0,
        ),
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

class MyListTile extends StatefulWidget {
  final String text;
  final String subtitle;
  final bool left;
  final ChatMessageInfo info;
  final ChatMessage_Status status;
  final ChatMessage message;

  const MyListTile({
    Key key,
    this.text,
    this.subtitle,
    this.left = true,
    this.info,
    this.status,
    this.message,
  }) : super(key: key);

  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: widget.info.place == ChatMessagePlace.FIRST ||
                widget.info.place == ChatMessagePlace.LAST_SINGLE
            ? 10
            : 0,
        bottom: widget.info.place == ChatMessagePlace.LAST_SINGLE ||
                widget.info.place == ChatMessagePlace.LAST
            ? 10
            : 0,
        right: 15,
        left: 15,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            showDetails = !showDetails;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: widget.left
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  margin: widget.left
                      ? const EdgeInsets.only(left: 10, top: 5)
                      : const EdgeInsets.only(top: 5),
                  padding: widget.left
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
                    borderRadius:
                        calculateBorderRadius(widget.left, widget.info.place),
                    color: widget.left
                        ? Theme.of(context).colorScheme.secondary.withAlpha(64)
                        : Theme.of(context).colorScheme.primary.withAlpha(16),
                  ),
                  child: Text(
                    widget.text,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Visibility(
                    visible: widget.left &&
                        (widget.info.place == ChatMessagePlace.LAST ||
                            widget.info.place == ChatMessagePlace.LAST_SINGLE),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          KsCircleAvatar(
                            size: 25,
                            image:
                                widget.message.author.profile.profilePictureUrl,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              widget.subtitle,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: showDetails,
                  child: Text(
                    DateFormat.yMMMEd().add_Hm().format(
                          widget.info.message.createdAt.toDateTime(),
                        ),
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
            Visibility(
              visible: widget.info.status == ChatMessageStatus.NOT_DELIVERED,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Icon(
                  Icons.radio_button_unchecked,
                  size: 15,
                  color: Colors.black26,
                ),
              ),
            ),
            Visibility(
              visible: widget.info.status == ChatMessageStatus.DELIVERED,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Icon(
                  Icons.radio_button_checked,
                  size: 15,
                  color: Colors.black26,
                ),
              ),
            ),
            Visibility(
              visible: widget.info.seenBy.isNotEmpty,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: OverlappedImages(
                  profiles: widget.info.seenBy,
                  imageSize: 15,
                  overlapSize: 5,
                ),
              ),
            ),
          ],
        ),
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
