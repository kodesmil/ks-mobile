import 'dart:async';
import 'package:lib_di/lib_di.dart';
import 'package:lib_services/lib_services.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  final ErrorStore errorStore;

  FeedArticlesClient client;

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

  @computed
  List<FeedArticle> get dailyArticles => articles
      .where((element) => element.feedTags.any((tag) => tag.key == 'daily'))
      .toList();

  @computed
  List<FeedArticle> get reliefArticles => articles
      .where((element) => element.feedTags.any((tag) => tag.key == 'relief'))
      .toList();

  @computed
  List<FeedArticle> get updatesArticles => articles
      .where((element) => element.feedTags.any((tag) => tag.key == 'updates'))
      .toList();

  @action
  Future fetchArticles(String tagKey) async {
    final request = ListFeedArticleRequest();
    final response = await client.list(request);
    articles = response.results;
  }
}
