import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/bg_grained.png',
            ),
          ),
          ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.5,
              decoration: BoxDecoration(
                gradient: KsGradient.kodesmil().gradient,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
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
                          KsSpace.xsW(),
                          KsText(
                            'Kode',
                            style: Theme.of(context).textTheme.display1.copyWith(
                                  fontWeight: FontWeight.w200,
                                ),
                          ),
                          KsText(
                            'Smil',
                            style: Theme.of(context).textTheme.display1.copyWith(
                                  fontWeight: FontWeight.w600,
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
                          KsSpace.sW(),
                          FlatButton(
                            child: Text('Products'),
                            onPressed: () => print(''),
                          ),
                          KsSpace.sW(),
                          FlatButton(
                            child: Text('Team'),
                            onPressed: () => print(''),
                          ),
                          KsSpace.sW(),
                          OutlineButton(
                            child: Text('Contact'),
                            onPressed: () => print(''),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 1.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  KsSpace.xxlH(),
                  KsSpace.xlH(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        KsText.display3(KsLoc.of(context).ksMotto()),
                      ],
                    ),
                  ),
                  KsSpace.lH(),
                  RaisedButton(
                    child: Text('Read more'),
                    onPressed: () => print('Test'),
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
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height * 0.5);
    path.conicTo(size.width / 2, size.height * 0.66, 0, size.height * 0.5, 10);
    path.lineTo(0, size.height * 0.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
