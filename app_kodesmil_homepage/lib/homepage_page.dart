import 'package:app_kodesmil_homepage/widgets/content.dart';
import 'package:app_kodesmil_homepage/widgets/footer.dart';
import 'package:app_kodesmil_homepage/widgets/headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/homepage/contact.dart';

class HomepagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderWidget(),
          ContentWidget(),
          ContactWidget(
            companyName: 'KodeSmil',
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
