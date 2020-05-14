import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:lib_services/lib_services.dart';
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
    final store = Provider.of<FeedStore>(context);
    return Container(
      height: 200,
      padding: EdgeInsets.only(left: 10),
      child: Observer(
        builder: (context) {
          final articles = getArticlesFromKey(store, feedKey);
          return ListView.separated(
            itemCount: articles.length,
            separatorBuilder: (context, index) => KsSpace.xxs(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final article = articles[index];
              return InkWell(
                onTap: () => newPageStart(context, article),
                child: Container(
                  width: 300,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          article.coverPictureUrl,
                          fit: BoxFit.cover,
                          width: 300,
                        ),
                        Flex(
                          direction: Axis.vertical,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        ListTile(
                          title: Text(
                            article.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.white, shadows: [
                              BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 5,
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<FeedArticle> getArticlesFromKey(FeedStore store, String key) {
    switch (key) {
      case 'daily':
        return store.dailyArticles;
      case 'relief':
        return store.reliefArticles;
      case 'updates':
        return store.updatesArticles;
    }
    return [];
  }
}

Future newPageStart(BuildContext context, FeedArticle article) {
  return Navigator.of(context).push(
    CupertinoPageRoute<void>(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(article.title),
          ),
          child: SafeArea(
            child: Markdown(
              data: article.content,
            ),
          ),
        );
      },
    ),
  );
}
