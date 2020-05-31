import 'package:flutter/material.dart';

import 'dimensions.dart';

class KsProgressIndicator extends StatelessWidget {
  const KsProgressIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: Center(
        child: Container(
          child: Image.asset(
            'assets/icons/ic_launcher.png',
            height: MediaQuery.of(context).size.height * 0.2,
          ),
        ),
      ),
    );
  }
}
