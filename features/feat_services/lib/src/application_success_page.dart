import 'package:feat_services/src/application_edit_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceApplicationSuccessPage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationSuccessPage({
    this.application,
  });

  @override
  ServiceApplicationSuccessPageState createState() =>
      ServiceApplicationSuccessPageState();
}

class ServiceApplicationSuccessPageState
    extends State<ServiceApplicationSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceApplicationEditStore>(
          update: (_, dep, __) => ServiceApplicationEditStore(
            ErrorStore(),
            LoadingStore(),
            dep,
            widget.application,
          ),
        ),
      ],
      child: ServiceApplicationSuccessContent(application: widget.application),
    );
  }
}

class ServiceApplicationSuccessContent extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationSuccessContent({
    this.application,
  });

  @override
  _ServiceApplicationSuccessContentState createState() =>
      _ServiceApplicationSuccessContentState();
}

class _ServiceApplicationSuccessContentState
    extends State<ServiceApplicationSuccessContent> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationEditStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Success!'),
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  SvgPicture.asset(
                    'assets/images/peach/example/example-scene-3.svg',
                    height: 300,
                  ),
                  SizedBox(height: 30),
                  OutlineButton(
                    child: Text('Go to main page'),
                    shape: StadiumBorder(),
                    onPressed: () => ksNavigateNamedAndRemoveUntil(
                      context,
                      '/',
                    ),
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
