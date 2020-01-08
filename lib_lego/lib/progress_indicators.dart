import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';

class KsProgressIndicator extends StatelessWidget {
  const KsProgressIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        constraints: BoxConstraints.expand(),
        child: FittedBox(
          fit: BoxFit.none,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Card(
              color: Theme.of(context).backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(KsDimension.m),
                child: CircularProgressIndicator(),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(color: Color.fromARGB(100, 105, 105, 105)),
      ),
    );
  }
}
