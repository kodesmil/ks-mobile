import 'package:feat_ion/src/helper/ion_store.dart';
import'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectToVideoButton extends StatefulWidget {
  ConnectToVideoButton({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ConnectToVideoButtonState createState() => _ConnectToVideoButtonState();
}

class _ConnectToVideoButtonState extends State<ConnectToVideoButton> {
  String _server;
  String _roomID;

  @override
  initState() {
    super.initState();
    init();
  }

  init() async {
    final helper = Provider.of<IonHelper>(context);
    helper.on('transport-open', () {
      Navigator.pushNamed(context, '/meeting');
    });
  }

  handleJoin() async {
    final helper = Provider.of<IonHelper>(context);
    helper.connect(
      'ion.qa.api.kodesmil.com',
    );
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Video Call"),
      onPressed: () => handleJoin(),
    );
  }
}
