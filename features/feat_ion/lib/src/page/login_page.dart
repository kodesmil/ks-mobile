import 'package:feat_ion/src/helper/ion_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectToVideoButton extends StatefulWidget {
  ConnectToVideoButton({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ConnectToVideoButtonState createState() => _ConnectToVideoButtonState();
}

class _ConnectToVideoButtonState extends State<ConnectToVideoButton> {
  Future handleJoin() async {
    final helper = Provider.of<IonHelper>(context, listen: false);
    await helper.connect('ion.qa.api.kodesmil.com', (result) {
      if (result) {
        Navigator.of(context, rootNavigator: true)
            .pushNamed('/meeting');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Video Call'),
      onPressed: () async {
        return await handleJoin();
      },
    );
  }
}
