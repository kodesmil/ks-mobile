///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/feed.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const FeedTag$json = const {
  '1': 'FeedTag',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'key'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'feed_articles', '3': 4, '4': 3, '5': 11, '6': '.model.FeedArticle', '8': const {}, '10': 'feedArticles'},
  ],
  '7': const {},
};

const FeedAuthor$json = const {
  '1': 'FeedAuthor',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'profile_photo_url', '3': 3, '4': 1, '5': 9, '10': 'profilePhotoUrl'},
    const {'1': 'bio', '3': 4, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'feed_articles', '3': 5, '4': 3, '5': 11, '6': '.model.FeedArticle', '10': 'feedArticles'},
  ],
  '7': const {},
};

const FeedArticleDetail$json = const {
  '1': 'FeedArticleDetail',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'feed_article', '3': 3, '4': 1, '5': 11, '6': '.model.FeedArticle', '8': const {}, '10': 'feedArticle'},
  ],
  '7': const {},
};

const ReadFeedArticleDetailsRequest$json = const {
  '1': 'ReadFeedArticleDetailsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadFeedArticleDetailsResponse$json = const {
  '1': 'ReadFeedArticleDetailsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.FeedArticleDetail', '10': 'result'},
  ],
};

const FeedArticle$json = const {
  '1': 'FeedArticle',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'subtitle', '3': 4, '4': 1, '5': 9, '10': 'subtitle'},
    const {'1': 'cover_picture_url', '3': 5, '4': 1, '5': 9, '10': 'coverPictureUrl'},
    const {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'feed_tags', '3': 7, '4': 3, '5': 11, '6': '.model.FeedTag', '8': const {}, '10': 'feedTags'},
    const {'1': 'feed_author', '3': 8, '4': 1, '5': 11, '6': '.model.FeedAuthor', '8': const {}, '10': 'feedAuthor'},
  ],
  '7': const {},
};

const ListFeedArticleRequest$json = const {
  '1': 'ListFeedArticleRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListFeedArticleResponse$json = const {
  '1': 'ListFeedArticleResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.FeedArticle', '10': 'results'},
  ],
};

