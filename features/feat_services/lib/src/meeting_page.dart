import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lib_shared/lib_shared.dart';
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
  MeetingStore store;

  @override
  void didChangeDependencies() async {
    store = Provider.of<MeetingStore>(context);
    await store.connect('ion.qa.api.kodesmil.com', (result) {
      print(result);
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    store.cleanUp();
    super.dispose();
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
            onPressed: () async {
              await Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  //tools
  List<Widget> _buildTools() {
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
    return OrientationBuilder(
      builder: (context, orientation) {
        return SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            body: Container(
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
                            child: RemoteVideo(
                              orientation,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: LocalVideo(
                              orientation,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

class LocalVideo extends StatelessWidget {
  final double LOCAL_VIDEO_WIDTH = 114.0;
  final double LOCAL_VIDEO_HEIGHT = 72.0;
  final Orientation orientation;

  LocalVideo(this.orientation);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final store = Provider.of<MeetingStore>(context);
        if (store.local == null) {
          return Container();
        }
        return SizedBox(
          width: orientation == Orientation.portrait
              ? LOCAL_VIDEO_HEIGHT
              : LOCAL_VIDEO_WIDTH,
          height: orientation == Orientation.portrait
              ? LOCAL_VIDEO_WIDTH
              : LOCAL_VIDEO_HEIGHT,
          child: GestureDetector(
            onTap: () => store.switchCamera(),
            child: RTCVideoView(store.local.renderer),
          ),
        );
      },
    );
  }
}

class RemoteVideo extends StatelessWidget {
  final Orientation orientation;

  RemoteVideo(this.orientation);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Observer(
      builder: (context) {
        final store = Provider.of<MeetingStore>(context);
        if (store.remotes?.isEmpty == true) {
          return Container();
        }
        return SizedBox(
          width: size.width,
          height: size.height,
          child: GestureDetector(
            child: RTCVideoView(
              store.remotes.first.renderer,
              mirror: false,
              objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
            ),
          ),
        );
      },
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
