import 'package:boilerplate/di/components/app_component.dart';
import 'package:boilerplate/stores/fit/fit_store.dart';
import 'package:boilerplate/ui/home/chart.dart';
import 'package:lib_lego/widgets/progress_indicator_widget.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:firebase_admob/firebase_admob.dart';

class HomeScreen extends StatefulWidget {
  FitStore fitStore;

  HomeScreen(this.fitStore);

  @override
  _HomeScreenState createState() => _HomeScreenState(fitStore);
}

const String testDevice = 'YOUR_DEVICE_ID';

class _HomeScreenState extends State<HomeScreen> {
  FitStore _fitStore;

  _HomeScreenState(this._fitStore);

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
    return Column(
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
          child: Text(
            'Journal',
            style: Theme.of(context).textTheme.display2,
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
          builder: (context) {
            return _fitStore.success
                ? Container()
                : showErrorMessage(
                    context,
                    _fitStore.errorStore.errorMessage,
                  );
          },
        )
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        '',
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () async => await authLocalModule
              .provideSharedPreferenceHelper()
              .removeAuthToken(),
          icon: Icon(
            Icons.person,
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
                  style: Theme.of(context).textTheme.body1,
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

  final FitStore _fitStore;

  @override
  Widget build(BuildContext context) {
    final colorFn = (_, __) => charts.ColorUtil.fromDartColor(
          Theme.of(context).textTheme.body1.color.withAlpha(128),
        );
    return Container(
      height: 100,
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
                    ?.toList() ??
                [],
          )
        ],
      ),
    );
  }
}

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  final _fitStore = FitStore();

  @override
  void initState() {
    super.initState();
    _fitStore.getFits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                  child: Observer(
                    builder: (context) {
                      return _fitStore.loading
                          ? Container()
                          : Center(
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            _fitStore?.fits?.points
                                                    ?.floor()
                                                    ?.toString() ??
                                                '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .display2,
                                          ),
                                          Text(
                                            'points this month',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      child: CircularProgressIndicator(
                                        value: _fitStore?.fits?.points ??
                                            1.0 / 10000.0,
                                        strokeWidth: 8,
                                        valueColor: AlwaysStoppedAnimation(
                                            Theme.of(context).primaryColor),
                                        backgroundColor: Theme.of(context)
                                            .primaryColor
                                            .withAlpha(128),
                                        semanticsValue: '120',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Observer(
                    builder: (context) {
                      return _fitStore.loading
                          ? Container()
                          : HomeChart(fitStore: _fitStore);
                    },
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: HomeScreen(_fitStore),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
