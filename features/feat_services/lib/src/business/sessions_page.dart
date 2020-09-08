import 'package:feat_services/feat_services.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'sessions_store.dart';

class ServiceSessionBizListPage extends StatefulWidget {
  ServiceSessionBizListPage();

  @override
  ServiceSessionBizListPageState createState() =>
      ServiceSessionBizListPageState();
}

class ServiceSessionBizListPageState extends State<ServiceSessionBizListPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceSessionBizListStore>(
          update: (_, dep, __) => ServiceSessionBizListStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceSessionBizListContent(),
    );
  }
}

class ServiceSessionBizListContent extends StatefulWidget {
  ServiceSessionBizListContent();

  @override
  _ServiceSessionBizListContentState createState() =>
      _ServiceSessionBizListContentState();
}

class _ServiceSessionBizListContentState
    extends State<ServiceSessionBizListContent> {
  @override
  void didChangeDependencies() async {
    final store =
        Provider.of<ServiceSessionBizListStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionBizListStore>(context);
    return Observer(
      builder: (context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final e = store.sessions[index];
            final details = e.offer.provider.details;
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                onTap: () async {
                  if (e.status != ServiceSession_Status.FINISHED &&
                      e.status != ServiceSession_Status.CANCELED) {
                    await Navigator.of(context, rootNavigator: true).push(
                      CupertinoPageRoute(
                        builder: (context) => ServiceSessionPage(e.id),
                      ),
                    );
                    await store.fetch();
                  }
                },
                title: Text(
                  e.offer.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From: ${_presentDate(e.scheduledAt)}',
                    ),
                    e.finishedAt.seconds != 0
                        ? Text('To: ${_presentDate(e.finishedAt)}')
                        : Container(),
                    Text(
                      'Status: ${e.status}',
                    ),
                    Text('Paid: ${e.offer.price} ${e.offer.currency}'),
                    Column(
                      children: e.evaluations
                          .map((o) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  o.comment?.isNotEmpty == true
                                      ? Text('Comment: ${o.comment}')
                                      : Container(),
                                  SmoothStarRating(
                                    starCount: 5,
                                    rating: o.recommendationRate,
                                    size: 30,
                                    isReadOnly: true,
                                    color: Colors.yellow,
                                    borderColor: Colors.yellow.withOpacity(0.5),
                                    spacing: 0,
                                  ),
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                ),
                trailing: Text(details.name),
              ),
            );
          },
          childCount: store.sessions.length,
        ),
      ),
    );
  }

  String _presentDate(Timestamp date) => DateFormat.yMMMd().add_Hm().format(
        date.toDateTime().toLocal(),
      );
}
