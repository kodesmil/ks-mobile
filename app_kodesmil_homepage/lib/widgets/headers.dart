import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_lego/clip_paths.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';

String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
    'Proin sem purus, hendrerit in pellentesque congue, eleifend ut quam. '
    'Vestibulum bibendum mollis fermentum. '
    'Aliquam quam eros, placerat vitae nulla eu.';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/bg_grained.png',
            ),
          ),
          ClipShadowPath(
            clipper: TriangleClipper(),
            shadow: Shadow(
              blurRadius: 25,
            ),
            child: Container(
              width: size.width,
              height: size.height * 1.5,
              decoration: BoxDecoration(
                gradient: KsGradient.kodesmil().gradient,
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            width: size.width * 0.2,
            left: size.width * 0.125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Who are',
                    style: textTheme.display1.copyWith(
                      color: colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: ' we',
                        style: textTheme.display1.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '?',
                        style: textTheme.display1.copyWith(
                          color: colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                KsSpace.s(),
                KsText(
                  loremIpsum,
                  style: textTheme.body2.copyWith(
                    color: colorScheme.onBackground,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  KsSpace.mH(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/logo.png',
                            width: KsDimension.l,
                            height: KsDimension.l,
                          ),
                          KsSpace.xs(),
                          KsText(
                            'Kode',
                            style: textTheme.display1.copyWith(
                              fontWeight: FontWeight.w200,
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          KsText(
                            'Smil',
                            style: textTheme.display1.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onPrimary,
                            ),
                          )
                        ],
                      ),
                      Row(
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
                              color: colorScheme.background,
                              width: 2,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  KsSpace.xl(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: size.width * 0.35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                KsLoc.of(context).ksMotto(),
                                style: textTheme.display3.copyWith(
                                  color: colorScheme.onPrimary,
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
                        FittedBox(
                          child: Image.asset(
                            'assets/header.png',
                            scale: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
