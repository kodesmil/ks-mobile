import 'package:feat_health/feat_health.dart';
import 'package:feat_health/src/stores/menstruation_personal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/cupertino/tab_scaffold.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

class MenstruationPersonalInfoWidget extends StatefulWidget {
  final Widget child;

  MenstruationPersonalInfoWidget({
    this.child,
  });

  @override
  _MenstruationPersonalInfoWidgetState createState() =>
      _MenstruationPersonalInfoWidgetState();
}

class _MenstruationPersonalInfoWidgetState
    extends State<MenstruationPersonalInfoWidget> {
  int _cycleLength = 28;
  int _periodLength = 5;

  @override
  void didChangeDependencies() {
    final store = Provider.of<MenstruationPersonalInfoStore>(context);
    store.read();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MenstruationPersonalInfoStore>(context);
    return Scaffold(
      primary: true,
      appBar: KsEmptyAppBar(),
      body: _buildBody(store),
    );
  }

  Widget _buildBody(MenstruationPersonalInfoStore store) => Observer(
        builder: (context) => Stack(
          children: <Widget>[
            store.loadingStore.success
                ? widget.child
                : Center(
                    heightFactor: 1.5,
                    child: _buildRightSide(store),
                  ),
            Visibility(
              visible: store.loadingStore.loading,
              child: KsProgressIndicator(),
            ),
          ],
        ),
      );

  Widget _buildRightSide(MenstruationPersonalInfoStore store) =>
      SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Menstruation',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 20),
            Text(
              'In order to predict your next periods, please provide us data.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 50),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text(
                'Cycle Length',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              trailing: DropdownButton(
                value: _cycleLength,
                onChanged: (value) => setState(() {
                  _cycleLength = value;
                }),
                items: List.generate(20, (index) => 20 + index)
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text('${e.toString()} days'),
                      ),
                    )
                    .toList(),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text(
                'Period Length',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              trailing: DropdownButton(
                value: _periodLength,
                onChanged: (value) {
                  setState(() {
                    _periodLength = value;
                  });
                },
                items: List.generate(15, (index) => 2 + index)
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text('${e.toString()} days'),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 50),
            Align(
              alignment: AlignmentDirectional.center,
              child: RaisedButton(
                onPressed: () {
                  store.createOrUpdate(
                    store.personalInfo,
                    cycleLength: _cycleLength,
                    periodLength: _periodLength,
                  );
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      );
}
