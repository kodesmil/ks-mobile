import 'dart:async';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  final ErrorStore errorStore;

  FeedsClient client;

  _FeedStore(
    this.errorStore,
    this.client,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  List<FeedArticle> articles = [];

  @action
  Future fetchArticles(String tagKey) async {
    final request = ListFeedArticleRequest();
    final response = await client.listArticles(request);
    articles = response.results;
  }
}
