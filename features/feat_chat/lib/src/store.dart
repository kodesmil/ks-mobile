import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
import 'dart:math' show Random;

part 'store.g.dart';

class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore with Store {
  final ErrorStore _errorStore;
  final ChatClient _client;
  final _inputController = StreamController<StreamChatEvent>();

  StreamSink<StreamChatEvent> get _input => _inputController.sink;

  StreamSubscription<StreamChatEvent> _output;

  _ChatStore(
    this._errorStore,
    this._client,
  );

  @observable
  List<ChatMessage> messages = [];

  @action
  Future connect() async {
    _output = _client.stream(_inputController.stream).listen(
      (value) {
        switch (value.whichEvent()) {
          case StreamChatEvent_Event.none:
            break;
          case StreamChatEvent_Event.join:
            break;
          case StreamChatEvent_Event.leave:
            break;
          case StreamChatEvent_Event.message:
            messages.add(value.message.payload);
            messages = messages.toList();
            break;
          case StreamChatEvent_Event.messages:
            messages = value.messages.payload;
            break;
          case StreamChatEvent_Event.forceClose:
            break;
          case StreamChatEvent_Event.notSet:
            break;
        }
      },
      onError: (error) => print(error),
    );
    await join();
  }

  @action
  Future join() async {
    final event = EventJoin();
    final streamEvent = StreamChatEvent()..join = event;
    _input.add(streamEvent);
  }

  @action
  Future sendMessage() async {
    final timestamp = Timestamp.fromDateTime(DateTime.now());
    final id = Identifier()..resourceId = Uuid().v4();
    final authorId = Identifier()..resourceId = 'aniqWjEXizNEOcSjZoG3CatvrWq1';
    final r1 = Uuid().v4();
    final payload = ChatMessage()
      ..createdAt = timestamp
      ..updatedAt = timestamp
      ..id = id
      ..authorId = authorId
      ..text = 'Hello $r1!';
    final event = EventMessage()..payload = payload;
    final streamEvent = StreamChatEvent()..message = event;
    _input.add(streamEvent);
  }

  @action
  Future dispose() async {
    await _output.cancel();
    await _input.close();
  }
}
