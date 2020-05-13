import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lib_lego/lib_lego.dart';

class HelloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Hello',
              style: Theme.of(context).textTheme.headline5,
              textScaleFactor: MediaQuery.textScaleFactorOf(context),
            ),
            middle: Container(),
          ),
          SliverToBoxAdapter(
            child: Material(
              child: Column(
                children: [
                  KsSpace.xs(),
                  ListTile(
                    leading: Text(
                      'Daily Feed',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  DailyFeed(),
                  KsSpace.xs(),
                  ListTile(
                    title: Text(
                      'Quick Relief',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      'Guide for instant help with your symptoms',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  DailyFeed(),
                  KsSpace.xs(),
                  ListTile(
                    leading: Text(
                      'Daily Goals',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  DailyFeed(),
                  KsSpace.xl(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DailyFeed extends StatelessWidget {
  const DailyFeed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow,
        Colors.orange,
    ];
    return Container(
      height: 160,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ListView.separated(
        itemCount: colors.length,
        separatorBuilder: (context, index) => KsSpace.xs(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
          Container(
            width: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: colors[index],
            ),
          ),
      ),
    );
  }
}
