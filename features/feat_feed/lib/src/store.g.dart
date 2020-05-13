// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedStore on _FeedStore, Store {
  final _$successAtom = Atom(name: '_FeedStore.success');

  @override
  bool get success {
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_FeedStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$articlesAtom = Atom(name: '_FeedStore.articles');

  @override
  List<FeedArticle> get articles {
    _$articlesAtom.context.enforceReadPolicy(_$articlesAtom);
    _$articlesAtom.reportObserved();
    return super.articles;
  }

  @override
  set articles(List<FeedArticle> value) {
    _$articlesAtom.context.conditionallyRunInAction(() {
      super.articles = value;
      _$articlesAtom.reportChanged();
    }, _$articlesAtom, name: '${_$articlesAtom.name}_set');
  }

  final _$fetchArticlesAsyncAction = AsyncAction('fetchArticles');

  @override
  Future<dynamic> fetchArticles(String tagKey) {
    return _$fetchArticlesAsyncAction.run(() => super.fetchArticles(tagKey));
  }
}
