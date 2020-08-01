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
                  final contact = e.provider.details.contact;
                  final company = e.provider.details.company;
                  return Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ListTile(
                      title: Text(
                        e.description,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        '${e.price} ${e.currency}',
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(company.name),
                          Text(
                            '${contact.firstName} ${contact.lastName}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                          CupertinoPageRoute(
                            builder: (context) => ServiceOfferDetailsPage(e),
                          ),
                        );
                      },
                    ),
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
    final contact = offer.provider.details.contact;
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Details'),
      child: Material(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Text(contact.firstName),
                Text(contact.lastName),
                SizedBox(height: 40),
                Text(offer.description),
                SizedBox(height: 20),
                Text('${offer.price} ${offer.currency}'),
                SizedBox(height: 40),
                RaisedButton(
                  child: Text('Start session'),
                  onPressed: () async {
                    final session = await store.startSession(offer);
                    await Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (context) => ServiceSessionPage(session),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
