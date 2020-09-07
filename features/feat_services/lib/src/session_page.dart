import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/session_evaluation_page.dart';
import 'package:feat_services/src/session_stream_store.dart';
import 'package:feat_services/src/sessions_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class ServiceSessionPage extends StatefulWidget {
  final UUIDValue sessionId;

  ServiceSessionPage(this.sessionId);

  @override
  ServiceSessionPageState createState() => ServiceSessionPageState();
}

class ServiceSessionPageState extends State<ServiceSessionPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider3<ProfileStore, ServiceSessionStreamClient, ServicesClient,
            SessionStreamStore>(
          update: (_, dep, dep2, dep3, __) => SessionStreamStore(
            ErrorStore(),
            dep,
            dep2,
            dep3,
            widget.sessionId,
          ),
        ),
      ],
      child: ServiceSessionContent(),
    );
  }
}

class ServiceSessionContent extends StatefulWidget {
  @override
  _ServiceSessionContentState createState() => _ServiceSessionContentState();
}

class _ServiceSessionContentState extends State<ServiceSessionContent> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<SessionStreamStore>(context);
    store.init();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SessionStreamStore>(context);
    return Observer(
      builder: (context) {
        if (store.session == null) {
          return CircularProgressIndicator();
        }
        final offer = store.session.offer;
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
                          Navigator.of(context)
                              .pushReplacement(
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      ServiceSessionEvaluationPage(
                                    store.session,
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
      },
    );
  }
}
