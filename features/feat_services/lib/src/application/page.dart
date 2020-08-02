import 'package:feat_services/feat_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_services/src/generated/github.com/kodesmil/ks-model/service.pb.dart';
import 'package:provider/provider.dart';

class ServiceApplicationPage extends StatefulWidget {
  final Widget navigationBar;

  const ServiceApplicationPage({Key key, this.navigationBar}) : super(key: key);

  @override
  _ServiceApplicationPageState createState() => _ServiceApplicationPageState();
}

class _ServiceApplicationPageState extends State<ServiceApplicationPage> {
  @override
  void didChangeDependencies() async {
    final store =
        Provider.of<ServiceApplicationListStore>(context, listen: false);
    await store.fetch();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationListStore>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
            CupertinoPageRoute(
              builder: (context) => ServiceApplicationEditPage(),
            ),
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          widget.navigationBar,
          Observer(
            builder: (context) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final e = store.subjects[index];
                  final details = e.provider.details;
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Card(
                      shape: BeveledRectangleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                details.name,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              subtitle: Text(
                                details.address,
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          ServiceApplicationEditPage(
                                              application: e),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            ListTile(
                              title: Text(
                                'Offers',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ),
                            Column(
                              children: e.provider.offers
                                  .map(
                                    (o) => ListTile(
                                      title: Text(o.title),
                                      subtitle: Text(
                                        o.description,
                                        maxLines: 2,
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                      trailing: Text(
                                        '${o.price} ${o.currency}',
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            SizedBox(height: 20),
                            ListTile(
                              leading: Text(
                                'Contact',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: store.subjects.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceApplicationEditPage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationEditPage({
    this.application,
  });

  @override
  _ServiceApplicationEditPageState createState() =>
      _ServiceApplicationEditPageState();
}

class _ServiceApplicationEditPageState
    extends State<ServiceApplicationEditPage> {
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
    final store = Provider.of<ServiceApplicationJoinStore>(
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
                        builder: (context) => ServiceApplicationFilePage(
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
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.firstName = _firstNameController.text;
    });
  }

  void _lastNameListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.lastName = _lastNameController.text;
    });
  }

  void _companyListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.name = _companyController.text;
    });
  }

  void _addressListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.address = _addressController.text;
    });
  }

  void _emailListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.email = _emailController.text;
    });
  }

  void _phoneListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.phone = _phoneController.text;
    });
    store.details = store.details.copyWith((e) {
      e.phone = _phoneController.text;
    });
  }
}

class ServiceApplicationEditPage extends StatefulWidget {
  final ServiceApplication application;

  ServiceApplicationEditPage({
    this.application,
  });

  @override
  _ServiceApplicationEditPageState createState() =>
      _ServiceApplicationEditPageState();
}

class _ServiceOfferEditPageState extends State<ServiceApplicationEditPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _currencyController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();
  final _3FocusNode = FocusNode();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceApplicationJoinStore>(
      context,
      listen: false,
    );
    await store.setApplication(widget.application);
    _titleController.addListener(_titleListener);
    _descriptionController.addListener(_descriptionListener);
    _currencyController.addListener(_currencyListener);
    _priceController.addListener(_priceListener);

    _titleController.text = store.employment.firstName;
    _descriptionController.text = store.employment.lastName;
    _priceController.text = store.details.name;
    _currencyController.text = store.details.address;

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _titleController.removeListener(_titleListener);
    _descriptionController.removeListener(_descriptionListener);
    _currencyController.removeListener(_currencyListener);
    _priceController.removeListener(_priceListener);
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
                    controller: _titleController,
                    focusNode: _1FocusNode,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _descriptionController,
                    focusNode: _2FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _priceController,
                    focusNode: _3FocusNode,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Price',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _priceController,
                    decoration: InputDecoration(
                      labelText: 'Currency',
                    ),
                  ),
                  SizedBox(height: 30),
                  OutlineButton(
                    child: Text('Save'),
                    shape: StadiumBorder(),
                    onPressed: () {
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

  void _titleListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.firstName = _titleController.text;
    });
  }

  void _descriptionListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.lastName = _descriptionController.text;
    });
  }

  void _priceListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.name = _priceController.text;
    });
  }

  void _currencyListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.details = store.details.copyWith((e) {
      e.address = _currencyController.text;
    });
  }

  void _emailListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.email = _emailController.text;
    });
  }

  void _phoneListener() {
    final store =
        Provider.of<ServiceApplicationJoinStore>(context, listen: false);
    store.employment = store.employment.copyWith((e) {
      e.phone = _phoneController.text;
    });
    store.details = store.details.copyWith((e) {
      e.phone = _phoneController.text;
    });
  }
}

class ServiceApplicationSuccessPage extends StatefulWidget {
  @override
  _ServiceApplicationSuccessPageState createState() =>
      _ServiceApplicationSuccessPageState();
}

class _ServiceApplicationSuccessPageState
    extends State<ServiceApplicationSuccessPage> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationJoinStore>(context);
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
    final store = Provider.of<ServiceApplicationJoinStore>(context);
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
