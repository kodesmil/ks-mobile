import 'package:app_fotosmil_homepage/widgets/features.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';

class WhatsIncludedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          KsVerticalSpace.xxl(),
          KsText.display3(KsLoc.of(context).fsWhatsIncluded()),
          ...getFeatures(context),
          KsVerticalSpace.xxl(),
        ],
      ),
    );
  }
}
