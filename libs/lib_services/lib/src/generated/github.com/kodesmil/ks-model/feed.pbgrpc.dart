///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/feed.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'feed.pb.dart' as $3;
export 'feed.pb.dart';

class FeedArticlesClient extends $grpc.Client {
  static final _$list =
      $grpc.ClientMethod<$3.ListFeedArticleRequest, $3.ListFeedArticleResponse>(
          '/model.FeedArticles/List',
          ($3.ListFeedArticleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListFeedArticleResponse.fromBuffer(value));

  FeedArticlesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ListFeedArticleResponse> list(
      $3.ListFeedArticleRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class FeedArticlesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.FeedArticles';

  FeedArticlesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ListFeedArticleRequest,
            $3.ListFeedArticleResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListFeedArticleRequest.fromBuffer(value),
        ($3.ListFeedArticleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListFeedArticleResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListFeedArticleRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$3.ListFeedArticleResponse> list(
      $grpc.ServiceCall call, $3.ListFeedArticleRequest request);
}

class FeedArticleDetailsClient extends $grpc.Client {
  static final _$read = $grpc.ClientMethod<$3.ReadFeedArticleDetailsRequest,
          $3.ReadFeedArticleDetailsResponse>(
      '/model.FeedArticleDetails/Read',
      ($3.ReadFeedArticleDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.ReadFeedArticleDetailsResponse.fromBuffer(value));

  FeedArticleDetailsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ReadFeedArticleDetailsResponse> read(
      $3.ReadFeedArticleDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class FeedArticleDetailsServiceBase extends $grpc.Service {
  $core.String get $name => 'model.FeedArticleDetails';

  FeedArticleDetailsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ReadFeedArticleDetailsRequest,
            $3.ReadFeedArticleDetailsResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ReadFeedArticleDetailsRequest.fromBuffer(value),
        ($3.ReadFeedArticleDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ReadFeedArticleDetailsResponse> read_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ReadFeedArticleDetailsRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$3.ReadFeedArticleDetailsResponse> read(
      $grpc.ServiceCall call, $3.ReadFeedArticleDetailsRequest request);
}
