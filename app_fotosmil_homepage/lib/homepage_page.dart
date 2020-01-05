import 'package:app_fotosmil_homepage/widgets/headers.dart';
import 'package:app_fotosmil_homepage/widgets/our_partners.dart';
import 'package:app_fotosmil_homepage/widgets/recommendations.dart';
import 'package:app_fotosmil_homepage/widgets/smiles.dart';
import 'package:app_fotosmil_homepage/widgets/whats_included.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/constrainers.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/textfields.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

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
          ContactUsWidget(),
        ],
      ),
    );
  }
}

class ContactUsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          KsVerticalSpace.l(),
          KsText.display1('Looking for great ice-breaker for your event?'),
          KsText.display1('Contact us'),
          KsVerticalSpace.l(),
          RaisedButton(
            child: Text('Send us request'),
            shape: StadiumBorder(),
            onPressed: () => _launchEmail(KsLoc.of(context).fsEmail()),
          ),
          KsVerticalSpace.xxl(),
        ],
      ),
    );
  }

  _launchEmail(String email) async {
    final url = 'mailto:$email';
    final launcher = UrlLauncherPlugin();
    await launcher.launch(
      url,
      enableDomStorage: false,
      useWebView: false,
      enableJavaScript: false,
      headers: {},
      useSafariVC: false,
      universalLinksOnly: false,
    );
  }
}
