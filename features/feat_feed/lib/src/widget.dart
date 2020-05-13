import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class FeedScroll extends StatefulWidget {
  final String title;
  final String feedKey;

  const FeedScroll({
    Key key,
    this.title,
    this.feedKey,
  }) : super(key: key);

  @override
  _FeedScrollState createState() => _FeedScrollState();
}

class _FeedScrollState extends State<FeedScroll> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<FeedStore>(context);
    store.fetchArticles(widget.feedKey);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KsSpace.xs(),
        ListTile(
          leading: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        DailyFeed(feedKey: widget.feedKey),
      ],
    );
  }
}

class DailyFeed extends StatelessWidget {
  final String feedKey;

  const DailyFeed({
    Key key,
    this.feedKey,
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
    final store = Provider.of<FeedStore>(context);
    return Container(
      height: 160,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Observer(
        builder: (context) => ListView.separated(
          itemCount: store.articles.length,
          separatorBuilder: (context, index) => KsSpace.xs(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final article = store.articles[index];
            return Column(
              children: <Widget>[
                Container(
                  width: 240.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: colors[index],
                  ),
                ),
                Text(article.title),
              ],
            );
          },
        ),
      ),
    );
  }
}
