import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'dart:html' as html;
import 'dart:js' as js;

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height < size.width ? size.height : null,
      child: Stack(
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: KsText.body2(KsLoc.of(context).fsEmail()),
                  onTap: () async =>
                      await _launchEmail(KsLoc.of(context).fsEmail()),
                ),
                KsSpace.xsH(),
                GestureDetector(
                  child: KsText.body2(KsLoc.of(context).fsPhone()),
                  onTap: () async =>
                      await _launchPhone(KsLoc.of(context).fsPhone()),
                ),
              ],
            ),
          ),
          Center(
            heightFactor: size.width > 800 ? 2.25 : 3,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: FittedBox(
                fit: size.width > 800 ? BoxFit.none : BoxFit.fitWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    KsText.display4(KsLoc.of(context).fsTitle()),
                    KsSpace.mH(),
                    KsText.body2(
                      KsLoc.of(context)
                          .fsProfessionalPhotoBooth()
                          .toUpperCase(),
                    ),
                    KsSpace.sH(),
                    KsText.display1(
                      KsLoc.of(context).fsForWeddingsEvents().toUpperCase(),
                    ),
                    KsSpace.mH(),
                    KsText(
                      '${KsLoc.of(context).fsPrice().toUpperCase()}: '
                      '${KsLoc.of(context).fsPrice4k().toUpperCase()}',
                      type: KsTextType.body2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchEmail(String email) {
    js.context.callMethod('openEmail');
  }

  _launchPhone(String phone) async {
    final url = 'tel:$phone';
    final launcher = UrlLauncherPlugin();
    await launcher.launch(
      url,
      enableDomStorage: true,
      useWebView: false,
      enableJavaScript: true,
      headers: {},
      useSafariVC: true,
      universalLinksOnly: false,
    );
  }
}
