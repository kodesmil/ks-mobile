import 'package:flutter/material.dart';
import 'package:lib_lego/clip_paths.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/gradients.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:responsive_grid/responsive_grid.dart';

String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
    'Proin sem purus, hendrerit in pellentesque congue, eleifend ut quam. '
    'Vestibulum bibendum mollis fermentum. '
    'Aliquam quam eros, placerat vitae nulla eu.';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          _HeaderGrainedWidget(),
          _HeaderBackgroundWidget(),
          _HeaderWhoWeAreWidget(),
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  KsSpace.mH(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      KodeSmilLogo(),
                      MediaQuery.of(context).size.width > 1024
                          ? MenuLong()
                          : MenuShort()
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            heightFactor: 1.5,
            child: Container(
              child: FractionallySizedBox(
                widthFactor: 0.75,
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      md: 6,
                      child: HeaderLeftWidget(),
                    ),
                    ResponsiveGridCol(
                      md: 6,
                      child: HeaderRightWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderGrainedWidget extends StatelessWidget {
  const _HeaderGrainedWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Image.asset(
        'assets/bg_grained.png',
      ),
    );
  }
}

class _HeaderWhoWeAreWidget extends StatelessWidget {
  const _HeaderWhoWeAreWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FractionallySizedBox(
        widthFactor: 0.75,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              md: 6,
              lg: 3,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _WhoWeAreText(),
                      KsSpace.sH(),
                      KsText(
                        loremIpsum,
                        style: Theme.of(context).textTheme.body2.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderBackgroundWidget extends StatelessWidget {
  const _HeaderBackgroundWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      clipper: TriangleClipper(),
      shadow: Shadow(
        blurRadius: 25,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1.5,
        decoration: BoxDecoration(
          gradient: KsGradient.kodesmil().gradient,
        ),
      ),
    );
  }
}

class HeaderRightWidget extends StatelessWidget {
  const HeaderRightWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KsDimension.m),
      child: Image.asset(
        'assets/header.png',
        scale: 1,
      ),
    );
  }
}

class HeaderLeftWidget extends StatelessWidget {
  const HeaderLeftWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: KsDimension.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              KsLoc.of(context).ksMotto(),
              style: Theme.of(context).textTheme.display3.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
              maxLines: 3,
            ),
            KsSpace.l(),
            RaisedButton(
              child: Text('Read more'),
              onPressed: () => print('Test'),
            ),
          ],
        ),
      ),
    );
  }
}

class _WhoWeAreText extends StatelessWidget {
  const _WhoWeAreText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Who are',
        style: Theme.of(context).textTheme.display1.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: ' we',
            style: Theme.of(context).textTheme.display1.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(
            text: '?',
            style: Theme.of(context).textTheme.display1.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

class KodeSmilLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/logo.png',
          width: KsDimension.l,
          height: KsDimension.l,
        ),
        KsSpace.xs(),
        KsText(
          'Kode',
          style: Theme.of(context).textTheme.display1.copyWith(
                fontWeight: FontWeight.w200,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        KsText(
          'Smil',
          style: Theme.of(context).textTheme.display1.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        )
      ],
    );
  }
}

class MenuShort extends StatelessWidget {
  const MenuShort({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        color: Theme.of(context).colorScheme.background,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: GestureDetector(
            child: Text(
              'Home',
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () => print(''),
          ),
        ),
        PopupMenuItem(
          child: GestureDetector(
            child: Text(
              'Products',
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () => print(''),
          ),
        ),
        PopupMenuItem(
          child: GestureDetector(
            child: Text(
              'Team',
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () => print(''),
          ),
        ),
        PopupMenuItem(
          child: GestureDetector(
            child: Text(
              'Contact',
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () => print(''),
          ),
        ),
      ],
    );
  }
}

class MenuLong extends StatelessWidget {
  const MenuLong({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Text('Home'),
          onPressed: () => print(''),
        ),
        KsSpace.s(),
        FlatButton(
          child: Text('Products'),
          onPressed: () => print(''),
        ),
        KsSpace.s(),
        FlatButton(
          child: Text('Team'),
          onPressed: () => print(''),
        ),
        KsSpace.s(),
        OutlineButton(
          child: Text('Contact'),
          onPressed: () => print(''),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.background,
            width: 2,
          ),
        ),
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height * 0.5)
      ..conicTo(size.width / 2, size.height * 0.65, 0, size.height * 0.5, 25)
      ..lineTo(0, size.height * 0.5)
      ..close();
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
