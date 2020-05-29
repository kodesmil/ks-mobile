// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedStore on _FeedStore, Store {
  Computed<List<FeedArticle>> _$dailyArticlesComputed;

  @override
  List<FeedArticle> get dailyArticles => (_$dailyArticlesComputed ??=
          Computed<List<FeedArticle>>(() => super.dailyArticles,
              name: '_FeedStore.dailyArticles'))
      .value;
  Computed<List<FeedArticle>> _$reliefArticlesComputed;

  @override
  List<FeedArticle> get reliefArticles => (_$reliefArticlesComputed ??=
          Computed<List<FeedArticle>>(() => super.reliefArticles,
              name: '_FeedStore.reliefArticles'))
      .value;
  Computed<List<FeedArticle>> _$updatesArticlesComputed;

  @override
  List<FeedArticle> get updatesArticles => (_$updatesArticlesComputed ??=
          Computed<List<FeedArticle>>(() => super.updatesArticles,
              name: '_FeedStore.updatesArticles'))
      .value;

  final _$successAtom = Atom(name: '_FeedStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_FeedStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$articlesAtom = Atom(name: '_FeedStore.articles');

  @override
  List<FeedArticle> get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(List<FeedArticle> value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  final _$fetchArticlesAsyncAction = AsyncAction('_FeedStore.fetchArticles');

  @override
  Future<dynamic> fetchArticles(String tagKey) {
    return _$fetchArticlesAsyncAction.run(() => super.fetchArticles(tagKey));
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
articles: ${articles},
dailyArticles: ${dailyArticles},
reliefArticles: ${reliefArticles},
updatesArticles: ${updatesArticles}
    ''';
  }
}
