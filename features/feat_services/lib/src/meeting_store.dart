import 'dart:async';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:flutter_ion/flutter_ion.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'meeting_store.g.dart';

class MeetingStore = _MeetingStore with _$MeetingStore;

class MeetingVideo {
  final String mid;
  final Stream stream;
  RTCVideoRenderer renderer;

  MeetingVideo(this.mid, this.stream);

  void setupSrcObject() {
    renderer = RTCVideoRenderer();
    renderer.initialize();
    renderer.srcObject = stream.stream;
    getAudioTrack().enableSpeakerphone(true);
  }

  Future dispose() async {
    stream.clearListeners();
    await stream.stream.dispose();
    await renderer.dispose();
  }

  MediaStreamTrack getAudioTrack() => stream.stream.getAudioTracks()[0];

  List<MediaStreamTrack> getAudioTracks() => stream.stream.getAudioTracks();

  MediaStreamTrack getVideoTrack() => stream.stream.getVideoTracks()[0];

  List<MediaStreamTrack> getVideoTracks() => stream.stream.getVideoTracks();

  bool get hasVideoTrack => stream.stream.getVideoTracks().isNotEmpty;

  bool get hasAudioTrack => stream.stream.getAudioTracks().isNotEmpty;
}

abstract class _MeetingStore with Store {
  Client client;
  final String roomId;
  final ErrorStore errorStore;

  @observable
  List<MeetingVideo> remotes = [];

  @observable
  MeetingVideo local;

  @observable
  bool speakerOn = false;

  @observable
  bool cameraOff = false;

  @observable
  bool microphoneOff = false;

  _MeetingStore(this.errorStore, this.roomId);

  @action
  Future connect(String host, Function onConnected) async {
    if (client == null) {
      var url = 'https://$host/ws';
      client = Client(url);
      await init();
      client.on('transport-open', () async {
        try {
          await client.join(roomId, {'name': 'Aaa'});
          var resolution = 'vga';
          var bandwidth = '512';
          var codec = 'vp8';
          var stream = await client.publish(
            true,
            true,
            false,
            codec,
            bandwidth,
            resolution,
          );
          var v = MeetingVideo(stream.mid, stream);
          await v.setupSrcObject();
          local = v;
        } catch (error) {
          print(error);
        }
      });
    }
    await client.connect();
  }

  @action
  Future close() async {
    if (client != null) {
      await client.leave();
      client.close();
      client = null;
    }
  }

  @action
  Future switchSpeaker() async {
    speakerOn = !speakerOn;
    local.getAudioTrack().enableSpeakerphone(speakerOn);
  }

  @action
  Future switchCamera() async {
    if (local?.hasVideoTrack == true) {
      await local.getVideoTrack().switchCamera();
    }
  }

  @action
  Future turnCamera() async {
    if (local?.hasVideoTrack == true) {
      cameraOff = !cameraOff;
      local.getVideoTrack().enabled = !cameraOff;
    }
  }

  @action
  Future turnMicrophone() async {
    if (local?.hasAudioTrack == true) {
      microphoneOff = !microphoneOff;
      local.getAudioTrack().enabled = !microphoneOff;
    }
  }

  @action
  Future swapVideoPosition(adapter) async {
    var index = remotes.indexWhere(
      (element) => element.mid == adapter.mid,
    );
    if (index == -1) return;
    var temp = remotes[0];
    remotes[0] = remotes[index];
    remotes[index] = temp;
  }

  @action
  Future cleanUp() async {
    if (local != null) {
      await client.unpublish(local.mid);
      await local.dispose();
      local = null;
    }
    remotes.forEach((remote) async {
      try {
        await client.unsubscribe(roomId, remote.mid);
        await remote.dispose();
      } catch (error) {
        print(error);
      }
    });
    remotes.clear();
  }

  @action
  Future init() async {
    client.on('peer-join', (rid, id, info) async {
      var name = info['name'];
    });
    client.on('peer-leave', (rid, id, info) async {
      var name = info['name'];
    });
    client.on('stream-add', (rid, mid, info, tracks) async {
      var bandwidth = '512';
      var stream = await client.subscribe(rid, mid, tracks, bandwidth);
      var remote = MeetingVideo(mid, stream);
      await remote.setupSrcObject();
      remotes.add(remote);
    });
    client.on('stream-remove', (rid, mid) async {
      var remote = remotes.firstWhere((item) => item.mid == mid);
      if (remote != null) {
        await remote.dispose();
        remotes.remove(remote);
      }
    });
  }
}
