import 'package:feat_services/feat_services.dart';
import 'package:feat_services/src/session_archive_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'session_page.dart';

class ServiceSessionArchivePage extends StatefulWidget {
  ServiceSessionArchivePage();

  @override
  ServiceSessionArchivePageState createState() =>
      ServiceSessionArchivePageState();
}

class ServiceSessionArchivePageState extends State<ServiceSessionArchivePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceSessionArchiveStore>(
          update: (_, dep, __) => ServiceSessionArchiveStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: Consumer<SessionsStateNotifier>(
        builder: (context, state, child) => ServiceSessionArchiveContent(),
      ),
    );
  }
}

class ServiceSessionArchiveContent extends StatefulWidget {
  ServiceSessionArchiveContent();

  @override
  _ServiceSessionArchiveContentState createState() =>
      _ServiceSessionArchiveContentState();
}

class _ServiceSessionArchiveContentState
    extends State<ServiceSessionArchiveContent> {
  @override
  void didChangeDependencies() async {
    final store =
        Provider.of<ServiceSessionArchiveStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionArchiveStore>(context);
    return Observer(
      builder: (context) => SliverSafeArea(
        sliver: SliverPadding(
          padding: const EdgeInsets.only(top: 15),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final e = store.sessions[index];
                final details = e.offer.provider.details;
                print(e.id);
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
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
                                        color: Colors.yellow.shade900,
                                        borderColor: Colors.yellow.shade900.withOpacity(0.5),
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
        ),
      ),
    );
  }

  String _presentDate(Timestamp date) => DateFormat.yMMMd().add_Hm().format(
        date.toDateTime().toLocal(),
      );
}
