import 'dart:async';
import 'package:feat_auth/feat_auth.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

part 'session_stream_store.g.dart';

class SessionStreamStore = _SessionStreamStore with _$SessionStreamStore;

abstract class _SessionStreamStore with Store {
  final ErrorStore errorStore;
  final ProfileStore profileStore;
  final ServiceSessionStreamClient streamClient;
  final ServicesClient client;
  final UUIDValue sessionId;
  final _inputController = BehaviorSubject<StreamSessionInputEvent>();

  StreamSink<StreamSessionInputEvent> get _input => _inputController.sink;

  StreamSubscription<StreamSessionOutputEvent> _output;

  @observable
  ServiceSession session;

  _SessionStreamStore(
    this.errorStore,
    this.profileStore,
    this.streamClient,
    this.client,
    this.sessionId,
  );

  @action
  Future init() async {
    print(sessionId);
    final result = await client
        .readServiceSession(ReadServiceSessionRequest()..id = sessionId);
    session = result.result;
    await connect();
    await joinSession();
  }

  @action
  Future connect() async {
    _output ??= streamClient.biDi(_inputController.stream).listen(
      (value) {
        switch (value.whichEvent()) {
          case StreamSessionOutputEvent_Event.sessionRequested:
            break;
          case StreamSessionOutputEvent_Event.sessionFinished:
            break;
          case StreamSessionOutputEvent_Event.sessionTimeout:
            break;
          case StreamSessionOutputEvent_Event.sessionStarted:
            break;
          case StreamSessionOutputEvent_Event.notSet:
            break;
        }
      },
      onError: (error) {
        print(error);
        _output = null;
      },
    );
  }

  @action
  Future joinSession() async => _input.add(StreamSessionInputEvent()
    ..requestSession = (EventRequestSession()..session = session));
}
