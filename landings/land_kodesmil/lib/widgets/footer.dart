import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          ClipShadowPath(
            clipper: TriangleClipper(),
            shadow: Shadow(
              blurRadius: 25,
            ),
            child: Container(
              height: 800,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: KsGradient.kodesmilDown().gradient,
              ),
            ),
          ),
          Center(
            heightFactor: 1.4,
            child: Image.asset('assets/map.png'),
          ),
          Positioned(
            bottom: 30,
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Made with ❤️ in Trondheim, Norway and Lodz, Poland',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstControlPoint = Offset(size.width / 2, 100);
    var firstEndPoint = Offset(size.width, 25);
    return Path()
      ..lineTo(0, 75)
      ..quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
