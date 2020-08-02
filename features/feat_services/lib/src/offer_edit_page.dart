import 'package:feat_services/src/offer_edit_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class ServiceOfferEditPage extends StatefulWidget {
  final ServiceProvider provider;
  final ServiceOffer offer;

  ServiceOfferEditPage(this.provider, {this.offer});

  @override
  _ServiceOfferEditPageState createState() => _ServiceOfferEditPageState();
}

class _ServiceOfferEditPageState extends State<ServiceOfferEditPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<ServicesClient, ServiceOfferEditStore>(
          update: (_, dep, __) => ServiceOfferEditStore(
            ErrorStore(),
            LoadingStore(),
            dep,
          ),
        ),
      ],
      child: ServiceOfferEditContent(widget.provider, offer: widget.offer),
    );
  }
}

class ServiceOfferEditContent extends StatefulWidget {
  final ServiceProvider provider;
  final ServiceOffer offer;

  ServiceOfferEditContent(this.provider, {this.offer});

  @override
  __ServiceOfferEditContentState createState() =>
      __ServiceOfferEditContentState();
}

class __ServiceOfferEditContentState extends State<ServiceOfferEditContent> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _currencyController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();
  final _3FocusNode = FocusNode();

  @override
  void didChangeDependencies() async {
    final store = Provider.of<ServiceOfferEditStore>(
      context,
      listen: false,
    );
    await store.setApplication(widget.provider, widget.offer);
    _titleController.addListener(_titleListener);
    _descriptionController.addListener(_descriptionListener);
    _currencyController.addListener(_currencyListener);
    _priceController.addListener(_priceListener);

    _titleController.text = store.offer.title;
    _descriptionController.text = store.offer.description;
    _priceController.text = store.offer.price.toString();
    _currencyController.text = store.offer.currency;

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
    final store = Provider.of<ServiceOfferEditStore>(context);
    return CupertinoPageScaffold(
      navigationBar: KsSmallNavigationBar(title: 'Edit offer'),
      child: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    textCapitalization: TextCapitalization.sentences,
                    controller: _titleController,
                    focusNode: _1FocusNode,
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    textCapitalization: TextCapitalization.sentences,
                    controller: _descriptionController,
                    focusNode: _2FocusNode,
                    maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
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
                    textCapitalization: TextCapitalization.characters,
                    controller: _currencyController,
                    decoration: InputDecoration(
                      labelText: 'Currency',
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

  void _titleListener() {
    final store = Provider.of<ServiceOfferEditStore>(context, listen: false);
    store.offer = store.offer.copyWith((e) {
      e.title = _titleController.text;
    });
  }

  void _descriptionListener() {
    final store = Provider.of<ServiceOfferEditStore>(context, listen: false);
    store.offer = store.offer.copyWith((e) {
      e.description = _descriptionController.text;
    });
  }

  void _priceListener() {
    final store = Provider.of<ServiceOfferEditStore>(context, listen: false);
    store.offer = store.offer.copyWith((e) {
      e.price = double.parse(_priceController.text);
    });
  }

  void _currencyListener() {
    final store = Provider.of<ServiceOfferEditStore>(context, listen: false);
    store.offer = store.offer.copyWith((e) {
      e.currency = _currencyController.text;
    });
  }
}
