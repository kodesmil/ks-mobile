import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'store.dart';

class HealthSurveyWidget extends StatefulWidget {
  HealthSurveyWidget();

  @override
  _HealthSurveyWidgetState createState() => _HealthSurveyWidgetState();
}

class _HealthSurveyWidgetState extends State<HealthSurveyWidget> {
  double moodRate = 0;
  double healthRate = 0;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HealthSurveyStore>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'What\'s your mood?',
          style: Theme.of(context).textTheme.headline6,
        ),
        KsSpace.xxs(),
        SmoothStarRating(
          color: Colors.amberAccent,
          borderColor: Colors.amber,
          onRatingChanged: (value) {
            setState(() {
              moodRate = value;
            });
          },
          rating: moodRate,
          starCount: 5,
          size: 40.0,
        ),
        KsSpace.l(),
        Text(
          'What\'s your health?',
          style: Theme.of(context).textTheme.headline6,
        ),
        KsSpace.xxs(),
        SmoothStarRating(
          color: Colors.amberAccent,
          borderColor: Colors.amber,
          onRatingChanged: (value) {
            setState(() {
              healthRate = value;
            });
          },
          rating: healthRate,
          starCount: 5,
          size: 40.0,
        ),
        KsSpace.l(),
        RaisedButton(
          child: Text('Submit'),
          onPressed: () {
            store.sendMoodRank(moodRate);
            store.sendHealthRank(healthRate);
          },
        ),
      ],
    );
  }
}
