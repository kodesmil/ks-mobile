import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/fit/fit_store.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
      body: _buildBody(),
      appBar: _buildAppBar(context),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Motim Fit Points',
        style: TextStyle(color: Colors.white),
      ),
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
            color: Colors.white,
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
            itemCount: _fitStore.fits.fitDailies.length + 1,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              if (position == 0) {
                return Observer(
                  builder: (context) {
                    return _fitStore.loading
                        ? Container()
                        : SizedBox(
                            height: 200,
                            child: TimeSeriesBar(
                              [
                                new charts.Series<TimeSeriesSales, DateTime>(
                                  id: 'Sales',
                                  colorFn: (_, __) =>
                                      charts.MaterialPalette.blue.shadeDefault,
                                  domainFn: (TimeSeriesSales sales, _) =>
                                      sales.time,
                                  measureFn: (TimeSeriesSales sales, _) =>
                                      sales.sales,
                                  data: _fitStore.fits.fitDailies
                                      .map(
                                        (d) => TimeSeriesSales(
                                          d.date,
                                          d.points.toInt(),
                                        ),
                                      )
                                      .toList(),
                                )
                              ],
                            ),
                          );
                  },
                );
              }
              var daily = _fitStore.fits.fitDailies[position - 1];
              return ListTile(
                title: Text(
                  DateFormat.yMMMMd().format(
                    daily.date,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text(
                  '${daily?.points?.toInt() ?? ''} points, '
                  '${daily.steps} steps',
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

_getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).accentColor,
            Theme.of(context).backgroundColor,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Text(
            'Gradient AppBar',
            style: Theme.of(context).textTheme.title,
          ),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
    ),
  );
}

_getNavBar(context) {
  return Stack(
    children: <Widget>[
      Positioned(
        bottom: 0,
        child: ClipPath(
          clipper: NavBarClipper(),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                ])),
          ),
        ),
      ),
      Positioned(
        bottom: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNavItem(context, Icons.bubble_chart, false),
            SizedBox(width: 1),
            _buildNavItem(context, Icons.landscape, true),
            SizedBox(width: 1),
            _buildNavItem(context, Icons.brightness_3, false),
          ],
        ),
      ),
      Positioned(
        bottom: 10,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Focus', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(
              width: 1,
            ),
            Text('Relax', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(
              width: 1,
            ),
            Text('Sleep', style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      )
    ],
  );
}

_buildNavItem(BuildContext context, IconData icon, bool active) {
  return CircleAvatar(
    radius: 30,
    backgroundColor: Theme.of(context).primaryColor,
    child: CircleAvatar(
      radius: 25,
      backgroundColor:
          active ? Colors.white.withOpacity(0.9) : Colors.transparent,
      child: Icon(
        icon,
        color: active ? Colors.black : Colors.white.withOpacity(0.9),
      ),
    ),
  );
}

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TimeSeriesBar extends StatelessWidget {
  final List<charts.Series<TimeSeriesSales, DateTime>> seriesList;
  final bool animate;

  TimeSeriesBar(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      defaultRenderer: new charts.BarRendererConfig<DateTime>(),
      defaultInteractions: false,
    );
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
