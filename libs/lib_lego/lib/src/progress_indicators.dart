import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

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
        child: ColorLoader3(),
      ),
    );
  }
}
