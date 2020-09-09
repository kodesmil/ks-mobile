import 'dart:async';
import 'package:feat_auth/feat_auth.dart';
import 'package:flutter_ion/flutter_ion.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'meeting_store.g.dart';

class MeetingStore = _MeetingStore with _$MeetingStore;

abstract class _MeetingStore with Store {
  Client client;
  final String roomId;
  final ErrorStore errorStore;

  _MeetingStore(
    this.errorStore,
    this.roomId,
  );

  @action
  Future connect(String host, Function onConnected) async {
    if (client == null) {
      var url = 'https://$host/ws';
      client = Client(url);
      client.on('transport-open', () {
        onConnected(true);
      });
    }
    await client.connect();
  }

  void join(String displayName, String roomId) async {
    await client.join(roomId, {'name': '$displayName'});
  }

  void close() async {
    if (client != null) {
      await client.leave();
      client.close();
      client = null;
    }
  }
}
