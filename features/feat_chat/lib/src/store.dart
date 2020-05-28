import 'dart:async';
import 'package:feat_auth/feat_auth.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'store.g.dart';

class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore with Store {
  final ErrorStore errorStore;
  final UserStore userStore;
  final ChatClient _client;
  final _inputController = StreamController<StreamChatEvent>();

  StreamSink<StreamChatEvent> get _input => _inputController.sink;

  StreamSubscription<StreamChatEvent> _output;

  _ChatStore(
    this.errorStore,
    this.userStore,
    this._client,
  );

  @observable
  List<ChatRoom> rooms = [];

  @observable
  ChatRoom selectedRoom;

  @observable
  List<ChatMessage> selectedMessages = [];

  @action
  Future connect() async {
    if (_output == null) {
      _output = _client.stream(_inputController.stream).listen(
        (value) {
          switch (value.whichEvent()) {
            case StreamChatEvent_Event.none:
              break;
            case StreamChatEvent_Event.loadRoom:
              break;
            case StreamChatEvent_Event.loadRooms:
              break;
            case StreamChatEvent_Event.leaveRoom:
              break;
            case StreamChatEvent_Event.leaveRooms:
              break;
            case StreamChatEvent_Event.sendRooms:
              rooms = value.sendRooms.rooms;
              break;
            case StreamChatEvent_Event.sendMessage:
              _addNewMessage(value);
              break;
            case StreamChatEvent_Event.sendMessages:
              selectedMessages = value.sendMessages.messages;
              break;
            case StreamChatEvent_Event.forceClose:
              break;
            case StreamChatEvent_Event.inviteProfile:
              break;
            case StreamChatEvent_Event.notSet:
              break;
          }
        },
        onError: (error) => print(error),
      );
      await loadRooms();
    }
  }

  void _addNewMessage(StreamChatEvent value) {
    selectedMessages.removeWhere(
      (element) =>
          value.sendMessage.message.id.resourceId == element.id.resourceId,
    );
    selectedMessages.insert(0, value.sendMessage.message);
    selectedMessages = selectedMessages.toList();
  }

  @action
  Future loadRooms() async {
    final event = EventLoadRooms();
    final streamEvent = StreamChatEvent()..loadRooms = event;
    _input.add(streamEvent);
  }

  @action
  Future loadRoom(ChatRoom room) async {
    selectedMessages = [];
    selectedRoom = room;
    final event = EventLoadRoom()..room = room;
    final streamEvent = StreamChatEvent()..loadRoom = event;
    _input.add(streamEvent);
  }

  @action
  Future sendMessage(String text) async {
    final timestamp = Timestamp.fromDateTime(DateTime.now());
    final id = Identifier()..resourceId = Uuid().v4();
    final authorId = Identifier()
      ..resourceType = 'profiles'
      ..resourceId = userStore.user.uid;
    final payload = ChatMessage()
      ..createdAt = timestamp
      ..updatedAt = timestamp
      ..id = id
      ..authorId = authorId
      ..text = text;
    final event = EventSendMessage()..message = payload;
    final streamEvent = StreamChatEvent()..sendMessage = event;
    _addNewMessage(streamEvent);
    _input.add(streamEvent);
  }

  @action
  Future dispose() async {
    // await _output.cancel();
    // await _input.close();
  }
}
