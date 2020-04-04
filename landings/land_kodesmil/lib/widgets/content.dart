import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:responsive/responsive.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: KsDimension.xxl),
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
                lg: 4,
                xl: 3,
                child: FeatureWidget(
                  header: 'Flutter',
                  content: 'Mobile, web, desktop – we bet on one codebase '
                      'to rule them all. As the first company in Norway, '
                      'we fully leverage the potential of Flutter framework, '
                      'making it popular even far beyond the Norwegian borders.',
                ),
              ),
              FlexWidget(
                md: 6,
                lg: 4,
                xl: 3,
                child: FeatureWidget(
                  header: 'Python',
                  content: 'What drives the change in technology these days '
                      'is the artificial intelligence and machine learning. '
                      'That’s why we utilize Python – in order to get '
                      'the most advanced things done in the most efficient manner.',
                ),
              ),
              FlexWidget(
                md: 6,
                lg: 4,
                xl: 3,
                child: FeatureWidget(
                  header: 'Processes',
                  content: 'Being agile and having established processes or '
                      'procedures go hand-in-hand at KodeSmil. '
                      'This helps us react and adapt to changes in a very organized way. '
                      'There’s no room for chaotic actions here! ',
                ),
              ),
              FlexWidget(
                md: 6,
                lg: 4,
                xl: 3,
                child: FeatureWidget(
                  header: 'Communication',
                  content:
                      'We stay in touch and keep you posted about everything '
                      'we do for you, no matter what. We’re transparent and honest. '
                      'And having a reliable and trustful partner will make '
                      'you credible in front of your stakeholders.',
                ),
              ),
              FlexWidget(
                md: 6,
                lg: 4,
                xl: 3,
                child: FeatureWidget(
                  header: 'Fun',
                  content: 'Doing business with us is highly professional. '
                      'However, it’s a super nice and amusing experience, too! '
                      'The one doesn’t preclude the other, and we can prove it. '
                      'Wanna give it a shot? ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureWidget extends StatelessWidget {
  final String header;
  final String content;

  const FeatureWidget({
    Key key,
    this.content,
    this.header,
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
            header,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          KsSpace.xs(),
          Text(
            content,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
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
            style: textTheme.headline4.copyWith(
              color: colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'you should',
            style: textTheme.headline4.copyWith(
              color: colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'cooperate',
            style: textTheme.headline4.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'with us!',
            style: textTheme.headline4.copyWith(
              color: colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
