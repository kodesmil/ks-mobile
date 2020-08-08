import 'package:feat_services/src/application_edit_store.dart';
import 'package:feat_services/src/application_file_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceApplicationEditPage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationEditPage({
    this.application,
  });

  @override
  ServiceApplicationEditPageState createState() =>
      ServiceApplicationEditPageState();
}

class ServiceApplicationEditPageState
    extends State<ServiceApplicationEditPage> {
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
      child: ServiceApplicationEditContent(application: widget.application),
    );
  }
}

class ServiceApplicationEditContent extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationEditContent({
    this.application,
  });

  @override
  _ServiceApplicationEditContentState createState() =>
      _ServiceApplicationEditContentState();
}

class _ServiceApplicationEditContentState
    extends State<ServiceApplicationEditContent> {
  final _companyController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceApplicationEditStore>(
      context,
      listen: false,
    );

    _phoneController.addListener(_phoneListener);
    _addressController.addListener(_addressListener);
    _companyController.addListener(_companyListener);

    _phoneController.text = store.employment.phone;
    _companyController.text = store.details.name;
    _addressController.text = store.details.address;

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _phoneController.removeListener(_phoneListener);
    _addressController.removeListener(_addressListener);
    _companyController.removeListener(_companyListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationEditStore>(context);
    return Scaffold(
      appBar: KsSmallNavigationBar(title: 'Join program'),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: Text('Delete'),
            color: Colors.red,
            shape: StadiumBorder(),
            onPressed: () async {
              await store.deleteApplication();
              Navigator.pop(context, true);
            },
          ),
          OutlineButton(
            child: Text('Back'),
            shape: StadiumBorder(),
            onPressed: () async {
              Navigator.pop(context, false);
            },
          ),
          RaisedButton(
            child: Text('Apply'),
            shape: StadiumBorder(),
            onPressed: () async {
              await store.createOrUpdate();
              return ksNavigateAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => ServiceApplicationFilePage(
                    store.application,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  TextField(
                    textCapitalization: TextCapitalization.words,
                    controller: _companyController,
                    focusNode: _1FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Company',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.sentences,
                    controller: _addressController,
                    focusNode: _2FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone',
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

  void _companyListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.name = _companyController.text;
    });
  }

  void _addressListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.address = _addressController.text;
    });
  }

  void _phoneListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.phone = _phoneController.text;
    });
    store.details = store.details.copyWith((e) {
      e.phone = _phoneController.text;
    });
  }
}
