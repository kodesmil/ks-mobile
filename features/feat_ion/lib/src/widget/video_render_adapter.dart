import 'package:flutter_webrtc/webrtc.dart';
import 'package:flutter_ion/flutter_ion.dart';

class VideoRendererAdapter {
  final String _mid;
  final String _sid;
  final bool _local;
  RTCVideoRenderer _renderer;
  final Stream _stream;
  var _objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitContain;

  VideoRendererAdapter(this._mid, this._stream, this._local, [this._sid]);

  Future setupSrcObject() async {
    if (_renderer == null) {
      _renderer = RTCVideoRenderer();
      await _renderer.initialize();
    }
    _renderer.srcObject = _stream.stream;
    if (_local) {
      _objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitCover;
    }
  }

  void switchObjFit() {
    _objectFit =
        (_objectFit == RTCVideoViewObjectFit.RTCVideoViewObjectFitContain)
            ? RTCVideoViewObjectFit.RTCVideoViewObjectFitCover
            : RTCVideoViewObjectFit.RTCVideoViewObjectFitContain;
  }

  Future dispose() async {
    if (_renderer != null) {
      print('dispose for texture id ' + _renderer.textureId.toString());
      _renderer.srcObject = null;
      await _renderer.dispose();
      _renderer = null;
    }
  }

  bool get local => _local;

  String get mid => _mid;

  String get sid => _sid;

  RTCVideoRenderer get renderer => _renderer;

  MediaStream get stream => _stream.stream;
}
