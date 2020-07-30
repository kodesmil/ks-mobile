import 'package:feat_services/feat_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:provider/provider.dart';

class ServiceOfferPage extends StatefulWidget {
  @override
  _ServiceOfferPageState createState() => _ServiceOfferPageState();
}

class _ServiceOfferPageState extends State<ServiceOfferPage> {
  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceOfferStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceOfferStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          KsNavigationBar(title: 'Offers'),
          Observer(
            builder: (context) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final e = store.subjects[index];
                  return ListTile(
                    title: Text(
                      e.description,
                    ),
                    subtitle: Text(
                      '${e.price} ${e.currency}',
                    ),
                    trailing: Text(
                      '${e.provider.serviceInPerson.firstName} ${e.provider.serviceInPerson.lastName}',
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => ServiceOfferDetailsPage(e),
                        ),
                      );
                    },
                  );
                },
                childCount: store.subjects.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceOfferDetailsPage extends StatelessWidget {
  final ServiceOffer offer;

  ServiceOfferDetailsPage(this.offer);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceOfferStore>(context);
    return Scaffold(
      appBar: KsSmallNavigationBar(
        title: 'Details',
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(offer.provider.serviceInPerson.firstName),
            Text(offer.provider.serviceInPerson.lastName),
            SizedBox(height: 40),
            Text(offer.description),
            SizedBox(height: 20),
            Text('${offer.price} ${offer.currency}'),
            SizedBox(height: 40),
            RaisedButton(
              child: Text('Start session'),
              onPressed: () async {
                final session = await store.startSession(offer);
                await Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => ServiceSessionPage(session),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
