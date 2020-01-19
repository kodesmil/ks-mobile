import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';

String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
    'Proin sem purus, hendrerit in pellentesque congue, eleifend ut quam. '
    'Vestibulum bibendum mollis fermentum. '
    'Aliquam quam eros, placerat vitae nulla eu.';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: KsDimension.xxl),
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FeatureWidget(),
                FeatureWidget(),
                ReasonsWidget(),
              ],
            ),
            KsSpace.xxl(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FeatureWidget(),
                FeatureWidget(),
                FeatureWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
              size: KsDimension.m,
            ),
            KsSpace.xs(),
            Text(
              'Latest technologies',
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            KsSpace.xs(),
            Text(
              loremIpsum,
              style: Theme.of(context).textTheme.body1.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReasonsWidget extends StatelessWidget {
  const ReasonsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '5 reasons why',
              style: textTheme.display1.copyWith(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'you should',
              style: textTheme.display1.copyWith(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'cooperate',
              style: textTheme.display1.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'with us!',
              style: textTheme.display1.copyWith(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
      ),
    );
  }
}
