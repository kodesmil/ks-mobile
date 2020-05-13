import 'package:feat_survey/src/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'store.dart';

class SurveyWidget extends StatefulWidget {
  SurveyWidget();

  @override
  _SurveyWidgetState createState() => _SurveyWidgetState();
}

class _SurveyWidgetState extends State<SurveyWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<SurveyStore>(context);
    store.fetchQuestions();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SurveyStore>(context);
    return Column(
      children: <Widget>[
        KsSpace.l(),
        Observer(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: store.questions
                .map((e) => SurveyRateWidget(question: e))
                .toList(),
          ),
        ),
        KsSpace.l(),
        RaisedButton(
          child: Text('SUBMIT'),
          onPressed: store.sendAnswers,
        ),
      ],
    );
  }
}

class SurveyRateWidget extends StatefulWidget {
  final Question question;

  SurveyRateWidget({
    this.question,
  });

  @override
  State<StatefulWidget> createState() {
    return _SurveyRateWidgetState();
  }
}

class _SurveyRateWidgetState extends State<SurveyRateWidget> {
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SurveyStore>(context);
    return Column(
      children: <Widget>[
        Text(
          widget.question.text.en,
          style: Theme.of(context).textTheme.headline6,
        ),
        KsSpace.xxs(),
        SmoothStarRating(
          color: Colors.amberAccent,
          borderColor: Colors.amber,
          onRated: (value) {
            store.saveAnswer(widget.question, value);
            setState(() {
              rate = value;
            });
          },
          rating: rate,
          starCount: 5,
          size: 40.0,
        ),
      ],
    );
  }
}
