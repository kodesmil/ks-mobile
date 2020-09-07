import 'package:feat_auth/feat_auth.dart';
import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/session_evaluation_page.dart';
import 'package:feat_services/src/session_stream_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
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
        ProxyProvider2<ProfileStore, ServicesClient, SessionStreamStore>(
          update: (_, dep, dep2, __) => SessionStreamStore(
            ErrorStore(),
            dep,
            dep2,
            widget.sessionId,
          ),
        ),
      ],
      child: ServiceSessionContent(widget.sessionId),
    );
  }
}

class ServiceSessionContent extends StatefulWidget {
  final UUIDValue sessionId;

  ServiceSessionContent(this.sessionId);

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

  Future handleJoin() async {
    final helper = Provider.of<IonHelper>(context, listen: false);
    await helper.connect('ion.qa.api.kodesmil.com', (result) {
      if (result) {
        Navigator.of(context).pushReplacementNamed(
          '/meetings/${widget.sessionId}',
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SessionStreamStore>(context);
    return Observer(
      builder: (context) {
        if (store.session == null) {
          return KsProgressIndicator();
        }
        final offer = store.session.offer;
        final details = offer.provider.details;
        return Scaffold(
          appBar: KsSmallNavigationBar(title: 'Session'),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton.extended(
            label: Text(
              'Join',
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            shape: StadiumBorder(),
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () async {
              await handleJoin();
            },
          ),
          persistentFooterButtons: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.cancel_outlined),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(
                    builder: (context) => ServiceSessionEvaluationPage(
                      store.session,
                    ),
                  ),
                );
              },
            ),
          ],
          body: Material(
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      DetailsWidget(
                        details: details,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 200,
                        width: 200,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/peach/example/example-scene-3.png',
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
