import 'package:feat_services/src/application_edit_store.dart';
import 'package:feat_services/src/application_success_page.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceApplicationFilePage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationFilePage(this.application);

  @override
  ServiceApplicationFilePageState createState() =>
      ServiceApplicationFilePageState();
}

class ServiceApplicationFilePageState
    extends State<ServiceApplicationFilePage> {
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
      child: ServiceApplicationFileContent(widget.application),
    );
  }
}

class ServiceApplicationFileContent extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationFileContent(this.application);

  @override
  _ServiceApplicationFileContentState createState() =>
      _ServiceApplicationFileContentState();
}

class _ServiceApplicationFileContentState
    extends State<ServiceApplicationFileContent> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationEditStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'ID confirmation'),
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StorageFileSelectWidget(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Image.asset(
                          'assets/images/peach/characters/woman-sitting-texting.png',
                          height: 300,
                        ),
                        SizedBox(height: 30),
                        Text('Select file'),
                      ],
                    ),
                    onFileUploaded: (url) {
                      store.addApplicationFile(url);
                    },
                  ),
                  SizedBox(height: 30),
                  OutlineButton(
                    child: Text('Send application file'),
                    shape: StadiumBorder(),
                    onPressed: () => store.createOrUpdate(),
                  ),
                  Observer(
                    builder: (context) => store.loadingStore.success
                        ? ksNavigateAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                                  ServiceApplicationSuccessPage(),
                            ),
                          )
                        : ksShowErrorMessage(
                            context,
                            store.errorStore.errorMessage,
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
