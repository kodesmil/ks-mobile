// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeetingStore on _MeetingStore, Store {
  final _$remotesAtom = Atom(name: '_MeetingStore.remotes');

  @override
  List<MeetingVideo> get remotes {
    _$remotesAtom.reportRead();
    return super.remotes;
  }

  @override
  set remotes(List<MeetingVideo> value) {
    _$remotesAtom.reportWrite(value, super.remotes, () {
      super.remotes = value;
    });
  }

  final _$localAtom = Atom(name: '_MeetingStore.local');

  @override
  MeetingVideo get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(MeetingVideo value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
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

  final _$joinAsyncAction = AsyncAction('_MeetingStore.join');

  @override
  Future<dynamic> join(String displayName, String roomId) {
    return _$joinAsyncAction.run(() => super.join(displayName, roomId));
  }

  final _$closeAsyncAction = AsyncAction('_MeetingStore.close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
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

  final _$swapVideoPositionAsyncAction =
      AsyncAction('_MeetingStore.swapVideoPosition');

  @override
  Future<dynamic> swapVideoPosition(dynamic adapter) {
    return _$swapVideoPositionAsyncAction
        .run(() => super.swapVideoPosition(adapter));
  }

  final _$cleanUpAsyncAction = AsyncAction('_MeetingStore.cleanUp');

  @override
  Future<dynamic> cleanUp() {
    return _$cleanUpAsyncAction.run(() => super.cleanUp());
  }

  final _$initAsyncAction = AsyncAction('_MeetingStore.init');

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
remotes: ${remotes},
local: ${local},
speakerOn: ${speakerOn},
cameraOff: ${cameraOff},
microphoneOff: ${microphoneOff}
    ''';
  }
}
