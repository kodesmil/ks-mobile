import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_lego/constrainers.dart';
import 'package:lib_locale/localizations.dart';

class RecommendationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KsVerticalSpace.l(),
        KsText.display2(KsLoc.of(context).fsOurRecommendations()),
        KsVerticalSpace.l(),
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
                    textScaleFactor: 1.2,
                  ),
                  KsVerticalSpace.s(),
                  KsText.body2(
                    KsLoc.of(context).fsRecommendationAuthor1(),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            KsHorizontalSpace.m(),
            Container(
              width: KsContrainer.column12Width(context, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KsText.body2(KsLoc.of(context).fsRecommendation2()),
                  KsVerticalSpace.s(),
                  KsText.body2(KsLoc.of(context).fsRecommendationAuthor2()),
                ],
              ),
            )
          ],
        ),
        KsVerticalSpace.xl(),
      ],
    );
  }
}
