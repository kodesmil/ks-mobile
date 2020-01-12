import 'package:app_kodesmil_homepage/widgets/content.dart';
import 'package:app_kodesmil_homepage/widgets/headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/texts.dart';

class HomepagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderWidget(),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(KsDimension.xl),
                color: Colors.white,
                child: Center(
                  child: KsText(
                    'Technology is our hobby',
                    style: Theme.of(context).textTheme.display2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade900,
                        ),
                  ),
                ),
              ),
            ],
          ),
          ContentWidget(),
        ],
      ),
    );
  }
}
