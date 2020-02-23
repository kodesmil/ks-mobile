import 'package:flutter/cupertino.dart';
import 'package:flutter/materialrt';
import 'package:land_fotosmil/widgets/headers.dart';
import 'package:land_fotosmil/widgets/our_partners.dart';
import 'package:land_fotosmil/widgets/recommendations.dart';
import 'package:land_fotosmil/widgets/smiles.dart';
import 'package:land_fotosmil/widgets/whats_included.dart';
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
