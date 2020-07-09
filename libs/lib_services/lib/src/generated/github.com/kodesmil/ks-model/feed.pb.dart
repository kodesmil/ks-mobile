///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/feed.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../infobloxopen/atlas-app-toolkit/rpc/resource/resource.pb.dart' as $8;
import '../../../google/protobuf/timestamp.pb.dart' as $10;
import '../../infobloxopen/atlas-app-toolkit/query/collection_operators.pb.dart' as $9;

class FeedTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedTag', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOS(2, 'key')
    ..aOS(3, 'name')
    ..pc<FeedArticle>(4, 'feedArticles', $pb.PbFieldType.PM, subBuilder: FeedArticle.create)
    ..hasRequiredFields = false
  ;

  FeedTag._() : super();
  factory FeedTag() => create();
  factory FeedTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FeedTag clone() => FeedTag()..mergeFromMessage(this);
  FeedTag copyWith(void Function(FeedTag) updates) => super.copyWith((message) => updates(message as FeedTag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedTag create() => FeedTag._();
  FeedTag createEmptyInstance() => create();
  static $pb.PbList<FeedTag> createRepeated() => $pb.PbList<FeedTag>();
  @$core.pragma('dart2js:noInline')
  static FeedTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedTag>(create);
  static FeedTag _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<FeedArticle> get feedArticles => $_getList(3);
}

class FeedAuthor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedAuthor', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOS(2, 'name')
    ..aOS(3, 'profilePhotoUrl')
    ..aOS(4, 'bio')
    ..pc<FeedArticle>(5, 'feedArticles', $pb.PbFieldType.PM, subBuilder: FeedArticle.create)
    ..hasRequiredFields = false
  ;

  FeedAuthor._() : super();
  factory FeedAuthor() => create();
  factory FeedAuthor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedAuthor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FeedAuthor clone() => FeedAuthor()..mergeFromMessage(this);
  FeedAuthor copyWith(void Function(FeedAuthor) updates) => super.copyWith((message) => updates(message as FeedAuthor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedAuthor create() => FeedAuthor._();
  FeedAuthor createEmptyInstance() => create();
  static $pb.PbList<FeedAuthor> createRepeated() => $pb.PbList<FeedAuthor>();
  @$core.pragma('dart2js:noInline')
  static FeedAuthor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedAuthor>(create);
  static FeedAuthor _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get profilePhotoUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePhotoUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePhotoUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePhotoUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bio => $_getSZ(3);
  @$pb.TagNumber(4)
  set bio($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBio() => $_has(3);
  @$pb.TagNumber(4)
  void clearBio() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<FeedArticle> get feedArticles => $_getList(4);
}

class FeedArticleDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedArticleDetail', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOS(2, 'content')
    ..aOM<FeedArticle>(3, 'feedArticle', subBuilder: FeedArticle.create)
    ..hasRequiredFields = false
  ;

  FeedArticleDetail._() : super();
  factory FeedArticleDetail() => create();
  factory FeedArticleDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedArticleDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FeedArticleDetail clone() => FeedArticleDetail()..mergeFromMessage(this);
  FeedArticleDetail copyWith(void Function(FeedArticleDetail) updates) => super.copyWith((message) => updates(message as FeedArticleDetail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedArticleDetail create() => FeedArticleDetail._();
  FeedArticleDetail createEmptyInstance() => create();
  static $pb.PbList<FeedArticleDetail> createRepeated() => $pb.PbList<FeedArticleDetail>();
  @$core.pragma('dart2js:noInline')
  static FeedArticleDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedArticleDetail>(create);
  static FeedArticleDetail _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  FeedArticle get feedArticle => $_getN(2);
  @$pb.TagNumber(3)
  set feedArticle(FeedArticle v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeedArticle() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeedArticle() => clearField(3);
  @$pb.TagNumber(3)
  FeedArticle ensureFeedArticle() => $_ensure(2);
}

class ReadFeedArticleDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadFeedArticleDetailsRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..hasRequiredFields = false
  ;

  ReadFeedArticleDetailsRequest._() : super();
  factory ReadFeedArticleDetailsRequest() => create();
  factory ReadFeedArticleDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadFeedArticleDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadFeedArticleDetailsRequest clone() => ReadFeedArticleDetailsRequest()..mergeFromMessage(this);
  ReadFeedArticleDetailsRequest copyWith(void Function(ReadFeedArticleDetailsRequest) updates) => super.copyWith((message) => updates(message as ReadFeedArticleDetailsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsRequest create() => ReadFeedArticleDetailsRequest._();
  ReadFeedArticleDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ReadFeedArticleDetailsRequest> createRepeated() => $pb.PbList<ReadFeedArticleDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadFeedArticleDetailsRequest>(create);
  static ReadFeedArticleDetailsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);
}

class ReadFeedArticleDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadFeedArticleDetailsResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<FeedArticleDetail>(1, 'result', subBuilder: FeedArticleDetail.create)
    ..hasRequiredFields = false
  ;

  ReadFeedArticleDetailsResponse._() : super();
  factory ReadFeedArticleDetailsResponse() => create();
  factory ReadFeedArticleDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadFeedArticleDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadFeedArticleDetailsResponse clone() => ReadFeedArticleDetailsResponse()..mergeFromMessage(this);
  ReadFeedArticleDetailsResponse copyWith(void Function(ReadFeedArticleDetailsResponse) updates) => super.copyWith((message) => updates(message as ReadFeedArticleDetailsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsResponse create() => ReadFeedArticleDetailsResponse._();
  ReadFeedArticleDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ReadFeedArticleDetailsResponse> createRepeated() => $pb.PbList<ReadFeedArticleDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadFeedArticleDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadFeedArticleDetailsResponse>(create);
  static ReadFeedArticleDetailsResponse _defaultInstance;

  @$pb.TagNumber(1)
  FeedArticleDetail get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(FeedArticleDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  FeedArticleDetail ensureResult() => $_ensure(0);
}

class FeedArticle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeedArticle', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$8.Identifier>(1, 'id', subBuilder: $8.Identifier.create)
    ..aOM<$10.Timestamp>(2, 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOS(3, 'title')
    ..aOS(4, 'subtitle')
    ..aOS(5, 'coverPictureUrl')
    ..aOS(6, 'content')
    ..pc<FeedTag>(7, 'feedTags', $pb.PbFieldType.PM, subBuilder: FeedTag.create)
    ..aOM<FeedAuthor>(8, 'feedAuthor', subBuilder: FeedAuthor.create)
    ..hasRequiredFields = false
  ;

  FeedArticle._() : super();
  factory FeedArticle() => create();
  factory FeedArticle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedArticle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FeedArticle clone() => FeedArticle()..mergeFromMessage(this);
  FeedArticle copyWith(void Function(FeedArticle) updates) => super.copyWith((message) => updates(message as FeedArticle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedArticle create() => FeedArticle._();
  FeedArticle createEmptyInstance() => create();
  static $pb.PbList<FeedArticle> createRepeated() => $pb.PbList<FeedArticle>();
  @$core.pragma('dart2js:noInline')
  static FeedArticle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedArticle>(create);
  static FeedArticle _defaultInstance;

  @$pb.TagNumber(1)
  $8.Identifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($8.Identifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $8.Identifier ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $10.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($10.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $10.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverPictureUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverPictureUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCoverPictureUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverPictureUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<FeedTag> get feedTags => $_getList(6);

  @$pb.TagNumber(8)
  FeedAuthor get feedAuthor => $_getN(7);
  @$pb.TagNumber(8)
  set feedAuthor(FeedAuthor v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFeedAuthor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFeedAuthor() => clearField(8);
  @$pb.TagNumber(8)
  FeedAuthor ensureFeedAuthor() => $_ensure(7);
}

class ListFeedArticleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListFeedArticleRequest', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<$9.Filtering>(1, 'filter', subBuilder: $9.Filtering.create)
    ..aOM<$9.Sorting>(2, 'orderBy', subBuilder: $9.Sorting.create)
    ..aOM<$9.FieldSelection>(3, 'fields', subBuilder: $9.FieldSelection.create)
    ..aOM<$9.Pagination>(4, 'paging', subBuilder: $9.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListFeedArticleRequest._() : super();
  factory ListFeedArticleRequest() => create();
  factory ListFeedArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFeedArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListFeedArticleRequest clone() => ListFeedArticleRequest()..mergeFromMessage(this);
  ListFeedArticleRequest copyWith(void Function(ListFeedArticleRequest) updates) => super.copyWith((message) => updates(message as ListFeedArticleRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleRequest create() => ListFeedArticleRequest._();
  ListFeedArticleRequest createEmptyInstance() => create();
  static $pb.PbList<ListFeedArticleRequest> createRepeated() => $pb.PbList<ListFeedArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFeedArticleRequest>(create);
  static ListFeedArticleRequest _defaultInstance;

  @$pb.TagNumber(1)
  $9.Filtering get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($9.Filtering v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $9.Filtering ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.Sorting get orderBy => $_getN(1);
  @$pb.TagNumber(2)
  set orderBy($9.Sorting v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderBy() => clearField(2);
  @$pb.TagNumber(2)
  $9.Sorting ensureOrderBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.FieldSelection get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields($9.FieldSelection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  $9.FieldSelection ensureFields() => $_ensure(2);

  @$pb.TagNumber(4)
  $9.Pagination get paging => $_getN(3);
  @$pb.TagNumber(4)
  set paging($9.Pagination v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaging() => clearField(4);
  @$pb.TagNumber(4)
  $9.Pagination ensurePaging() => $_ensure(3);
}

class ListFeedArticleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListFeedArticleResponse', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..pc<FeedArticle>(1, 'results', $pb.PbFieldType.PM, subBuilder: FeedArticle.create)
    ..hasRequiredFields = false
  ;

  ListFeedArticleResponse._() : super();
  factory ListFeedArticleResponse() => create();
  factory ListFeedArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFeedArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListFeedArticleResponse clone() => ListFeedArticleResponse()..mergeFromMessage(this);
  ListFeedArticleResponse copyWith(void Function(ListFeedArticleResponse) updates) => super.copyWith((message) => updates(message as ListFeedArticleResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleResponse create() => ListFeedArticleResponse._();
  ListFeedArticleResponse createEmptyInstance() => create();
  static $pb.PbList<ListFeedArticleResponse> createRepeated() => $pb.PbList<ListFeedArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFeedArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFeedArticleResponse>(create);
  static ListFeedArticleResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeedArticle> get results => $_getList(0);
}

