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
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _companyController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();
  final _3FocusNode = FocusNode();
  final _4FocusNode = FocusNode();
  final _5FocusNode = FocusNode();
  final _6FocusNode = FocusNode();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceApplicationEditStore>(
      context,
      listen: false,
    );
    await store.setApplication(widget.application);

    _firstNameController.addListener(_firstNameListener);
    _lastNameController.addListener(_lastNameListener);
    _emailController.addListener(_emailListener);
    _phoneController.addListener(_phoneListener);
    _addressController.addListener(_addressListener);
    _companyController.addListener(_companyListener);

    _firstNameController.text = store.employment.firstName;
    _lastNameController.text = store.employment.lastName;
    _emailController.text = store.employment.email;
    _phoneController.text = store.employment.phone;
    _companyController.text = store.details.name;
    _addressController.text = store.details.address;

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _firstNameController.removeListener(_firstNameListener);
    _lastNameController.removeListener(_lastNameListener);
    _emailController.removeListener(_emailListener);
    _phoneController.removeListener(_phoneListener);
    _addressController.removeListener(_addressListener);
    _companyController.removeListener(_companyListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Join program'),
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _firstNameController,
                    focusNode: _1FocusNode,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _lastNameController,
                    focusNode: _2FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _emailController,
                    focusNode: _3FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _companyController,
                    focusNode: _4FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Company',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _addressController,
                    focusNode: _5FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _phoneController,
                    focusNode: _6FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                  ),
                  SizedBox(height: 30),
                  OutlineButton(
                    child: Text('Apply'),
                    shape: StadiumBorder(),
                    onPressed: () => ksNavigateAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ServiceApplicationFileContent(
                          widget.application,
                        ),
                      ),
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

  void _firstNameListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.firstName = _firstNameController.text;
    });
  }

  void _lastNameListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.lastName = _lastNameController.text;
    });
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

  void _emailListener() {
    final store =
        Provider.of<ServiceApplicationEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.email = _emailController.text;
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
