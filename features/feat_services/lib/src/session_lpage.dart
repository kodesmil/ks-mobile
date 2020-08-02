import 'package:feat_ion/feat_ion.dart';
import 'package:feat_services/src/offer_page.dart';
import 'package:feat_services/src/session_evaluation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
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
      providers: [],
      child: ServiceSessionContent(widget.session),
    );
  }
}

class ServiceSessionContent extends StatelessWidget {
  final ServiceSession session;

  ServiceSessionContent(this.session);

  @override
  Widget build(BuildContext context) {
    final offer = session.offer;
    final details = offer.provider.details;
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Session'),
      child: Material(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
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
                  child: Text('Finish session'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (context) => ServiceSessionEvaluationContent(
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
