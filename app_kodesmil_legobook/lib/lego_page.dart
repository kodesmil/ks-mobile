import 'package:flutter/material.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';

class LegoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(text: 'Texts'),
            Tab(text: 'Spaces'),
            Tab(text: 'Buttons'),
            Tab(text: 'Progress'),
            Tab(text: 'Radios'),
            Tab(text: 'Colors'),
            Tab(text: 'Text Fields'),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 64),
          child: TabBarView(
            children: [
              LegoTextsPage(),
              LegoSpacesPage(),
              LegoSpacesPage(),
              LegoSpacesPage(),
              LegoSpacesPage(),
              LegoSpacesPage(),
              LegoSpacesPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class LegoDefaultPage extends StatelessWidget {
  final Widget child;

  const LegoDefaultPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth * 0.5,
          child: Center(child: child),
        ),
      );
}

class LegoTextsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            KsText.display1('Display 1'),
            KsText.display2('Display 2'),
            KsText.display3('Display 3'),
            KsText.display4('Display 4'),
            KsText.body1('Body 1'),
            KsText.body2('Body 2'),
            KsText.title('Title'),
            KsText.subtitle('Subtitle'),
            KsText.headline('Headline'),
            KsText.subhead('Subhead'),
            KsText.button('Button'),
          ],
        ),
      );
}

class LegoSpacesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => LegoDefaultPage(
        child: Column(
          children: <Widget>[
            KsText.display1('Vertical Space - XL'),
            _LegoSpacesInternal(child: KsVerticalSpace.xl()),
            KsText.display1('Vertical Space - L'),
            _LegoSpacesInternal(child: KsVerticalSpace.l()),
            KsText.display1('Vertical Space - M'),
            _LegoSpacesInternal(child: KsVerticalSpace.m()),
            KsText.display1('Vertical Space - S'),
            _LegoSpacesInternal(child: KsVerticalSpace.s()),
            KsText.display1('Vertical Space - XS'),
            _LegoSpacesInternal(child: KsVerticalSpace.xs()),
          ],
        ),
      );
}

class _LegoSpacesInternal extends StatelessWidget {
  const _LegoSpacesInternal({
    Key key,
    @required this.child,
  }) : super(key: key);

  final KsVerticalSpace child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 1000000,
      child: child,
    );
  }
}
