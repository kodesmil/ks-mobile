import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/session_evaluation_page.dart';
import 'package:feat_services/src/session_stream_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceSessionPage extends StatefulWidget {
  final ServiceSession session;

  ServiceSessionPage(this.session);

  @override
  ServiceSessionPageState createState() => ServiceSessionPageState();
}

class ServiceSessionPageState extends State<ServiceSessionPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider2<ProfileStore, ServiceSessionStreamClient,
            SessionStreamStore>(
          update: (_, dep, dep2, __) => SessionStreamStore(
            ErrorStore(),
            dep,
            dep2,
            widget.session,
          ),
        ),
      ],
      child: ServiceSessionContent(widget.session),
    );
  }
}

class ServiceSessionContent extends StatefulWidget {
  final ServiceSession session;

  ServiceSessionContent(this.session);

  @override
  _ServiceSessionContentState createState() => _ServiceSessionContentState();
}

class _ServiceSessionContentState extends State<ServiceSessionContent> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<SessionStreamStore>(context);
    store.connect();
    store.joinSession();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SessionStreamStore>(context);
    final offer = widget.session.offer;
    final details = offer.provider.details;
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Session'),
      child: Material(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  DetailsWidget(
                    details: details,
                  ),
                  SizedBox(height: 40),
                  Text(
                    offer.description,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 40),
                  ConnectToVideoButton(),
                  SizedBox(height: 10),
                  OutlineButton(
                    child: Text('Join'),
                    onPressed: () {
                      store.joinSession();
                    },
                  ),
                  SizedBox(height: 10),
                  OutlineButton(
                    child: Text('Finish session'),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(
                          builder: (context) => ServiceSessionEvaluationPage(
                            widget.session,
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
      ),
    );
  }
}
