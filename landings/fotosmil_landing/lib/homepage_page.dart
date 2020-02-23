import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fotosmil_landing/widgets/contact_us.dart';
import 'package:fotosmil_landing/widgets/headers.dart';
import 'package:fotosmil_landing/widgets/our_partners.dart';
import 'package:fotosmil_landing/widgets/recommendations.dart';
import 'package:fotosmil_landing/widgets/smiles.dart';
import 'package:fotosmil_landing/widgets/whats_included.dart';
import 'package:lib_lego/homepage/contact.dart';

class HomepagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeaderWidget(),
          Container(color: Colors.orange, height: 16),
          WhatsIncludedWidget(),
          SmilesWidget(),
          RecommendationsWidget(),
          Container(color: Colors.orange, height: 8),
          OurPartnersWidget(),
          Container(color: Colors.orange, height: 8),
          ContactWidget(
            companyName: 'FotoSmil',
          ),
        ],
      ),
    );
  }
}
