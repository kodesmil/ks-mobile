import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:provider/provider.dart';

import '../../feat_services.dart';

class ServiceSessionPage extends StatelessWidget {
  final ServiceSession session;

  ServiceSessionPage(this.session);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KsSmallNavigationBar(
        title: 'Session',
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(session.offer.provider.details.contact.firstName),
            Text(session.offer.provider.details.contact.lastName),
            SizedBox(height: 40),
            Text(session.offer.description),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Start video call'),
              onPressed: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed('/meeting');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceSessionArchivePage extends StatefulWidget {
  ServiceSessionArchivePage();

  @override
  _ServiceSessionArchivePageState createState() =>
      _ServiceSessionArchivePageState();
}

class _ServiceSessionArchivePageState extends State<ServiceSessionArchivePage> {
  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceSessionStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          KsNavigationBar(title: 'Archive'),
          Observer(
            builder: (context) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final e = store.sessions[index];
                  return ListTile(
                    title: Text(
                      e.offer.description,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().add_Hm().format(e.scheduledAt.toDateTime()),
                    ),
                    trailing: Text(
                      'Paid: ${e.offer.price} ${e.offer.currency}'
                    ),
                  );
                },
                childCount: store.sessions.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
