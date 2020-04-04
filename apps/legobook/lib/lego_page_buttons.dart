import 'package:flutter/material.dart';
import 'package:legobook/lego_page.dart';
import 'package:lib_lego/lib_lego.dart';

class LegoButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child:
                  const Text('Raised Button', style: TextStyle(fontSize: 20)),
            ),
            FlatButton(
              onPressed: () {},
              child: const Text(
                "Flat Button",
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () {},
            ),
            OutlineButton(
              onPressed: () {},
              child: const Text(
                "Outline Button",
                style: TextStyle(fontSize: 20),
              ),
            ),
            DropdownButtonWidget(),
            PopupMenuWidget(),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.navigation),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      );
}
