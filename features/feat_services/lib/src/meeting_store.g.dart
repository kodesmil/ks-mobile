// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeetingStore on _MeetingStore, Store {
  Computed<MeetingVideo> _$largeVideoComputed;

  @override
  MeetingVideo get largeVideo =>
      (_$largeVideoComputed ??= Computed<MeetingVideo>(() => super.largeVideo,
              name: '_MeetingStore.largeVideo'))
          .value;
  Computed<MeetingVideo> _$localVideoComputed;

  @override
  MeetingVideo get localVideo =>
      (_$localVideoComputed ??= Computed<MeetingVideo>(() => super.localVideo,
              name: '_MeetingStore.localVideo'))
          .value;
  Computed<List<MeetingVideo>> _$smallVideosComputed;

  @override
  List<MeetingVideo> get smallVideos => (_$smallVideosComputed ??=
          Computed<List<MeetingVideo>>(() => super.smallVideos,
              name: '_MeetingStore.smallVideos'))
      .value;

  final _$videosAtom = Atom(name: '_MeetingStore.videos');

  @override
  List<MeetingVideo> get videos {
    _$videosAtom.reportRead();
    return super.videos;
  }

  @override
  set videos(List<MeetingVideo> value) {
    _$videosAtom.reportWrite(value, super.videos, () {
      super.videos = value;
    });
  }

  final _$largeVideoIdAtom = Atom(name: '_MeetingStore.largeVideoId');

  @override
  String get largeVideoId {
    _$largeVideoIdAtom.reportRead();
    return super.largeVideoId;
  }

  @override
  set largeVideoId(String value) {
    _$largeVideoIdAtom.reportWrite(value, super.largeVideoId, () {
      super.largeVideoId = value;
    });
  }

  final _$speakerOnAtom = Atom(name: '_MeetingStore.speakerOn');

  @override
  bool get speakerOn {
    _$speakerOnAtom.reportRead();
    return super.speakerOn;
  }

  @override
  set speakerOn(bool value) {
    _$speakerOnAtom.reportWrite(value, super.speakerOn, () {
      super.speakerOn = value;
    });
  }

  final _$cameraOffAtom = Atom(name: '_MeetingStore.cameraOff');

  @override
  bool get cameraOff {
    _$cameraOffAtom.reportRead();
    return super.cameraOff;
  }

  @override
  set cameraOff(bool value) {
    _$cameraOffAtom.reportWrite(value, super.cameraOff, () {
      super.cameraOff = value;
    });
  }

  final _$microphoneOffAtom = Atom(name: '_MeetingStore.microphoneOff');

  @override
  bool get microphoneOff {
    _$microphoneOffAtom.reportRead();
    return super.microphoneOff;
  }

  @override
  set microphoneOff(bool value) {
    _$microphoneOffAtom.reportWrite(value, super.microphoneOff, () {
      super.microphoneOff = value;
    });
  }

  final _$connectAsyncAction = AsyncAction('_MeetingStore.connect');

  @override
  Future<dynamic> connect(String host, Function onConnected) {
    return _$connectAsyncAction.run(() => super.connect(host, onConnected));
  }

  final _$switchSpeakerAsyncAction = AsyncAction('_MeetingStore.switchSpeaker');

  @override
  Future<dynamic> switchSpeaker() {
    return _$switchSpeakerAsyncAction.run(() => super.switchSpeaker());
  }

  final _$switchCameraAsyncAction = AsyncAction('_MeetingStore.switchCamera');

  @override
  Future<dynamic> switchCamera() {
    return _$switchCameraAsyncAction.run(() => super.switchCamera());
  }

  final _$turnCameraAsyncAction = AsyncAction('_MeetingStore.turnCamera');

  @override
  Future<dynamic> turnCamera() {
    return _$turnCameraAsyncAction.run(() => super.turnCamera());
  }

  final _$turnMicrophoneAsyncAction =
      AsyncAction('_MeetingStore.turnMicrophone');

  @override
  Future<dynamic> turnMicrophone() {
    return _$turnMicrophoneAsyncAction.run(() => super.turnMicrophone());
  }

  final _$switchLargeVideoAsyncAction =
      AsyncAction('_MeetingStore.switchLargeVideo');

  @override
  Future<dynamic> switchLargeVideo(String id) {
    return _$switchLargeVideoAsyncAction.run(() => super.switchLargeVideo(id));
  }

  final _$swapVideoPositionAsyncAction =
      AsyncAction('_MeetingStore.swapVideoPosition');

  @override
  Future<dynamic> swapVideoPosition(dynamic adapter) {
    return _$swapVideoPositionAsyncAction
        .run(() => super.swapVideoPosition(adapter));
  }

  final _$disposeAsyncAction = AsyncAction('_MeetingStore.dispose');

  @override
  Future<dynamic> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  final _$_MeetingStoreActionController =
      ActionController(name: '_MeetingStore');

  @override
  void init() {
    final _$actionInfo =
        _$_MeetingStoreActionController.startAction(name: '_MeetingStore.init');
    try {
      return super.init();
    } finally {
      _$_MeetingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
videos: ${videos},
largeVideoId: ${largeVideoId},
speakerOn: ${speakerOn},
cameraOff: ${cameraOff},
microphoneOff: ${microphoneOff},
largeVideo: ${largeVideo},
localVideo: ${localVideo},
smallVideos: ${smallVideos}
    ''';
  }
}
