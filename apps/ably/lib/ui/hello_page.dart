import 'package:feat_feed/feat_feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/lib_lego.dart';

class HelloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          FeedScroll(
            title: 'Daily Feed',
            feedKey: 'daily',
          ),
          FeedScroll(
            title: 'Quick Relief',
            feedKey: 'relief',
          ),
          FeedScroll(
            title: 'Daily Updates',
            feedKey: 'updates',
          ),
          KsSpace.xl(),
        ],
      ),
    );
  }
}

class SliverPage extends StatelessWidget {
  final Widget child;

  const SliverPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: child,
    );
  }
}
