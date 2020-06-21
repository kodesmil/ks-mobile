import 'package:feat_health/feat_health.dart';
import 'package:feat_health/src/stores/menstruation_personal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';


class ProfileSettingsTile extends StatefulWidget {
  ProfileSettingsTile();

  @override
  _ProfileSettingsTileState createState() => _ProfileSettingsTileState();
}

class _ProfileSettingsTileState extends State<ProfileSettingsTile> {
  final _emailController = TextEditingController();

  @override
  void didChangeDependencies() {
    final store = Provider.of<MenstruationPersonalInfoStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MenstruationPersonalInfoStore>(context);
    return Observer(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Text(
              '',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
