import 'package:feat_feed/feat_feed.dart';
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
                  FeedScroll(
                    title: 'Daily Feed',
                    feedKey: 'covid-19',
                  ),
                  FeedScroll(
                    title: 'Quick Relief',
                    feedKey: 'covid-19',
                  ),
                  FeedScroll(
                    title: 'Daily Updates',
                    feedKey: 'covid-19',
                  ),
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
