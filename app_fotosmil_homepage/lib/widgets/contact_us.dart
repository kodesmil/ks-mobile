import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

class ContactUsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          KsVerticalSpace.xl(),
          KsText.display2(KsLoc.of(context).fsWhatIceBreaker()),
          KsVerticalSpace.m(),
          KsText.display1(KsLoc.of(context).fsContactUs()),
          KsVerticalSpace.l(),
          RaisedButton(
            child: Text(KsLoc.of(context).fsSendUsRequest()),
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
