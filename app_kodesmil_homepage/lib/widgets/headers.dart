import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height < size.width ? size.height * 1.05 : null,
      color: Colors.white,
      child: Stack(
        children: [
          ClipPath(
            clipper: TriangleClipper(),
            child: Align(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1.05,
                decoration: BoxDecoration(
                  gradient: KsGradient.kodesmil().gradient,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  KsText.display1(KsLoc.of(context).ksTitle()),
                  KsSpace.sH(),
                  KsText.display4(KsLoc.of(context).ksMotto()),
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
    path.lineTo(size.width, size.height * 0.65);
    path.conicTo(size.width / 2, size.height, 0, size.height * 0.65, 10);
    path.lineTo(0, size.height * 0.65);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}