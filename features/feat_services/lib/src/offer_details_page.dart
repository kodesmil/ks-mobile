import 'package:feat_services/feat_services.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/offer_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceOfferDetailsPage extends StatefulWidget {
  final ServiceOffer offer;

  ServiceOfferDetailsPage(this.offer);

  @override
  ServiceOfferDetailsPageState createState() => ServiceOfferDetailsPageState();
}

class ServiceOfferDetailsPageState extends State<ServiceOfferDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceOfferStore>(
          update: (_, dep, __) => ServiceOfferStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceOfferDetailsContent(widget.offer),
    );
  }
}

class ServiceOfferDetailsContent extends StatelessWidget {
  final ServiceOffer offer;

  ServiceOfferDetailsContent(this.offer);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceOfferStore>(context);
    final details = offer.provider.details;
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Details'),
      child: Material(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                DetailsWidget(
                  details: details,
                ),
                SizedBox(height: 40),
                Text(
                  offer.description,
                  style: Theme.of(context).textTheme.headline6,
                ),
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
