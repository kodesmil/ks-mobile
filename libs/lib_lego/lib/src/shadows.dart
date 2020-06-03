import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ExContext on BuildContext {
  BoxShadow shadow1() {
    return BoxShadow(
      color: Theme.of(this).colorScheme.primary.withOpacity(0.1),
      spreadRadius: 0.01,
      blurRadius: 5,
      offset: Offset(0, 1),
    );
  }

  BoxShadow shadow2() {
    return BoxShadow(
      color: Theme.of(this).colorScheme.primary.withOpacity(0.1),
      spreadRadius: 0.25,
      blurRadius: 5,
    );
  }
}
