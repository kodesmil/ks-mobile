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
                scale: MediaQuery.of(context).size.width > 666 ? 1.5 : 2.25,
              ),
            ],
          ),
          KsSpace.l(),
          ContactWidget(
            companyName: 'KodeSmil',
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
