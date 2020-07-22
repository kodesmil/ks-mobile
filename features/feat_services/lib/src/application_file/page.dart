import 'package:feat_services/feat_services.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:provider/provider.dart';

class ServiceApplicationFilePage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationFilePage(this.application);

  @override
  _ServiceApplicationFilePageState createState() =>
      _ServiceApplicationFilePageState();
}

class _ServiceApplicationFilePageState
    extends State<ServiceApplicationFilePage> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationFileStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          KsNavigationBar(title: 'ID confirmation', withBackgroundImage: false),
          SliverToBoxAdapter(
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      StorageFileSelectWidget(
                        child: Text('Select file'),
                        onFileUploaded: (url) {
                          store.subject.url = url;
                        },
                      ),
                      SizedBox(height: 30),
                      OutlineButton(
                        child: Text('Send application file'),
                        shape: StadiumBorder(),
                        onPressed: () => store.create(),
                      ),
                      Observer(
                        builder: (context) => store.loadingStore.success
                            ? ksNavigateAndRemoveUntil(context, CupertinoPageRoute(builder: (context) {}))
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
        ],
      ),
    );
  }
}
