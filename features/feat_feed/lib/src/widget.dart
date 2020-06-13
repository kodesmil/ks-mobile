import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.fromSize(size: Size.fromHeight(5)),
        Padding(
          padding: const EdgeInsets.only(
            left: 18,
            top: 15,
            bottom: 5,
          ),
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
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
      height: 160,
      child: Observer(
        builder: (context) {
          final articles = getArticlesFromKey(store, feedKey);
          return Padding(
            padding: EdgeInsets.only(left: 15),
            child: ListView.separated(
              itemCount: articles.length,
              separatorBuilder: (context, index) => SizedBox.fromSize(
                size: Size.fromWidth(1),
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final article = articles[index];
                return InkWell(
                  onTap: () => newPageStart(context, article),
                  child: Container(
                    width: 260,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Stack(
                        children: <Widget>[
                          KsFadeInImage(
                            image: article.coverPictureUrl,
                            size: 260,
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
            ),
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
          navigationBar: KsSmallNavigationBar(
            context: context,
            title: article.title,
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
