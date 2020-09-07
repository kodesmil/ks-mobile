import 'package:events2/events2.dart';
import 'package:flutter_ion/flutter_ion.dart';

class IonHelper extends EventEmitter {
  Client _client;
  String _rid;

  Client get client => _client;

  String get roomId => _rid;

  Future connect(String host, Function onConnected) async {
    if (_client == null) {
      var url = 'https://$host/ws';
      _client = Client(url);

      _client.on('transport-open', () {
        onConnected(true);
      });
    }
    await _client.connect();
  }

  void join(String displayName, String roomId) async {
    _rid = roomId;
    await _client.join(roomId, {'name': '$displayName'});
  }

  void close() async {
    if (_client != null) {
      await _client.leave();
      _client.close();
      _client = null;
    }
  }
}
