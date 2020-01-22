import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:responsive/responsive.dart';

String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
    'Proin sem purus, hendrerit in pellentesque congue, eleifend ut quam. '
    'Vestibulum bibendum mollis fermentum. '
    'Aliquam quam eros, placerat vitae nulla eu.';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: KsDimension.xl),
        child: FractionallySizedBox(
          widthFactor: 0.75,
          child: ResponsiveRow(
            runAlignment: WrapAlignment.end,
            alignment: WrapAlignment.end,
            spacing: 64,
            children: [
              FlexWidget(
                md: 6,
                xl: 4,
                child: ReasonsWidget(),
              ),
              FlexWidget(
                md: 6,
                xl: 4,
                child: FeatureWidget(),
              ),
              FlexWidget(
                md: 6,
                xl: 4,
                child: FeatureWidget(),
              ),
              FlexWidget(
                md: 6,
                xl: 4,
                child: FeatureWidget(),
              ),
              FlexWidget(
                md: 6,
                xl: 4,
                child: FeatureWidget(),
              ),
              FlexWidget(
                md: 6,
                xl: 4,
                child: FeatureWidget(),
              ),
            ],
          ),
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
    return Padding(
      padding: const EdgeInsets.only(
        top: KsDimension.xl,
      ),
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
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.body1.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(
        top: KsDimension.xl,
      ),
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
