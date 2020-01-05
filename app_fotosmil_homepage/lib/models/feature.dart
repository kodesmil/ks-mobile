import 'package:flutter/material.dart';
import 'package:lib_locale/localizations.dart';

List<Feature> getFeatures(BuildContext context) => [
      Feature(
        title: KsLoc.of(context).fsFeat1Title(),
        description: KsLoc.of(context).fsFeat1Description(),
      ),
      Feature(
        title: KsLoc.of(context).fsFeat2Title(),
        description: KsLoc.of(context).fsFeat2Description(),
      ),
      Feature(
        title: KsLoc.of(context).fsFeat3Title(),
        description: KsLoc.of(context).fsFeat3Description(),
      ),
      Feature(
        title: KsLoc.of(context).fsFeat4Title(),
        description: KsLoc.of(context).fsFeat4Description(),
      ),
      Feature(
        title: KsLoc.of(context).fsFeat5Title(),
        description: KsLoc.of(context).fsFeat5Description(),
      ),
    ];

class Feature {
  String title;
  String description;

  Feature({
    this.title,
    this.description,
  });
}
