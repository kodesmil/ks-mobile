import 'dart:async';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter_ion/flutter_ion.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';

part 'meeting_store.g.dart';

class MeetingStore = _MeetingStore with _$MeetingStore;

class MeetingVideo {
  final String id;
  final Stream stream;
  final bool isLocal;
  RTCVideoRenderer renderer;

  MeetingVideo(this.id, this.stream, this.isLocal);

  factory MeetingVideo.local(stream) => MeetingVideo(stream.mid, stream, true);

  factory MeetingVideo.remote(stream) =>
      MeetingVideo(stream.mid, stream, false);

  Future initialize() async {
    renderer = RTCVideoRenderer();
    await renderer.initialize();
    renderer.srcObject = stream.stream;
    getAudioTrack().enableSpeakerphone(true);
    getVideoTrack().enabled = false;
  }

  Future dispose() async {
    stream.clearListeners();
    for (var t in getAudioTracks()) {
      await t.dispose();
    }
    for (var t in getVideoTracks()) {
      await t.dispose();
    }
    await renderer.srcObject.dispose();
    renderer.srcObject = null;
    await renderer.dispose();
    renderer = null;
  }

  MediaStreamTrack getAudioTrack() =>
      getAudioTracks().isNotEmpty ? getAudioTracks().first : null;

  MediaStreamTrack getVideoTrack() =>
      getVideoTracks().isNotEmpty ? getVideoTracks().first : null;

  List<MediaStreamTrack> getAudioTracks() => stream.stream.getAudioTracks();

  List<MediaStreamTrack> getVideoTracks() => stream.stream.getVideoTracks();

  bool get hasVideoTrack => getVideoTracks().isNotEmpty;

  bool get hasAudioTrack => getAudioTracks().isNotEmpty;

  @override
  bool operator ==(Object other) {
    if (other is MeetingVideo) {
      return id == other.id;
    } else {
      return false;
    }
  }
}

abstract class _MeetingStore with Store {
  Client client;
  final String roomId;
  final ErrorStore errorStore;

  @observable
  List<MeetingVideo> videos = [];

  @computed
  MeetingVideo get largeVideo => videos.firstWhere(
        (element) => element.id == largeVideoId,
        orElse: () => null,
      );

  @computed
  MeetingVideo get localVideo => videos.firstWhere(
        (element) => element.isLocal,
        orElse: () => null,
      );

  @computed
  List<MeetingVideo> get smallVideos =>
      videos.where((element) => element.id != largeVideoId).toList();

  @observable
  String largeVideoId = '';

  @observable
  bool speakerOn = false;

  @observable
  bool cameraOff = true;

  @observable
  bool microphoneOff = false;

  _MeetingStore(this.errorStore, this.roomId);

  @action
  Future connect(String host, Function onConnected) async {
    if (client == null) {
      var url = 'https://$host/ws';
      client = Client(url);
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
          var video = MeetingVideo.local(stream);
          if (!videos.contains(video)) {
            await video.initialize();
            videos.add(video);
            videos = [...videos];
            largeVideoId = video.id;
          }
        } catch (error) {
          print(error);
        }
      });
    }
    await init();
    await client.connect();
  }

  @action
  Future switchSpeaker() async {
    speakerOn = !speakerOn;
    localVideo?.getAudioTrack()?.enableSpeakerphone(speakerOn);
  }

  @action
  Future switchCamera() async {
    if (localVideo?.hasVideoTrack == true) {
      await localVideo?.getVideoTrack()?.switchCamera();
    }
  }

  @action
  Future turnCamera() async {
    if (localVideo?.hasVideoTrack == true) {
      cameraOff = !cameraOff;
      localVideo?.getVideoTrack()?.enabled = !cameraOff;
    }
  }

  @action
  Future turnMicrophone() async {
    if (localVideo?.hasAudioTrack == true) {
      microphoneOff = !microphoneOff;
      localVideo.getAudioTrack().enabled = !microphoneOff;
    }
  }

  @action
  Future switchLargeVideo(String id) async {
    largeVideoId = id;
  }

  @action
  Future swapVideoPosition(adapter) async {
    var index = videos.indexWhere(
      (element) => element.id == adapter.id,
    );
    if (index == -1) return;
    var temp = videos[0];
    videos[0] = videos[index];
    videos[index] = temp;
  }

  @action
  Future dispose() async {
    for (var video in videos) {
      try {
        if (video.isLocal) {
          await client.leave();
          await client.unpublish(video.id);
        } else {
          await client.unsubscribe(roomId, video.id);
        }
        await video.dispose();
      } catch (error) {
        print(error);
      }
    }
    videos.clear();
    client.close();
    client.clearListeners();
    client = null;
  }

  @action
  void init() {
    client.on('peer-join', (rid, id, info) async {
      // var name = info['name'];
    });
    client.on('peer-leave', (rid, id) async {
      // nothing
    });
    client.on('stream-add', (rid, mid, info, tracks) async {
      var stream = await client.subscribe(rid, mid, tracks, '512');
      var video = MeetingVideo.remote(stream);
      if (!videos.contains(video)) {
        await video.initialize();
        videos.add(video);
        videos = [...videos];
        largeVideoId = video.id;
      }
    });
    client.on('stream-remove', (rid, mid) async {
      var remote = videos.firstWhere(
        (item) => item.id == mid,
        orElse: () => null,
      );
      if (remote != null) {
        await remote.dispose();
        videos.remove(remote);
        videos = [...videos];
        largeVideoId = videos.first.id;
      }
    });
  }
}
