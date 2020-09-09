import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'meeting_store.dart';

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
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final double LOCAL_VIDEO_WIDTH = 114.0;
  final double LOCAL_VIDEO_HEIGHT = 72.0;

  @override
  void didChangeDependencies() async {
    final store = Provider.of<MeetingStore>(context);
    await store.connect('ion.qa.api.kodesmil.com', (result) {
      print(result);
    });
    await store.join('Ups', widget.roomId);
    super.didChangeDependencies();
  }

  Widget buildVideoView(RTCVideoRenderer renderer) {
    return Container(
      alignment: Alignment.center,
      child: RTCVideoView(renderer),
      color: Colors.black,
    );
  }

  Widget _buildMainVideo() {
    final store = Provider.of<MeetingStore>(context);
    if (store.remotes.isEmpty) {
      return Image.asset(
        'assets/images/loading.jpeg',
        fit: BoxFit.cover,
      );
    }

    var remote = store.remotes[0];
    return GestureDetector(
      child: RTCVideoView(remote.renderer),
    );
  }

  Widget _buildLocalVideo(Orientation orientation) {
    final store = Provider.of<MeetingStore>(context);
    if (store.local != null) {
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
            onTap: () => store.switchCamera(),
            child: RTCVideoView(store.local.renderer),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _buildVideo(RTCVideoRenderer renderer) {
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
          child: RTCVideoView(renderer),
        ),
      ),
    );
  }

  void _hangUp() {
    final store = Provider.of<MeetingStore>(context, listen: false);
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
              store.cleanUp();
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
    final store = Provider.of<MeetingStore>(context);
    return [
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
              store.cameraOff ? 'video-off' : 'video',
            ),
            color: store.cameraOff ? Colors.red : Colors.white,
          ),
          onPressed: store.turnCamera,
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
          onPressed: store.switchCamera,
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
              store.microphoneOff ? 'microphone-off' : 'microphone',
            ),
            color: store.microphoneOff ? Colors.red : Colors.white,
          ),
          onPressed: store.turnMicrophone,
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
              store.speakerOn ? 'volume-up' : 'speaker-phone',
            ),
            color: Colors.white,
          ),
          onPressed: store.switchSpeaker,
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
    final store = Provider.of<MeetingStore>(context);
    return Observer(
      builder: (context) => OrientationBuilder(
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
                          (store.remotes.isEmpty)
                              ? _buildLoading()
                              : Container(),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          (store.remotes.isEmpty)
                              ? _buildLoading()
                              : Container(),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
      ),
    );
  }

  List<Widget> _buildVideoViews() {
    final store = Provider.of<MeetingStore>(context);
    var views = <Widget>[];
    if (store.remotes.length > 1) {
      store.remotes.getRange(1, store.remotes.length).forEach((adapter) {
        views.add(_buildVideo(adapter.renderer));
      });
    }
    return views;
  }
}
