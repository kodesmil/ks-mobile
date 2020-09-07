///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/feed.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'feed.pb.dart' as $4;
export 'feed.pb.dart';

class FeedClient extends $grpc.Client {
  static final _$listFeedArticle =
      $grpc.ClientMethod<$4.ListFeedArticleRequest, $4.ListFeedArticleResponse>(
          '/model.Feed/ListFeedArticle',
          ($4.ListFeedArticleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ListFeedArticleResponse.fromBuffer(value));
  static final _$readFeedArticleDetails = $grpc.ClientMethod<
          $4.ReadFeedArticleDetailsRequest, $4.ReadFeedArticleDetailsResponse>(
      '/model.Feed/ReadFeedArticleDetails',
      ($4.ReadFeedArticleDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ReadFeedArticleDetailsResponse.fromBuffer(value));

  FeedClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.ListFeedArticleResponse> listFeedArticle(
      $4.ListFeedArticleRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listFeedArticle, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.ReadFeedArticleDetailsResponse>
      readFeedArticleDetails($4.ReadFeedArticleDetailsRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readFeedArticleDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class FeedServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Feed';

  FeedServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ListFeedArticleRequest,
            $4.ListFeedArticleResponse>(
        'ListFeedArticle',
        listFeedArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListFeedArticleRequest.fromBuffer(value),
        ($4.ListFeedArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReadFeedArticleDetailsRequest,
            $4.ReadFeedArticleDetailsResponse>(
        'ReadFeedArticleDetails',
        readFeedArticleDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ReadFeedArticleDetailsRequest.fromBuffer(value),
        ($4.ReadFeedArticleDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.ListFeedArticleResponse> listFeedArticle_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListFeedArticleRequest> request) async {
    return listFeedArticle(call, await request);
  }

  $async.Future<$4.ReadFeedArticleDetailsResponse> readFeedArticleDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ReadFeedArticleDetailsRequest> request) async {
    return readFeedArticleDetails(call, await request);
  }

  $async.Future<$4.ListFeedArticleResponse> listFeedArticle(
      $grpc.ServiceCall call, $4.ListFeedArticleRequest request);
  $async.Future<$4.ReadFeedArticleDetailsResponse> readFeedArticleDetails(
      $grpc.ServiceCall call, $4.ReadFeedArticleDetailsRequest request);
}
