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
          KsNavigationBar(title: 'Hi!'),
          SliverToBoxAdapter(
            child: Material(
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
            ),
          ),
        ],
      ),
    );
  }
}
