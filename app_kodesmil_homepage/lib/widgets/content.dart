import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height < size.width ? size.height : null,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(KsDimension.xxl),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.indigo.shade900,
                  Colors.cyan.shade600,
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  KsText.display1(
                    'We treat each app as our own product',
                  ),
                  KsText.display1(
                    'We don\'t stop until it\'s pixel perfect',
                  ),
                  KsText.display1(
                    'Online Tracking Feature will be available to '
                    'track the progress of your project',
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
