import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:kodesmil_locale/localizations.dart';

List<_FeatureWidget> getFeatures(BuildContext context) => [
      _FeatureWidget(
        title: KsLoc.of(context).fsFeat1Title(),
        description: KsLoc.of(context).fsFeat1Description(),
      ),
      _FeatureWidget(
        title: KsLoc.of(context).fsFeat2Title(),
        description: KsLoc.of(context).fsFeat2Description(),
      ),
      _FeatureWidget(
        title: KsLoc.of(context).fsFeat3Title(),
        description: KsLoc.of(context).fsFeat3Description(),
      ),
      _FeatureWidget(
        title: KsLoc.of(context).fsFeat4Title(),
        description: KsLoc.of(context).fsFeat4Description(),
      ),
      _FeatureWidget(
        title: KsLoc.of(context).fsFeat5Title(),
        description: KsLoc.of(context).fsFeat5Description(),
      ),
    ];

class _FeatureWidget extends StatelessWidget {
  final String title;
  final String description;

  const _FeatureWidget({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (ctx, cns) => Container(
          width: cns.maxWidth > 800 ? cns.maxWidth * 0.5 : cns.maxWidth * 0.9,
          child: Column(
            children: <Widget>[
              KsSpace.xlH(),
              KsText.display1(
                title,
                textAlign: TextAlign.center,
              ),
              KsSpace.mH(),
              KsText.body2(
                description,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}
