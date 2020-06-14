import 'dart:async';
import 'package:feat_auth/feat_auth.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';
import 'package:more/collection.dart';
import 'package:more/iterable.dart';

part 'store.g.dart';

class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore with Store {
  final ErrorStore errorStore;
  final UserStore userStore;
  final ChatClient _client;
  final _inputController = BehaviorSubject<StreamChatEvent>();

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

  @computed
  ChatRoomParticipant get selectedMyParticipation {
    return selectedRoom.participants.firstWhere(
      (element) => element.profile.id.resourceId == userStore.user.uid,
    );
  }

  @computed
  Map<String, ChatMessageInfo> get chatMessagePlaces {
    final participants = selectedRoom.participants.where(
      (element) => element.profile.id.resourceId != userStore.user.uid,
    );
    final result = <String, ChatMessageInfo>{};
    selectedMessages.reversed
        .indexed()
        .groupBy((v) => v.value.authorId.resourceId)
        .forEach((element) {
      element.values.fold<_Tuple<Indexed<ChatMessage>>>(null, (prev, element) {
        final currentKey = element.value.id.resourceId;
        if (prev != null) {
          final prevKey = prev.second.value.id.resourceId;
          if (prev.second.index != element.index - 1) {
            result[currentKey] = ChatMessageInfo(
              place: ChatMessagePlace.LAST_SINGLE,
              delivered: element.value.createdAt != null,
              seenBy: participants
                  .where((p) => p.lastSeenAt.toDateTime().isAfter(
                        element.value.createdAt?.toDateTime(),
                      ))
                  .toList(),
            );
          } else if (result[prevKey].place == ChatMessagePlace.LAST_SINGLE) {
            result[prevKey] = ChatMessageInfo(
              place: ChatMessagePlace.FIRST,
              delivered: element.value.createdAt != null,
              seenBy: participants
                  .where((p) => p.lastSeenAt.toDateTime().isAfter(
                        element.value.createdAt?.toDateTime(),
                      ))
                  .toList(),
            );
            result[currentKey] = ChatMessageInfo(
              place: ChatMessagePlace.LAST,
              delivered: element.value.createdAt != null,
              seenBy: participants
                  .where((p) => p.lastSeenAt.toDateTime().isAfter(
                        element.value.createdAt?.toDateTime(),
                      ))
                  .toList(),
            );
          } else if (prev.first?.index == element.index - 2) {
            result[prevKey] = ChatMessageInfo(
              place: ChatMessagePlace.MIDDLE,
              delivered: element.value.createdAt != null,
              seenBy: participants
                  .where((p) => p.lastSeenAt.toDateTime().isAfter(
                        element.value.createdAt?.toDateTime(),
                      ))
                  .toList(),
            );
            result[currentKey] = ChatMessageInfo(
              place: ChatMessagePlace.LAST,
              delivered: element.value.createdAt != null,
              seenBy: participants
                  .where((p) => p.lastSeenAt.toDateTime().isAfter(
                        element.value.createdAt?.toDateTime(),
                      ))
                  .toList(),
            );
          }
          return _Tuple(element, prev.second);
        } else {
          result[currentKey] = ChatMessageInfo(
            place: ChatMessagePlace.LAST_SINGLE,
            delivered: element.value.createdAt != null,
            seenBy: participants
                .where((p) => p.lastSeenAt.toDateTime().isBefore(
                      element.value.createdAt?.toDateTime(),
                    ))
                .toList(),
          );
          return _Tuple(element, null);
        }
      });
    });
    return result;
  }

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
        onError: (error) {
          print(error);
          _output = null;
        },
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
    final event = EventLoadRoom()
      ..me = selectedMyParticipation
      ..room = room;
    final streamEvent = StreamChatEvent()..loadRoom = event;
    _input.add(streamEvent);
  }

  @action
  Future sendMessage(String text) async {
    final id = Identifier()..resourceId = Uuid().v4();
    final payload = ChatMessage()
      ..id = id
      ..authorId = selectedMyParticipation.id
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

class _Tuple<T> {
  final T first;
  final T second;

  _Tuple(this.second, this.first);
}
