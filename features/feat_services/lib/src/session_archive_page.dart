import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/session_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
        ProxyProvider<ServicesClient, ServiceSessionStore>(
          update: (_, dep, __) => ServiceSessionStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceSessionArchiveContent(),
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
    final store = Provider.of<ServiceSessionStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionStore>(context);
    return Observer(
      builder: (context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final e = store.sessions[index];
            final details = e.offer.provider.details;
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
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
                    Text(
                      'To: ${_presentDate(e.finishedAt)}',
                    ),
                    Text('Paid: ${e.offer.price} ${e.offer.currency}'),
                    e.evaluation.comment?.isNotEmpty == true
                        ? Text('Comment: ${e.evaluation.comment}')
                        : Container(),
                    SmoothStarRating(
                      starCount: 5,
                      rating: e.evaluation.recommendationRate,
                      size: 30,
                      isReadOnly: true,
                      color: Colors.yellow,
                      borderColor: Colors.yellow.withOpacity(0.5),
                      spacing: 0,
                    ),
                  ],
                ),
                trailing: DetailsWidget(
                  details: details,
                ),
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
