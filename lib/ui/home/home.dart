import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/fit/fit_store.dart';
import 'package:boilerplate/ui/home/chart.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:firebase_admob/firebase_admob.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const String testDevice = 'YOUR_DEVICE_ID';

class _HomeScreenState extends State<HomeScreen> {
  final _fitStore = FitStore();

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    RewardedVideoAd.instance.listener = (
      RewardedVideoAdEvent event, {
      String rewardType,
      int rewardAmount,
    }) {
      print("RewardedVideoAd event $event");
      print("Reward $rewardAmount");
    };
    _fitStore.getFits();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['fit', 'health', 'enviroment', 'sport'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: false,
    nonPersonalizedAds: true,
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.fullBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 64,
                bottom: 16,
              ),
              child: Observer(
                builder: (context) {
                  return _fitStore.loading
                      ? Container()
                      : HomeChart(fitStore: _fitStore);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 64,
                bottom: 16,
              ),
              child: Text(
                'Journal',
                style: Theme.of(context).textTheme.display3,
              ),
            ),
            Expanded(
              child: Observer(
                builder: (context) {
                  return _fitStore.loading
                      ? CustomProgressIndicatorWidget()
                      : Material(child: _buildListView());
                },
              ),
            ),
            Observer(
              name: 'error',
              builder: (context) {
                return _fitStore.success
                    ? Container()
                    : showErrorMessage(
                        context, _fitStore.errorStore.errorMessage);
              },
            )
          ],
        ),
      ),
      appBar: _buildAppBar(context),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Motim Fit Points',
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

  Widget _buildListView() {
    return _fitStore.fits != null
        ? ListView.separated(
            itemCount: _fitStore.fits.fitDailies.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              var daily = _fitStore.fits.fitDailies[position];
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

class HomeChart extends StatelessWidget {
  HomeChart({
    Key key,
    @required FitStore fitStore,
  })  : _fitStore = fitStore,
        super(key: key);

  final colorFn =
      (_, __) => charts.ColorUtil.fromDartColor(Colors.white.withAlpha(128));

  final FitStore _fitStore;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: TimeSeriesBar(
        [
          new charts.Series<TimeSeriesSales, DateTime>(
            id: 'Sales',
            colorFn: colorFn,
            fillColorFn: colorFn,
            domainFn: (TimeSeriesSales sales, _) => sales.time,
            measureFn: (TimeSeriesSales sales, _) => sales.sales,
            data: _fitStore.fits?.fitDailies
                ?.map(
                  (d) => TimeSeriesSales(
                    d.date,
                    d.points.toInt(),
                  ),
                )
                ?.toList() ?? [],
          )
        ],
      ),
    );
  }
}
