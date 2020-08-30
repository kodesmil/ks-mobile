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
  final ServiceSessionStreamClient client;
  final ServiceSession session;
  final _inputController = BehaviorSubject<StreamSessionInputEvent>();

  StreamSink<StreamSessionInputEvent> get _input => _inputController.sink;

  StreamSubscription<StreamSessionOutputEvent> _output;

  _SessionStreamStore(
    this.errorStore,
    this.profileStore,
    this.client,
    this.session,
  );

  @action
  Future connect() async {
    _output ??= client.biDi(_inputController.stream).listen(
      (value) {
        switch (value.whichEvent()) {
          case StreamSessionOutputEvent_Event.sessionRequested:
            print(value);
            break;
          case StreamSessionOutputEvent_Event.sessionFinished:
            print(value);
            break;
          case StreamSessionOutputEvent_Event.sessionTimeout:
            print(value);
            break;
          case StreamSessionOutputEvent_Event.sessionStarted:
            print(value);
            break;
          case StreamSessionOutputEvent_Event.notSet:
            print(value);
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
  Future requestSession() async => _input.add(StreamSessionInputEvent()
    ..requestSession = (EventRequestSession()
      ..profile = profileStore.profile.id
      ..session = session));

  @action
  Future join() async => _input.add(StreamSessionInputEvent()
    ..joinSession = (EventJoinSession()
      ..profile = profileStore.profile.id
      ..session = session));
}
