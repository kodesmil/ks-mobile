import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_lego/constrainers.dart';
import 'package:kodesmil_locale/localizations.dart';

class RecommendationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KsSpace.lH(),
        KsText.display2(KsLoc.of(context).fsOurRecommendations()),
        KsSpace.lH(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: KsContrainer.column12Width(context, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  KsText(
                    KsLoc.of(context).fsRecommendation1(),
                    type: KsTextType.body2,
                    textAlign: TextAlign.right,
                  ),
                  KsSpace.sH(),
                  KsText.body2(
                    KsLoc.of(context).fsRecommendationAuthor1(),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            KsSpace.mW(),
            Container(
              width: KsContrainer.column12Width(context, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KsText.body2(KsLoc.of(context).fsRecommendation2()),
                  KsSpace.sH(),
                  KsText.body2(KsLoc.of(context).fsRecommendationAuthor2()),
                ],
              ),
            )
          ],
        ),
        KsSpace.xlH(),
      ],
    );
  }
}
