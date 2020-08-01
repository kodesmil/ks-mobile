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
    final contact = session.offer.provider.details.contact;
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Session'),
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
                SizedBox(height: 10),
                OutlineButton(
                  child: Text('Finish session'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (context) => ServiceSessionEvaluationPage(
                          session,
                        ),
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

class ServiceSessionEvaluationPage extends StatefulWidget {
  final ServiceSession session;

  ServiceSessionEvaluationPage(this.session);

  @override
  _ServiceSessionEvaluationPageState createState() =>
      _ServiceSessionEvaluationPageState();
}

class _ServiceSessionEvaluationPageState
    extends State<ServiceSessionEvaluationPage> {
  final _commentController = TextEditingController();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceSessionEvaluationStore>(context);
    store.evaluation =
        widget.session.evaluation ?? ServiceProviderSessionEvaluation();
    _commentController.addListener(_commentListener);
    _commentController.text = store.evaluation.comment;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _commentController.removeListener(_commentListener);
    super.dispose();
  }

  void _commentListener() {
    final store = Provider.of<ServiceSessionEvaluationStore>(
      context,
      listen: false,
    );
    store.evaluation = store.evaluation.copyWith((e) {
      e.comment = _commentController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceSessionEvaluationStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Evaluation'),
      child: Material(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            textCapitalization: TextCapitalization.none,
                            controller: _commentController,
                            decoration: InputDecoration(
                              labelText: 'Comment',
                            ),
                          ),
                          SizedBox(height: 30),
                          OutlineButton(
                            child: Text('Done'),
                            shape: StadiumBorder(),
                            onPressed: () async {
                              await store.create(widget.session);
                              return ksNavigateNamedAndRemoveUntil(
                                context,
                                '/',
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListTile(
                      title: Text(
                        e.offer.description,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From: ${DateFormat.yMMMd().add_Hm().format(e.scheduledAt.toDateTime())}',
                          ),
                          Text(
                            'To: ${DateFormat.yMMMd().add_Hm().format(e.finishedAt.toDateTime())}',
                          ),
                          Text('Paid: ${e.offer.price} ${e.offer.currency}'),
                          e.evaluation.comment?.isNotEmpty == true
                              ? Text('Comment: ${e.evaluation.comment}')
                              : Container(),
                        ],
                      ),
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
