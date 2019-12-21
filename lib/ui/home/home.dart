import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/fit/fit_store.dart';
import 'package:boilerplate/stores/post/post_store.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //store
  final _fitStore = FitStore();

  @override
  void initState() {
    super.initState();
    _fitStore.getFits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Posts'),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            SharedPreferences.getInstance().then((preference) {
              preference.setBool(Preferences.is_logged_in, false);
              Navigator.of(context).pushReplacementNamed(Routes.login);
            });
          },
          icon: Icon(
            Icons.power_settings_new,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        Observer(
          builder: (context) {
            return _fitStore.loading
                ? CustomProgressIndicatorWidget()
                : Material(child: _buildListView());
          },
        ),
        Observer(
          name: 'error',
          builder: (context) {
            return _fitStore.success
                ? Container()
                : showErrorMessage(context, _fitStore.errorStore.errorMessage);
          },
        )
      ],
    );
  }

  Widget _buildListView() {
    return _fitStore.fits != null
        ? ListView.separated(
            itemCount: _fitStore.fits.fitDailies.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return ListTile(
                leading: Icon(Icons.cloud_circle),
                title: Text(
                  '${_fitStore.fits.fitDailies[position].date.toUtc()}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text(
                  '${_fitStore.fits.fitDailies[position].points}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              );
            },
          )
        : Center(child: Text('No posts found'));
  }

  // General Methods:-----------------------------------------------------------
  showErrorMessage(BuildContext context, String message) {
    Future.delayed(Duration(milliseconds: 0), () {
      if (message != null) {
        FlushbarHelper.createError(
          message: message,
          title: 'Error',
          duration: Duration(seconds: 3),
        )..show(context);
      }
    });

    return Container();
  }
}
