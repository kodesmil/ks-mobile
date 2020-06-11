import 'package:feat_period/feat_period.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

import 'widgets/edit.dart';

class EditPeriodPage extends StatefulWidget {
  @override
  _EditPeriodPageState createState() => _EditPeriodPageState();
}

class _EditPeriodPageState extends State<EditPeriodPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Calendar(),
    );
  }
}
