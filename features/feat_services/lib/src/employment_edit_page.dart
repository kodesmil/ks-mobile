import 'package:feat_services/src/employment_edit_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceEmploymentEditPage extends StatefulWidget {
  final ServiceProvider provider;
  final ServiceEmployment employment;

  ServiceEmploymentEditPage(this.provider, {this.employment});

  @override
  ServiceEmploymentEditPageState createState() =>
      ServiceEmploymentEditPageState();
}

class ServiceEmploymentEditPageState extends State<ServiceEmploymentEditPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceEmploymentEditStore>(
          update: (_, dep, __) => ServiceEmploymentEditStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceEmploymentEditContent(
        widget.provider,
        employment: widget.employment,
      ),
    );
  }
}

class ServiceEmploymentEditContent extends StatefulWidget {
  final ServiceProvider provider;
  final ServiceEmployment employment;

  ServiceEmploymentEditContent(this.provider, {this.employment});

  @override
  __ServiceEmploymentEditContentState createState() =>
      __ServiceEmploymentEditContentState();
}

class __ServiceEmploymentEditContentState
    extends State<ServiceEmploymentEditContent> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();
  final _3FocusNode = FocusNode();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceEmploymentEditStore>(
      context,
      listen: false,
    );
    await store.setApplication(widget.provider, widget.employment);
    _firstNameController.addListener(_firstNameListener);
    _lastNameController.addListener(_lastNameListener);
    _emailController.addListener(_emailListener);
    _phoneController.addListener(_phoneListener);

    _firstNameController.text = store.employment.firstName;
    _lastNameController.text = store.employment.lastName;
    _phoneController.text = store.employment.phone;
    _emailController.text = store.employment.email;

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _firstNameController.removeListener(_firstNameListener);
    _lastNameController.removeListener(_lastNameListener);
    _emailController.removeListener(_emailListener);
    _phoneController.removeListener(_phoneListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceEmploymentEditStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Edit contact'),
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    textCapitalization: TextCapitalization.words,
                    controller: _firstNameController,
                    focusNode: _1FocusNode,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.words,
                    controller: _lastNameController,
                    focusNode: _2FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: _phoneController,
                    focusNode: _3FocusNode,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 30),
                  OutlineButton(
                    child: Text('Save'),
                    shape: StadiumBorder(),
                    onPressed: () async {
                      await store.createOrUpdate();
                      Navigator.of(context).pop();
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

  void _firstNameListener() {
    final store =
        Provider.of<ServiceEmploymentEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.firstName = _firstNameController.text;
    });
  }

  void _lastNameListener() {
    final store =
        Provider.of<ServiceEmploymentEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.lastName = _lastNameController.text;
    });
  }

  void _phoneListener() {
    final store =
        Provider.of<ServiceEmploymentEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.phone = _phoneController.text;
    });
  }

  void _emailListener() {
    final store =
        Provider.of<ServiceEmploymentEditStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.email = _emailController.text;
    });
  }
}
