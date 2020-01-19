import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height < size.width ? size.height : null,
      color: Colors.white,
      child: Stack(
        children: [
          ClipRRect(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: KsGradient.kodesmil().gradient,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}