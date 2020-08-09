import 'package:feat_auth/feat_auth.dart';
import 'package:feat_services/feat_services.dart';
import 'package:feat_services/src/offer_details_page.dart';
import 'package:feat_services/src/offer_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceOfferPage extends StatefulWidget {
  ServiceOfferPage();

  @override
  ServiceOfferPageState createState() => ServiceOfferPageState();
}

class ServiceOfferPageState extends State<ServiceOfferPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider2<ProfileStore, ServicesClient, ServiceOfferStore>(
          update: (_, dep, dep2, __) => ServiceOfferStore(
            ErrorStore(),
            LoadingStore(),
            dep,
            dep2,
          ),
        ),
      ],
      child: ServiceOfferContent(),
    );
  }
}

class ServiceOfferContent extends StatefulWidget {
  @override
  _ServiceOfferContentState createState() => _ServiceOfferContentState();
}

class _ServiceOfferContentState extends State<ServiceOfferContent> {
  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceOfferStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceOfferStore>(context);
    return Observer(
      builder: (context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final e = store.subjects[index];
            final details = e.provider.details;
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(e.description),
                  ],
                ),
                subtitle: Text(
                  '${e.price} ${e.currency}',
                ),
                trailing: DetailsWidget(
                  details: details,
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
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key key,
    @required this.details,
  }) : super(key: key);

  final ServiceDetails details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(details.name),
      ],
    );
  }
}
