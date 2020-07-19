import 'package:feat_services/feat_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

class ServiceApplicationPage extends StatefulWidget {
  @override
  _ServiceApplicationPageState createState() => _ServiceApplicationPageState();
}

class _ServiceApplicationPageState extends State<ServiceApplicationPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _1FocusNode = FocusNode();
  final _2FocusNode = FocusNode();
  final _3FocusNode = FocusNode();
  final _4FocusNode = FocusNode();

  @override
  void didChangeDependencies() {
    final store = Provider.of<ServiceApplicationStore>(context, listen: false);
    store.fetch();
    _firstNameController.addListener(_firstNameListener);
    _lastNameController.addListener(_lastNameListener);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ServiceApplicationStore>(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Join our program',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _firstNameController,
                    focusNode: _1FocusNode,
                  ),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    controller: _lastNameController,
                    focusNode: _2FocusNode,
                  ),
                  SizedBox(height: 20),
                  OutlineButton(
                    child: Text('Send application'),
                    shape: StadiumBorder(),
                    onPressed: () => store.create(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _firstNameListener() {
    final store = Provider.of<ServiceApplicationStore>(context, listen: false);
    store.subject.provider.serviceInPerson.firstName =
        _firstNameController.text;
  }

  void _lastNameListener() {
    final store = Provider.of<ServiceApplicationStore>(context, listen: false);
    store.subject.provider.serviceInPerson.firstName =
        _firstNameController.text;
  }
}
