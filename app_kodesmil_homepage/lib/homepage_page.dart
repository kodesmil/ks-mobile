import 'package:app_kodesmil_homepage/widgets/content.dart';
import 'package:app_kodesmil_homepage/widgets/headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';

class HomepagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderWidget(),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                KsSpace.xxlH(),
                KsSpace.xxlH(),
                Center(
                  child: KsText(
                    'Technology is our hobby',
                    style: Theme.of(context).textTheme.display2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade900,
                        ),
                  ),
                ),
                KsSpace.xxlH(),
                KsSpace.xxlH(),
              ],
            ),
          ),
          ContentWidget(),
        ],
      ),
    );
  }
}