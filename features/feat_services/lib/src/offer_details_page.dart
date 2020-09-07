import 'package:feat_auth/feat_auth.dart';
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
        ProxyProvider3<ProfileStore, ServicesClient, SessionsStateNotifier,
            ServiceOfferStore>(
          update: (_, dep, dep2, dep3, __) => ServiceOfferStore(
            ErrorStore(),
            LoadingStore(),
            dep,
            dep2,
            dep3,
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
    return Scaffold(
      appBar: KsSmallNavigationBar(title: 'Details'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Start session',
          style: Theme.of(context).textTheme.button.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        shape: StadiumBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () async {
          final session = await store.startSession(offer);
          await Navigator.of(context).pushReplacement(
            CupertinoPageRoute(
              builder: (context) => ServiceSessionPage(session.id),
            ),
          );
        },
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      body: Material(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/peach/example/example-scene-2.png',
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  offer.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10),
                Text(
                  offer.description,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 10),
                Text(
                  offer.provider.details.name,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
