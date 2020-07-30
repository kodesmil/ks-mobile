import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';

class ServiceSessionPage extends StatelessWidget {
  final ServiceSession session;

  ServiceSessionPage(this.session);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KsSmallNavigationBar(
        title: 'Session',
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(session.offer.provider.serviceInPerson.firstName),
            Text(session.offer.provider.serviceInPerson.lastName),
            SizedBox(height: 40),
            Text(session.offer.description),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Start video call'),
              onPressed: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed('/meeting');
              },
            ),
          ],
        ),
      ),
    );
  }
}
