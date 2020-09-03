import 'package:feat_services/feat_services.dart';
import 'package:feat_services/src/application_list_store.dart';
import 'package:feat_services/src/employment_edit_page.dart';
import 'package:feat_services/src/offer_edit_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceApplicationListPage extends StatefulWidget {
  final Widget navigationBar;

  ServiceApplicationListPage({
    this.navigationBar,
  });

  @override
  ServiceApplicationListPageState createState() =>
      ServiceApplicationListPageState();
}

class ServiceApplicationListPageState
    extends State<ServiceApplicationListPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceApplicationListStore>(
          update: (_, dep, __) => ServiceApplicationListStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceApplicationListContent(),
    );
  }
}

class ServiceApplicationListContent extends StatefulWidget {
  @override
  _ServiceApplicationListContentState createState() =>
      _ServiceApplicationListContentState();
}

class _ServiceApplicationListContentState
    extends State<ServiceApplicationListContent> {
  @override
  void didChangeDependencies() async {
    final store =
        Provider.of<ServiceApplicationListStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationListStore>(context);
    return Observer(
      builder: (context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final e = store.subjects[index];
            final details = e.provider.details;
            return Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
              ),
              child: Card(
                shape: BeveledRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          details.name,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        subtitle: Text(
                          details.address,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () async {
                            final reload =
                                await Navigator.of(context, rootNavigator: true)
                                    .push(
                              CupertinoPageRoute(
                                builder: (context) =>
                                    ServiceApplicationEditPage(
                                  application: e,
                                ),
                              ),
                            );
                            if (reload == true) {
                              await store.fetch();
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text(
                          'Offers',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () async {
                            final reload =
                                await Navigator.of(context, rootNavigator: true)
                                    .push(
                              CupertinoPageRoute(
                                builder: (context) =>
                                    ServiceOfferEditPage(e.provider),
                              ),
                            );
                            if (reload == true) {
                              await store.fetch();
                            }
                          },
                        ),
                      ),
                      Column(
                        children: e.provider.offers
                            .map(
                              (o) => ListTile(
                                title: Text(o.title),
                                subtitle: Text(
                                  o.description,
                                  maxLines: 2,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                trailing: Text(
                                  '${o.price} ${o.currency}',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                onTap: () async {
                                  final reload = await Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).push(
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          ServiceOfferEditPage(
                                        e.provider,
                                        offer: o,
                                      ),
                                    ),
                                  );
                                  if (reload == true) {
                                    await store.fetch();
                                  }
                                },
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Text(
                          'Team',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () async {
                            final reload = await Navigator.of(
                              context,
                              rootNavigator: true,
                            ).push(
                              CupertinoPageRoute(
                                builder: (context) =>
                                    ServiceEmploymentEditPage(e.provider),
                              ),
                            );
                            if (reload == true) {
                              await store.fetch();
                            }
                          },
                        ),
                      ),
                      Column(
                        children: e.provider.employments
                            .map(
                              (o) => ListTile(
                                title: Text('${o.firstName} ${o.lastName}'),
                                onTap: () async {
                                  final reload = await Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  ).push(
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          ServiceEmploymentEditPage(
                                        e.provider,
                                        employment: o,
                                      ),
                                    ),
                                  );
                                  if (reload == true) {
                                    await store.fetch();
                                  }
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          childCount: store.subjects.length,
        ),
      ),
    );
  }
}
