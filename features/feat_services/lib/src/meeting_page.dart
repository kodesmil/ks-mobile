import 'package:flutter/material.dart';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

import 'meeting_store.dart';
import 'meeting_widget.dart';

class MeetingPage extends StatefulWidget {
  final String roomId;

  MeetingPage(this.roomId);

  @override
  MeetingPageState createState() => MeetingPageState();
}

class MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider0<MeetingStore>(
          update: (_, __) => MeetingStore(
            ErrorStore(),
            widget.roomId,
          ),
        ),
      ],
      child: MeetingContent(widget.roomId),
    );
  }
}

class MeetingContent extends StatefulWidget {
  final String roomId;

  const MeetingContent(
    this.roomId, {
    Key key,
  }) : super(key: key);

  @override
  _MeetingContentState createState() => _MeetingContentState();
}

class _MeetingContentState extends State<MeetingContent> {
  final List<VideoRendererAdapter> _remoteVideos = [];
  VideoRendererAdapter _localVideo;

  bool _cameraOff = false;
  bool _microphoneOff = false;
  bool _speakerOn = true;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var name;
  var room;

  final double LOCAL_VIDEO_WIDTH = 114.0;
  final double LOCAL_VIDEO_HEIGHT = 72.0;

  void init() async {
    final helper = Provider.of<MeetingStore>(context, listen: false);
    var client = helper.client;

    client.on('peer-join', (rid, id, info) async {
      var name = info['name'];
      _showSnackBar('$name joined');
    });

    client.on('peer-leave', (rid, id, info) async {
      var name = info['name'];
      _showSnackBar('$name left');
    });

    client.on('stream-add', (rid, mid, info, tracks) async {
      var bandwidth = '512';
      var stream = await client.subscribe(rid, mid, tracks, bandwidth);
      var adapter = VideoRendererAdapter(stream.mid, stream, false, mid);
      await adapter.setupSrcObject();
      setState(() {
        _remoteVideos.add(adapter);
      });
    });

    client.on('stream-remove', (rid, mid) async {
      var adapter = _remoteVideos.firstWhere((item) => item.sid == mid);
      if (adapter != null) {
        await adapter.dispose();
        setState(() {
          _remoteVideos.remove(adapter);
        });
      }
    });

    helper.join(name, widget.roomId);

    try {
      var resolution = 'vga';
      var bandwidth = '512';
      var codec = 'vp8';
      await client
          .publish(true, true, false, codec, bandwidth, resolution)
          .then((stream) async {
        var adapter = VideoRendererAdapter(stream.mid, stream, true);
        await adapter.setupSrcObject();
        var localStream = stream.stream;
        var audioTrack = localStream.getAudioTracks()[0];
        audioTrack.enableSpeakerphone(true);
        setState(() {
          _localVideo = adapter;
        });
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  void didChangeDependencies() {
    init();
    super.didChangeDependencies();
  }

  void _cleanUp() async {
    final helper = Provider.of<MeetingStore>(context, listen: false);
    var rid = helper.roomId;
    var client = helper.client;
    if (_localVideo != null) {
      var stream = _localVideo.stream;
      await client.unpublish(_localVideo.mid);
      await stream.dispose();
      _localVideo = null;
    }
    _remoteVideos.forEach((item) async {
      var stream = item.stream;
      try {
        await client.unsubscribe(rid, item.mid);
        await stream.dispose();
        await item.renderer.dispose();
        await item.dispose();
      } catch (error) {
        print(error);
      }
    });
    setState(() {});
    _remoteVideos.clear();
    await helper.close();
    Navigator.of(context, rootNavigator: true).pop();
  }

  Widget buildVideoView(VideoRendererAdapter adapter) {
    return Container(
      alignment: Alignment.center,
      child: RTCVideoView(adapter.renderer),
      color: Colors.black,
    );
  }

  Widget _buildMainVideo() {
    if (_remoteVideos.isEmpty) {
      return Image.asset(
        'assets/images/loading.jpeg',
        fit: BoxFit.cover,
      );
    }

    var adapter = _remoteVideos[0];
    return GestureDetector(
      onDoubleTap: () {
        adapter.switchObjFit();
      },
      child: RTCVideoView(adapter.renderer),
    );
  }

  Widget _buildLocalVideo(Orientation orientation) {
    if (_localVideo != null) {
      return SizedBox(
        width: orientation == Orientation.portrait
            ? LOCAL_VIDEO_HEIGHT
            : LOCAL_VIDEO_WIDTH,
        height: orientation == Orientation.portrait
            ? LOCAL_VIDEO_WIDTH
            : LOCAL_VIDEO_HEIGHT,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black87,
            border: Border.all(
              color: Colors.white,
              width: 0.5,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              _switchCamera();
            },
            onDoubleTap: () {
              _localVideo.switchObjFit();
            },
            child: RTCVideoView(_localVideo.renderer),
          ),
        ),
      );
    }
    return Container();
  }

  List<Widget> _buildVideoViews() {
    var views = <Widget>[];
    if (_remoteVideos.length > 1) {
      _remoteVideos.getRange(1, _remoteVideos.length).forEach((adapter) {
        views.add(_buildVideo(adapter));
      });
    }
    return views;
  }

  void _swapVideoPosition(adapter) {
    var index = _remoteVideos.indexWhere(
      (element) => element.mid == adapter.mid,
    );
    if (index == -1) return;
    setState(() {
      var temp = _remoteVideos[0];
      _remoteVideos[0] = _remoteVideos[index];
      _remoteVideos[index] = temp;
    });
  }

  Widget _buildVideo(VideoRendererAdapter adapter) {
    return SizedBox(
      width: 120,
      height: 90,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: GestureDetector(
          onTap: () => _swapVideoPosition(adapter),
          child: RTCVideoView(adapter.renderer),
        ),
      ),
    );
  }

  void _switchSpeaker() {
    setState(() {
      _speakerOn = !_speakerOn;
      var audioTrack = _localVideo.stream.getAudioTracks()[0];
      audioTrack.enableSpeakerphone(_speakerOn);
    });
  }

  void _switchCamera() {
    if (_localVideo != null && _localVideo.stream.getVideoTracks().isNotEmpty) {
      _localVideo.stream.getVideoTracks()[0].switchCamera();
    }
  }

  void _turnCamera() {
    if (_localVideo != null && _localVideo.stream.getVideoTracks().isNotEmpty) {
      setState(() {
        _cameraOff = !_cameraOff;
        _localVideo.stream.getVideoTracks()[0].enabled = !_cameraOff;
      });
    }
  }

  void _turnMicrophone() {
    if (_localVideo != null && _localVideo.stream.getAudioTracks().isNotEmpty) {
      var muted = !_microphoneOff;
      setState(() {
        _microphoneOff = muted;
      });
      _localVideo.stream.getAudioTracks()[0].enabled = !muted;
    }
  }

  void _hangUp() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Hangup'),
        content: Text('Are you sure to leave the room?'),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Hangup'),
            onPressed: () {
              Navigator.of(context).pop();
              _cleanUp();
            },
          )
        ],
      ),
    );
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  Widget _buildLoading() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Waiting for others to join...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  //tools
  List<Widget> _buildTools() {
    return <Widget>[
      SizedBox(
        width: 36,
        height: 36,
        child: RawMaterialButton(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Icon(
            MaterialCommunityIcons.getIconData(
              _cameraOff ? 'video-off' : 'video',
            ),
            color: _cameraOff ? Colors.red : Colors.white,
          ),
          onPressed: _turnCamera,
        ),
      ),
      SizedBox(
        width: 36,
        height: 36,
        child: RawMaterialButton(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Icon(
            MaterialCommunityIcons.getIconData('video-switch'),
            color: Colors.white,
          ),
          onPressed: _switchCamera,
        ),
      ),
      SizedBox(
        width: 36,
        height: 36,
        child: RawMaterialButton(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Icon(
            MaterialCommunityIcons.getIconData(
              _microphoneOff ? 'microphone-off' : 'microphone',
            ),
            color: _microphoneOff ? Colors.red : Colors.white,
          ),
          onPressed: _turnMicrophone,
        ),
      ),
      SizedBox(
        width: 36,
        height: 36,
        child: RawMaterialButton(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Icon(
            MaterialIcons.getIconData(
              _speakerOn ? 'volume-up' : 'speaker-phone',
            ),
            color: Colors.white,
          ),
          onPressed: _switchSpeaker,
        ),
      ),
      SizedBox(
        width: 36,
        height: 36,
        child: RawMaterialButton(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Icon(
            MaterialCommunityIcons.getIconData('phone-hangup'),
            color: Colors.red,
          ),
          onPressed: _hangUp,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            body: orientation == Orientation.portrait
                ? Container(
                    color: Colors.black87,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.black54,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    child: _buildMainVideo(),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 48,
                                  child: Container(
                                    child: _buildLocalVideo(orientation),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 48,
                                  height: 90,
                                  child: Container(
                                    margin: EdgeInsets.all(6.0),
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: _buildVideoViews(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        (_remoteVideos.isEmpty) ? _buildLoading() : Container(),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          height: 48,
                          child: Stack(
                            children: <Widget>[
                              Opacity(
                                opacity: 0.5,
                                child: Container(
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                height: 48,
                                margin: EdgeInsets.all(0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: _buildTools(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          height: 48,
                          child: Stack(
                            children: <Widget>[
                              Opacity(
                                opacity: 0.5,
                                child: Container(
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(0.0),
                                child: Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    color: Colors.black54,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.black87,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    child: _buildMainVideo(),
                                  ),
                                ),
                                Positioned(
                                  right: 60,
                                  top: 10,
                                  child: Container(
                                    child: _buildLocalVideo(orientation),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  width: 120,
                                  child: Container(
                                    margin: EdgeInsets.all(6.0),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: _buildVideoViews(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        (_remoteVideos.isEmpty) ? _buildLoading() : Container(),
                        Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          width: 48,
                          child: Stack(
                            children: <Widget>[
                              Opacity(
                                opacity: 0.5,
                                child: Container(
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                width: 48,
                                margin: EdgeInsets.all(0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: _buildTools(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
