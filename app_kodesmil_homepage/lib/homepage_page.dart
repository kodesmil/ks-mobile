import 'package:app_kodesmil_homepage/widgets/content.dart';
import 'package:app_kodesmil_homepage/widgets/footer.dart';
import 'package:app_kodesmil_homepage/widgets/headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/homepage/contact.dart';
import 'package:lib_lego/spaces.dart';

class HomepagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderWidget(),
          ContentWidget(),
          KsSpace.xl(),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(
                'assets/let_s_make_great.png',
                scale: 1.3,
              ),
            ],
          ),
          KsSpace.xl(),
          ContactWidget(
            companyName: 'KodeSmil',
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
