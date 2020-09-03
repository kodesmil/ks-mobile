///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $2;
export 'service.pb.dart';

class ServicesClient extends $grpc.Client {
  static final _$listService =
      $grpc.ClientMethod<$2.ListServiceRequest, $2.ListServiceResponse>(
          '/model.Services/ListService',
          ($2.ListServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListServiceResponse.fromBuffer(value));
  static final _$createService =
      $grpc.ClientMethod<$2.CreateServiceRequest, $2.CreateServiceResponse>(
          '/model.Services/CreateService',
          ($2.CreateServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateServiceResponse.fromBuffer(value));
  static final _$readService =
      $grpc.ClientMethod<$2.ReadServiceRequest, $2.ReadServiceResponse>(
          '/model.Services/ReadService',
          ($2.ReadServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ReadServiceResponse.fromBuffer(value));
  static final _$updateService =
      $grpc.ClientMethod<$2.UpdateServiceRequest, $2.UpdateServiceResponse>(
          '/model.Services/UpdateService',
          ($2.UpdateServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpdateServiceResponse.fromBuffer(value));
  static final _$deleteService =
      $grpc.ClientMethod<$2.DeleteServiceRequest, $2.DeleteServiceResponse>(
          '/model.Services/DeleteService',
          ($2.DeleteServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteServiceResponse.fromBuffer(value));
  static final _$listServiceSession = $grpc.ClientMethod<
          $2.ListServiceSessionRequest, $2.ListServiceSessionResponse>(
      '/model.Services/ListServiceSession',
      ($2.ListServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceSessionResponse.fromBuffer(value));
  static final _$listServiceOfferSession = $grpc.ClientMethod<
          $2.ListServiceOfferSessionRequest,
          $2.ListServiceOfferSessionResponse>(
      '/model.Services/ListServiceOfferSession',
      ($2.ListServiceOfferSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceOfferSessionResponse.fromBuffer(value));
  static final _$createServiceSession = $grpc.ClientMethod<
          $2.CreateServiceSessionRequest, $2.CreateServiceSessionResponse>(
      '/model.Services/CreateServiceSession',
      ($2.CreateServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceSessionResponse.fromBuffer(value));
  static final _$readServiceSession = $grpc.ClientMethod<
          $2.ReadServiceSessionRequest, $2.ReadServiceSessionResponse>(
      '/model.Services/ReadServiceSession',
      ($2.ReadServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceSessionResponse.fromBuffer(value));
  static final _$updateServiceSession = $grpc.ClientMethod<
          $2.UpdateServiceSessionRequest, $2.UpdateServiceSessionResponse>(
      '/model.Services/UpdateServiceSession',
      ($2.UpdateServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceSessionResponse.fromBuffer(value));
  static final _$deleteServiceSession = $grpc.ClientMethod<
          $2.DeleteServiceSessionRequest, $2.DeleteServiceSessionResponse>(
      '/model.Services/DeleteServiceSession',
      ($2.DeleteServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceSessionResponse.fromBuffer(value));
  static final _$listServiceSessionEvaluation = $grpc.ClientMethod<
          $2.ListServiceSessionEvaluationRequest,
          $2.ListServiceSessionEvaluationResponse>(
      '/model.Services/ListServiceSessionEvaluation',
      ($2.ListServiceSessionEvaluationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceSessionEvaluationResponse.fromBuffer(value));
  static final _$createServiceSessionEvaluation = $grpc.ClientMethod<
          $2.CreateServiceSessionEvaluationRequest,
          $2.CreateServiceSessionEvaluationResponse>(
      '/model.Services/CreateServiceSessionEvaluation',
      ($2.CreateServiceSessionEvaluationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceSessionEvaluationResponse.fromBuffer(value));
  static final _$readServiceSessionEvaluation = $grpc.ClientMethod<
          $2.ReadServiceSessionEvaluationRequest,
          $2.ReadServiceSessionEvaluationResponse>(
      '/model.Services/ReadServiceSessionEvaluation',
      ($2.ReadServiceSessionEvaluationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceSessionEvaluationResponse.fromBuffer(value));
  static final _$updateServiceSessionEvaluation = $grpc.ClientMethod<
          $2.UpdateServiceSessionEvaluationRequest,
          $2.UpdateServiceSessionEvaluationResponse>(
      '/model.Services/UpdateServiceSessionEvaluation',
      ($2.UpdateServiceSessionEvaluationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceSessionEvaluationResponse.fromBuffer(value));
  static final _$deleteServiceSessionEvaluation = $grpc.ClientMethod<
          $2.DeleteServiceSessionEvaluationRequest,
          $2.DeleteServiceSessionEvaluationResponse>(
      '/model.Services/DeleteServiceSessionEvaluation',
      ($2.DeleteServiceSessionEvaluationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceSessionEvaluationResponse.fromBuffer(value));
  static final _$listServiceTag =
      $grpc.ClientMethod<$2.ListServiceTagRequest, $2.ListServiceTagResponse>(
          '/model.Services/ListServiceTag',
          ($2.ListServiceTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListServiceTagResponse.fromBuffer(value));
  static final _$createServiceTag = $grpc.ClientMethod<
          $2.CreateServiceTagRequest, $2.CreateServiceTagResponse>(
      '/model.Services/CreateServiceTag',
      ($2.CreateServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceTagResponse.fromBuffer(value));
  static final _$readServiceTag =
      $grpc.ClientMethod<$2.ReadServiceTagRequest, $2.ReadServiceTagResponse>(
          '/model.Services/ReadServiceTag',
          ($2.ReadServiceTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ReadServiceTagResponse.fromBuffer(value));
  static final _$updateServiceTag = $grpc.ClientMethod<
          $2.UpdateServiceTagRequest, $2.UpdateServiceTagResponse>(
      '/model.Services/UpdateServiceTag',
      ($2.UpdateServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceTagResponse.fromBuffer(value));
  static final _$deleteServiceTag = $grpc.ClientMethod<
          $2.DeleteServiceTagRequest, $2.DeleteServiceTagResponse>(
      '/model.Services/DeleteServiceTag',
      ($2.DeleteServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceTagResponse.fromBuffer(value));
  static final _$listServiceOffer = $grpc.ClientMethod<
          $2.ListServiceOfferRequest, $2.ListServiceOfferResponse>(
      '/model.Services/ListServiceOffer',
      ($2.ListServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceOfferResponse.fromBuffer(value));
  static final _$createServiceOffer = $grpc.ClientMethod<
          $2.CreateServiceOfferRequest, $2.CreateServiceOfferResponse>(
      '/model.Services/CreateServiceOffer',
      ($2.CreateServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceOfferResponse.fromBuffer(value));
  static final _$readServiceOffer = $grpc.ClientMethod<
          $2.ReadServiceOfferRequest, $2.ReadServiceOfferResponse>(
      '/model.Services/ReadServiceOffer',
      ($2.ReadServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceOfferResponse.fromBuffer(value));
  static final _$updateServiceOffer = $grpc.ClientMethod<
          $2.UpdateServiceOfferRequest, $2.UpdateServiceOfferResponse>(
      '/model.Services/UpdateServiceOffer',
      ($2.UpdateServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceOfferResponse.fromBuffer(value));
  static final _$deleteServiceOffer = $grpc.ClientMethod<
          $2.DeleteServiceOfferRequest, $2.DeleteServiceOfferResponse>(
      '/model.Services/DeleteServiceOffer',
      ($2.DeleteServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceOfferResponse.fromBuffer(value));
  static final _$listServiceEmployment = $grpc.ClientMethod<
          $2.ListServiceEmploymentRequest, $2.ListServiceEmploymentResponse>(
      '/model.Services/ListServiceEmployment',
      ($2.ListServiceEmploymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceEmploymentResponse.fromBuffer(value));
  static final _$createServiceEmployment = $grpc.ClientMethod<
          $2.CreateServiceEmploymentRequest,
          $2.CreateServiceEmploymentResponse>(
      '/model.Services/CreateServiceEmployment',
      ($2.CreateServiceEmploymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceEmploymentResponse.fromBuffer(value));
  static final _$readServiceEmployment = $grpc.ClientMethod<
          $2.ReadServiceEmploymentRequest, $2.ReadServiceEmploymentResponse>(
      '/model.Services/ReadServiceEmployment',
      ($2.ReadServiceEmploymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceEmploymentResponse.fromBuffer(value));
  static final _$updateServiceEmployment = $grpc.ClientMethod<
          $2.UpdateServiceEmploymentRequest,
          $2.UpdateServiceEmploymentResponse>(
      '/model.Services/UpdateServiceEmployment',
      ($2.UpdateServiceEmploymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceEmploymentResponse.fromBuffer(value));
  static final _$deleteServiceEmployment = $grpc.ClientMethod<
          $2.DeleteServiceEmploymentRequest,
          $2.DeleteServiceEmploymentResponse>(
      '/model.Services/DeleteServiceEmployment',
      ($2.DeleteServiceEmploymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceEmploymentResponse.fromBuffer(value));
  static final _$listServiceDetails = $grpc.ClientMethod<
          $2.ListServiceDetailsRequest, $2.ListServiceDetailsResponse>(
      '/model.Services/ListServiceDetails',
      ($2.ListServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceDetailsResponse.fromBuffer(value));
  static final _$createServiceDetails = $grpc.ClientMethod<
          $2.CreateServiceDetailsRequest, $2.CreateServiceDetailsResponse>(
      '/model.Services/CreateServiceDetails',
      ($2.CreateServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceDetailsResponse.fromBuffer(value));
  static final _$readServiceDetails = $grpc.ClientMethod<
          $2.ReadServiceDetailsRequest, $2.ReadServiceDetailsResponse>(
      '/model.Services/ReadServiceDetails',
      ($2.ReadServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceDetailsResponse.fromBuffer(value));
  static final _$updateServiceDetails = $grpc.ClientMethod<
          $2.UpdateServiceDetailsRequest, $2.UpdateServiceDetailsResponse>(
      '/model.Services/UpdateServiceDetails',
      ($2.UpdateServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceDetailsResponse.fromBuffer(value));
  static final _$deleteServiceDetails = $grpc.ClientMethod<
          $2.DeleteServiceDetailsRequest, $2.DeleteServiceDetailsResponse>(
      '/model.Services/DeleteServiceDetails',
      ($2.DeleteServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceDetailsResponse.fromBuffer(value));
  static final _$listServiceApplication = $grpc.ClientMethod<
          $2.ListServiceApplicationRequest, $2.ListServiceApplicationResponse>(
      '/model.Services/ListServiceApplication',
      ($2.ListServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceApplicationResponse.fromBuffer(value));
  static final _$createServiceApplication = $grpc.ClientMethod<
          $2.CreateServiceApplicationRequest,
          $2.CreateServiceApplicationResponse>(
      '/model.Services/CreateServiceApplication',
      ($2.CreateServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceApplicationResponse.fromBuffer(value));
  static final _$readServiceApplication = $grpc.ClientMethod<
          $2.ReadServiceApplicationRequest, $2.ReadServiceApplicationResponse>(
      '/model.Services/ReadServiceApplication',
      ($2.ReadServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceApplicationResponse.fromBuffer(value));
  static final _$updateServiceApplication = $grpc.ClientMethod<
          $2.UpdateServiceApplicationRequest,
          $2.UpdateServiceApplicationResponse>(
      '/model.Services/UpdateServiceApplication',
      ($2.UpdateServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceApplicationResponse.fromBuffer(value));
  static final _$deleteServiceApplication = $grpc.ClientMethod<
          $2.DeleteServiceApplicationRequest,
          $2.DeleteServiceApplicationResponse>(
      '/model.Services/DeleteServiceApplication',
      ($2.DeleteServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceApplicationResponse.fromBuffer(value));
  static final _$listServiceProvider = $grpc.ClientMethod<
          $2.ListServiceProviderRequest, $2.ListServiceProviderResponse>(
      '/model.Services/ListServiceProvider',
      ($2.ListServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListServiceProviderResponse.fromBuffer(value));
  static final _$createServiceProvider = $grpc.ClientMethod<
          $2.CreateServiceProviderRequest, $2.CreateServiceProviderResponse>(
      '/model.Services/CreateServiceProvider',
      ($2.CreateServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateServiceProviderResponse.fromBuffer(value));
  static final _$readServiceProvider = $grpc.ClientMethod<
          $2.ReadServiceProviderRequest, $2.ReadServiceProviderResponse>(
      '/model.Services/ReadServiceProvider',
      ($2.ReadServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ReadServiceProviderResponse.fromBuffer(value));
  static final _$updateServiceProvider = $grpc.ClientMethod<
          $2.UpdateServiceProviderRequest, $2.UpdateServiceProviderResponse>(
      '/model.Services/UpdateServiceProvider',
      ($2.UpdateServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateServiceProviderResponse.fromBuffer(value));
  static final _$deleteServiceProvider = $grpc.ClientMethod<
          $2.DeleteServiceProviderRequest, $2.DeleteServiceProviderResponse>(
      '/model.Services/DeleteServiceProvider',
      ($2.DeleteServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteServiceProviderResponse.fromBuffer(value));

  ServicesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.ListServiceResponse> listService(
      $2.ListServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceResponse> createService(
      $2.CreateServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceResponse> readService(
      $2.ReadServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceResponse> updateService(
      $2.UpdateServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceResponse> deleteService(
      $2.DeleteServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceSessionResponse> listServiceSession(
      $2.ListServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceOfferSessionResponse>
      listServiceOfferSession($2.ListServiceOfferSessionRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceOfferSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceSessionResponse> createServiceSession(
      $2.CreateServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceSessionResponse> readServiceSession(
      $2.ReadServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceSessionResponse> updateServiceSession(
      $2.UpdateServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceSessionResponse> deleteServiceSession(
      $2.DeleteServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceSessionEvaluationResponse>
      listServiceSessionEvaluation(
          $2.ListServiceSessionEvaluationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceSessionEvaluation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceSessionEvaluationResponse>
      createServiceSessionEvaluation(
          $2.CreateServiceSessionEvaluationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceSessionEvaluation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceSessionEvaluationResponse>
      readServiceSessionEvaluation(
          $2.ReadServiceSessionEvaluationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceSessionEvaluation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceSessionEvaluationResponse>
      updateServiceSessionEvaluation(
          $2.UpdateServiceSessionEvaluationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceSessionEvaluation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceSessionEvaluationResponse>
      deleteServiceSessionEvaluation(
          $2.DeleteServiceSessionEvaluationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceSessionEvaluation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceTagResponse> listServiceTag(
      $2.ListServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceTagResponse> createServiceTag(
      $2.CreateServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceTagResponse> readServiceTag(
      $2.ReadServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceTagResponse> updateServiceTag(
      $2.UpdateServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceTagResponse> deleteServiceTag(
      $2.DeleteServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceOfferResponse> listServiceOffer(
      $2.ListServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceOfferResponse> createServiceOffer(
      $2.CreateServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceOfferResponse> readServiceOffer(
      $2.ReadServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceOfferResponse> updateServiceOffer(
      $2.UpdateServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceOfferResponse> deleteServiceOffer(
      $2.DeleteServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceEmploymentResponse> listServiceEmployment(
      $2.ListServiceEmploymentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceEmployment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceEmploymentResponse>
      createServiceEmployment($2.CreateServiceEmploymentRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceEmployment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceEmploymentResponse> readServiceEmployment(
      $2.ReadServiceEmploymentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceEmployment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceEmploymentResponse>
      updateServiceEmployment($2.UpdateServiceEmploymentRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceEmployment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceEmploymentResponse>
      deleteServiceEmployment($2.DeleteServiceEmploymentRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceEmployment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceDetailsResponse> listServiceDetails(
      $2.ListServiceDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceDetailsResponse> createServiceDetails(
      $2.CreateServiceDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceDetailsResponse> readServiceDetails(
      $2.ReadServiceDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceDetailsResponse> updateServiceDetails(
      $2.UpdateServiceDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceDetailsResponse> deleteServiceDetails(
      $2.DeleteServiceDetailsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceDetails, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceApplicationResponse>
      listServiceApplication($2.ListServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceApplicationResponse>
      createServiceApplication($2.CreateServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceApplicationResponse>
      readServiceApplication($2.ReadServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceApplicationResponse>
      updateServiceApplication($2.UpdateServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceApplicationResponse>
      deleteServiceApplication($2.DeleteServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ListServiceProviderResponse> listServiceProvider(
      $2.ListServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CreateServiceProviderResponse> createServiceProvider(
      $2.CreateServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadServiceProviderResponse> readServiceProvider(
      $2.ReadServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateServiceProviderResponse> updateServiceProvider(
      $2.UpdateServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteServiceProviderResponse> deleteServiceProvider(
      $2.DeleteServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ServicesServiceBase extends $grpc.Service {
  $core.String get $name => 'model.Services';

  ServicesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.ListServiceRequest, $2.ListServiceResponse>(
            'ListService',
            listService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListServiceRequest.fromBuffer(value),
            ($2.ListServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CreateServiceRequest, $2.CreateServiceResponse>(
            'CreateService',
            createService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CreateServiceRequest.fromBuffer(value),
            ($2.CreateServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ReadServiceRequest, $2.ReadServiceResponse>(
            'ReadService',
            readService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ReadServiceRequest.fromBuffer(value),
            ($2.ReadServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.UpdateServiceRequest, $2.UpdateServiceResponse>(
            'UpdateService',
            updateService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.UpdateServiceRequest.fromBuffer(value),
            ($2.UpdateServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.DeleteServiceRequest, $2.DeleteServiceResponse>(
            'DeleteService',
            deleteService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.DeleteServiceRequest.fromBuffer(value),
            ($2.DeleteServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceSessionRequest,
            $2.ListServiceSessionResponse>(
        'ListServiceSession',
        listServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceSessionRequest.fromBuffer(value),
        ($2.ListServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceOfferSessionRequest,
            $2.ListServiceOfferSessionResponse>(
        'ListServiceOfferSession',
        listServiceOfferSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceOfferSessionRequest.fromBuffer(value),
        ($2.ListServiceOfferSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceSessionRequest,
            $2.CreateServiceSessionResponse>(
        'CreateServiceSession',
        createServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceSessionRequest.fromBuffer(value),
        ($2.CreateServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceSessionRequest,
            $2.ReadServiceSessionResponse>(
        'ReadServiceSession',
        readServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceSessionRequest.fromBuffer(value),
        ($2.ReadServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceSessionRequest,
            $2.UpdateServiceSessionResponse>(
        'UpdateServiceSession',
        updateServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceSessionRequest.fromBuffer(value),
        ($2.UpdateServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceSessionRequest,
            $2.DeleteServiceSessionResponse>(
        'DeleteServiceSession',
        deleteServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceSessionRequest.fromBuffer(value),
        ($2.DeleteServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceSessionEvaluationRequest,
            $2.ListServiceSessionEvaluationResponse>(
        'ListServiceSessionEvaluation',
        listServiceSessionEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceSessionEvaluationRequest.fromBuffer(value),
        ($2.ListServiceSessionEvaluationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceSessionEvaluationRequest,
            $2.CreateServiceSessionEvaluationResponse>(
        'CreateServiceSessionEvaluation',
        createServiceSessionEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceSessionEvaluationRequest.fromBuffer(value),
        ($2.CreateServiceSessionEvaluationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceSessionEvaluationRequest,
            $2.ReadServiceSessionEvaluationResponse>(
        'ReadServiceSessionEvaluation',
        readServiceSessionEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceSessionEvaluationRequest.fromBuffer(value),
        ($2.ReadServiceSessionEvaluationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceSessionEvaluationRequest,
            $2.UpdateServiceSessionEvaluationResponse>(
        'UpdateServiceSessionEvaluation',
        updateServiceSessionEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceSessionEvaluationRequest.fromBuffer(value),
        ($2.UpdateServiceSessionEvaluationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceSessionEvaluationRequest,
            $2.DeleteServiceSessionEvaluationResponse>(
        'DeleteServiceSessionEvaluation',
        deleteServiceSessionEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceSessionEvaluationRequest.fromBuffer(value),
        ($2.DeleteServiceSessionEvaluationResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceTagRequest,
            $2.ListServiceTagResponse>(
        'ListServiceTag',
        listServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceTagRequest.fromBuffer(value),
        ($2.ListServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceTagRequest,
            $2.CreateServiceTagResponse>(
        'CreateServiceTag',
        createServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceTagRequest.fromBuffer(value),
        ($2.CreateServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceTagRequest,
            $2.ReadServiceTagResponse>(
        'ReadServiceTag',
        readServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceTagRequest.fromBuffer(value),
        ($2.ReadServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceTagRequest,
            $2.UpdateServiceTagResponse>(
        'UpdateServiceTag',
        updateServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceTagRequest.fromBuffer(value),
        ($2.UpdateServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceTagRequest,
            $2.DeleteServiceTagResponse>(
        'DeleteServiceTag',
        deleteServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceTagRequest.fromBuffer(value),
        ($2.DeleteServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceOfferRequest,
            $2.ListServiceOfferResponse>(
        'ListServiceOffer',
        listServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceOfferRequest.fromBuffer(value),
        ($2.ListServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceOfferRequest,
            $2.CreateServiceOfferResponse>(
        'CreateServiceOffer',
        createServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceOfferRequest.fromBuffer(value),
        ($2.CreateServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceOfferRequest,
            $2.ReadServiceOfferResponse>(
        'ReadServiceOffer',
        readServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceOfferRequest.fromBuffer(value),
        ($2.ReadServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceOfferRequest,
            $2.UpdateServiceOfferResponse>(
        'UpdateServiceOffer',
        updateServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceOfferRequest.fromBuffer(value),
        ($2.UpdateServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceOfferRequest,
            $2.DeleteServiceOfferResponse>(
        'DeleteServiceOffer',
        deleteServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceOfferRequest.fromBuffer(value),
        ($2.DeleteServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceEmploymentRequest,
            $2.ListServiceEmploymentResponse>(
        'ListServiceEmployment',
        listServiceEmployment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceEmploymentRequest.fromBuffer(value),
        ($2.ListServiceEmploymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceEmploymentRequest,
            $2.CreateServiceEmploymentResponse>(
        'CreateServiceEmployment',
        createServiceEmployment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceEmploymentRequest.fromBuffer(value),
        ($2.CreateServiceEmploymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceEmploymentRequest,
            $2.ReadServiceEmploymentResponse>(
        'ReadServiceEmployment',
        readServiceEmployment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceEmploymentRequest.fromBuffer(value),
        ($2.ReadServiceEmploymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceEmploymentRequest,
            $2.UpdateServiceEmploymentResponse>(
        'UpdateServiceEmployment',
        updateServiceEmployment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceEmploymentRequest.fromBuffer(value),
        ($2.UpdateServiceEmploymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceEmploymentRequest,
            $2.DeleteServiceEmploymentResponse>(
        'DeleteServiceEmployment',
        deleteServiceEmployment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceEmploymentRequest.fromBuffer(value),
        ($2.DeleteServiceEmploymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceDetailsRequest,
            $2.ListServiceDetailsResponse>(
        'ListServiceDetails',
        listServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceDetailsRequest.fromBuffer(value),
        ($2.ListServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceDetailsRequest,
            $2.CreateServiceDetailsResponse>(
        'CreateServiceDetails',
        createServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceDetailsRequest.fromBuffer(value),
        ($2.CreateServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceDetailsRequest,
            $2.ReadServiceDetailsResponse>(
        'ReadServiceDetails',
        readServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceDetailsRequest.fromBuffer(value),
        ($2.ReadServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceDetailsRequest,
            $2.UpdateServiceDetailsResponse>(
        'UpdateServiceDetails',
        updateServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceDetailsRequest.fromBuffer(value),
        ($2.UpdateServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceDetailsRequest,
            $2.DeleteServiceDetailsResponse>(
        'DeleteServiceDetails',
        deleteServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceDetailsRequest.fromBuffer(value),
        ($2.DeleteServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceApplicationRequest,
            $2.ListServiceApplicationResponse>(
        'ListServiceApplication',
        listServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceApplicationRequest.fromBuffer(value),
        ($2.ListServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceApplicationRequest,
            $2.CreateServiceApplicationResponse>(
        'CreateServiceApplication',
        createServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceApplicationRequest.fromBuffer(value),
        ($2.CreateServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceApplicationRequest,
            $2.ReadServiceApplicationResponse>(
        'ReadServiceApplication',
        readServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceApplicationRequest.fromBuffer(value),
        ($2.ReadServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceApplicationRequest,
            $2.UpdateServiceApplicationResponse>(
        'UpdateServiceApplication',
        updateServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceApplicationRequest.fromBuffer(value),
        ($2.UpdateServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceApplicationRequest,
            $2.DeleteServiceApplicationResponse>(
        'DeleteServiceApplication',
        deleteServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceApplicationRequest.fromBuffer(value),
        ($2.DeleteServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListServiceProviderRequest,
            $2.ListServiceProviderResponse>(
        'ListServiceProvider',
        listServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListServiceProviderRequest.fromBuffer(value),
        ($2.ListServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateServiceProviderRequest,
            $2.CreateServiceProviderResponse>(
        'CreateServiceProvider',
        createServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateServiceProviderRequest.fromBuffer(value),
        ($2.CreateServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadServiceProviderRequest,
            $2.ReadServiceProviderResponse>(
        'ReadServiceProvider',
        readServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ReadServiceProviderRequest.fromBuffer(value),
        ($2.ReadServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateServiceProviderRequest,
            $2.UpdateServiceProviderResponse>(
        'UpdateServiceProvider',
        updateServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateServiceProviderRequest.fromBuffer(value),
        ($2.UpdateServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteServiceProviderRequest,
            $2.DeleteServiceProviderResponse>(
        'DeleteServiceProvider',
        deleteServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteServiceProviderRequest.fromBuffer(value),
        ($2.DeleteServiceProviderResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ListServiceResponse> listService_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListServiceRequest> request) async {
    return listService(call, await request);
  }

  $async.Future<$2.CreateServiceResponse> createService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceRequest> request) async {
    return createService(call, await request);
  }

  $async.Future<$2.ReadServiceResponse> readService_Pre($grpc.ServiceCall call,
      $async.Future<$2.ReadServiceRequest> request) async {
    return readService(call, await request);
  }

  $async.Future<$2.UpdateServiceResponse> updateService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceRequest> request) async {
    return updateService(call, await request);
  }

  $async.Future<$2.DeleteServiceResponse> deleteService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceRequest> request) async {
    return deleteService(call, await request);
  }

  $async.Future<$2.ListServiceSessionResponse> listServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceSessionRequest> request) async {
    return listServiceSession(call, await request);
  }

  $async.Future<$2.ListServiceOfferSessionResponse> listServiceOfferSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceOfferSessionRequest> request) async {
    return listServiceOfferSession(call, await request);
  }

  $async.Future<$2.CreateServiceSessionResponse> createServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceSessionRequest> request) async {
    return createServiceSession(call, await request);
  }

  $async.Future<$2.ReadServiceSessionResponse> readServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceSessionRequest> request) async {
    return readServiceSession(call, await request);
  }

  $async.Future<$2.UpdateServiceSessionResponse> updateServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceSessionRequest> request) async {
    return updateServiceSession(call, await request);
  }

  $async.Future<$2.DeleteServiceSessionResponse> deleteServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceSessionRequest> request) async {
    return deleteServiceSession(call, await request);
  }

  $async.Future<$2.ListServiceSessionEvaluationResponse>
      listServiceSessionEvaluation_Pre($grpc.ServiceCall call,
          $async.Future<$2.ListServiceSessionEvaluationRequest> request) async {
    return listServiceSessionEvaluation(call, await request);
  }

  $async.Future<$2.CreateServiceSessionEvaluationResponse>
      createServiceSessionEvaluation_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.CreateServiceSessionEvaluationRequest>
              request) async {
    return createServiceSessionEvaluation(call, await request);
  }

  $async.Future<$2.ReadServiceSessionEvaluationResponse>
      readServiceSessionEvaluation_Pre($grpc.ServiceCall call,
          $async.Future<$2.ReadServiceSessionEvaluationRequest> request) async {
    return readServiceSessionEvaluation(call, await request);
  }

  $async.Future<$2.UpdateServiceSessionEvaluationResponse>
      updateServiceSessionEvaluation_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.UpdateServiceSessionEvaluationRequest>
              request) async {
    return updateServiceSessionEvaluation(call, await request);
  }

  $async.Future<$2.DeleteServiceSessionEvaluationResponse>
      deleteServiceSessionEvaluation_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.DeleteServiceSessionEvaluationRequest>
              request) async {
    return deleteServiceSessionEvaluation(call, await request);
  }

  $async.Future<$2.ListServiceTagResponse> listServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceTagRequest> request) async {
    return listServiceTag(call, await request);
  }

  $async.Future<$2.CreateServiceTagResponse> createServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceTagRequest> request) async {
    return createServiceTag(call, await request);
  }

  $async.Future<$2.ReadServiceTagResponse> readServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceTagRequest> request) async {
    return readServiceTag(call, await request);
  }

  $async.Future<$2.UpdateServiceTagResponse> updateServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceTagRequest> request) async {
    return updateServiceTag(call, await request);
  }

  $async.Future<$2.DeleteServiceTagResponse> deleteServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceTagRequest> request) async {
    return deleteServiceTag(call, await request);
  }

  $async.Future<$2.ListServiceOfferResponse> listServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceOfferRequest> request) async {
    return listServiceOffer(call, await request);
  }

  $async.Future<$2.CreateServiceOfferResponse> createServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceOfferRequest> request) async {
    return createServiceOffer(call, await request);
  }

  $async.Future<$2.ReadServiceOfferResponse> readServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceOfferRequest> request) async {
    return readServiceOffer(call, await request);
  }

  $async.Future<$2.UpdateServiceOfferResponse> updateServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceOfferRequest> request) async {
    return updateServiceOffer(call, await request);
  }

  $async.Future<$2.DeleteServiceOfferResponse> deleteServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceOfferRequest> request) async {
    return deleteServiceOffer(call, await request);
  }

  $async.Future<$2.ListServiceEmploymentResponse> listServiceEmployment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceEmploymentRequest> request) async {
    return listServiceEmployment(call, await request);
  }

  $async.Future<$2.CreateServiceEmploymentResponse> createServiceEmployment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceEmploymentRequest> request) async {
    return createServiceEmployment(call, await request);
  }

  $async.Future<$2.ReadServiceEmploymentResponse> readServiceEmployment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceEmploymentRequest> request) async {
    return readServiceEmployment(call, await request);
  }

  $async.Future<$2.UpdateServiceEmploymentResponse> updateServiceEmployment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceEmploymentRequest> request) async {
    return updateServiceEmployment(call, await request);
  }

  $async.Future<$2.DeleteServiceEmploymentResponse> deleteServiceEmployment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceEmploymentRequest> request) async {
    return deleteServiceEmployment(call, await request);
  }

  $async.Future<$2.ListServiceDetailsResponse> listServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceDetailsRequest> request) async {
    return listServiceDetails(call, await request);
  }

  $async.Future<$2.CreateServiceDetailsResponse> createServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceDetailsRequest> request) async {
    return createServiceDetails(call, await request);
  }

  $async.Future<$2.ReadServiceDetailsResponse> readServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceDetailsRequest> request) async {
    return readServiceDetails(call, await request);
  }

  $async.Future<$2.UpdateServiceDetailsResponse> updateServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceDetailsRequest> request) async {
    return updateServiceDetails(call, await request);
  }

  $async.Future<$2.DeleteServiceDetailsResponse> deleteServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceDetailsRequest> request) async {
    return deleteServiceDetails(call, await request);
  }

  $async.Future<$2.ListServiceApplicationResponse> listServiceApplication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceApplicationRequest> request) async {
    return listServiceApplication(call, await request);
  }

  $async.Future<$2.CreateServiceApplicationResponse>
      createServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$2.CreateServiceApplicationRequest> request) async {
    return createServiceApplication(call, await request);
  }

  $async.Future<$2.ReadServiceApplicationResponse> readServiceApplication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceApplicationRequest> request) async {
    return readServiceApplication(call, await request);
  }

  $async.Future<$2.UpdateServiceApplicationResponse>
      updateServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$2.UpdateServiceApplicationRequest> request) async {
    return updateServiceApplication(call, await request);
  }

  $async.Future<$2.DeleteServiceApplicationResponse>
      deleteServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$2.DeleteServiceApplicationRequest> request) async {
    return deleteServiceApplication(call, await request);
  }

  $async.Future<$2.ListServiceProviderResponse> listServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListServiceProviderRequest> request) async {
    return listServiceProvider(call, await request);
  }

  $async.Future<$2.CreateServiceProviderResponse> createServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateServiceProviderRequest> request) async {
    return createServiceProvider(call, await request);
  }

  $async.Future<$2.ReadServiceProviderResponse> readServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReadServiceProviderRequest> request) async {
    return readServiceProvider(call, await request);
  }

  $async.Future<$2.UpdateServiceProviderResponse> updateServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateServiceProviderRequest> request) async {
    return updateServiceProvider(call, await request);
  }

  $async.Future<$2.DeleteServiceProviderResponse> deleteServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteServiceProviderRequest> request) async {
    return deleteServiceProvider(call, await request);
  }

  $async.Future<$2.ListServiceResponse> listService(
      $grpc.ServiceCall call, $2.ListServiceRequest request);
  $async.Future<$2.CreateServiceResponse> createService(
      $grpc.ServiceCall call, $2.CreateServiceRequest request);
  $async.Future<$2.ReadServiceResponse> readService(
      $grpc.ServiceCall call, $2.ReadServiceRequest request);
  $async.Future<$2.UpdateServiceResponse> updateService(
      $grpc.ServiceCall call, $2.UpdateServiceRequest request);
  $async.Future<$2.DeleteServiceResponse> deleteService(
      $grpc.ServiceCall call, $2.DeleteServiceRequest request);
  $async.Future<$2.ListServiceSessionResponse> listServiceSession(
      $grpc.ServiceCall call, $2.ListServiceSessionRequest request);
  $async.Future<$2.ListServiceOfferSessionResponse> listServiceOfferSession(
      $grpc.ServiceCall call, $2.ListServiceOfferSessionRequest request);
  $async.Future<$2.CreateServiceSessionResponse> createServiceSession(
      $grpc.ServiceCall call, $2.CreateServiceSessionRequest request);
  $async.Future<$2.ReadServiceSessionResponse> readServiceSession(
      $grpc.ServiceCall call, $2.ReadServiceSessionRequest request);
  $async.Future<$2.UpdateServiceSessionResponse> updateServiceSession(
      $grpc.ServiceCall call, $2.UpdateServiceSessionRequest request);
  $async.Future<$2.DeleteServiceSessionResponse> deleteServiceSession(
      $grpc.ServiceCall call, $2.DeleteServiceSessionRequest request);
  $async.Future<$2.ListServiceSessionEvaluationResponse>
      listServiceSessionEvaluation($grpc.ServiceCall call,
          $2.ListServiceSessionEvaluationRequest request);
  $async.Future<$2.CreateServiceSessionEvaluationResponse>
      createServiceSessionEvaluation($grpc.ServiceCall call,
          $2.CreateServiceSessionEvaluationRequest request);
  $async.Future<$2.ReadServiceSessionEvaluationResponse>
      readServiceSessionEvaluation($grpc.ServiceCall call,
          $2.ReadServiceSessionEvaluationRequest request);
  $async.Future<$2.UpdateServiceSessionEvaluationResponse>
      updateServiceSessionEvaluation($grpc.ServiceCall call,
          $2.UpdateServiceSessionEvaluationRequest request);
  $async.Future<$2.DeleteServiceSessionEvaluationResponse>
      deleteServiceSessionEvaluation($grpc.ServiceCall call,
          $2.DeleteServiceSessionEvaluationRequest request);
  $async.Future<$2.ListServiceTagResponse> listServiceTag(
      $grpc.ServiceCall call, $2.ListServiceTagRequest request);
  $async.Future<$2.CreateServiceTagResponse> createServiceTag(
      $grpc.ServiceCall call, $2.CreateServiceTagRequest request);
  $async.Future<$2.ReadServiceTagResponse> readServiceTag(
      $grpc.ServiceCall call, $2.ReadServiceTagRequest request);
  $async.Future<$2.UpdateServiceTagResponse> updateServiceTag(
      $grpc.ServiceCall call, $2.UpdateServiceTagRequest request);
  $async.Future<$2.DeleteServiceTagResponse> deleteServiceTag(
      $grpc.ServiceCall call, $2.DeleteServiceTagRequest request);
  $async.Future<$2.ListServiceOfferResponse> listServiceOffer(
      $grpc.ServiceCall call, $2.ListServiceOfferRequest request);
  $async.Future<$2.CreateServiceOfferResponse> createServiceOffer(
      $grpc.ServiceCall call, $2.CreateServiceOfferRequest request);
  $async.Future<$2.ReadServiceOfferResponse> readServiceOffer(
      $grpc.ServiceCall call, $2.ReadServiceOfferRequest request);
  $async.Future<$2.UpdateServiceOfferResponse> updateServiceOffer(
      $grpc.ServiceCall call, $2.UpdateServiceOfferRequest request);
  $async.Future<$2.DeleteServiceOfferResponse> deleteServiceOffer(
      $grpc.ServiceCall call, $2.DeleteServiceOfferRequest request);
  $async.Future<$2.ListServiceEmploymentResponse> listServiceEmployment(
      $grpc.ServiceCall call, $2.ListServiceEmploymentRequest request);
  $async.Future<$2.CreateServiceEmploymentResponse> createServiceEmployment(
      $grpc.ServiceCall call, $2.CreateServiceEmploymentRequest request);
  $async.Future<$2.ReadServiceEmploymentResponse> readServiceEmployment(
      $grpc.ServiceCall call, $2.ReadServiceEmploymentRequest request);
  $async.Future<$2.UpdateServiceEmploymentResponse> updateServiceEmployment(
      $grpc.ServiceCall call, $2.UpdateServiceEmploymentRequest request);
  $async.Future<$2.DeleteServiceEmploymentResponse> deleteServiceEmployment(
      $grpc.ServiceCall call, $2.DeleteServiceEmploymentRequest request);
  $async.Future<$2.ListServiceDetailsResponse> listServiceDetails(
      $grpc.ServiceCall call, $2.ListServiceDetailsRequest request);
  $async.Future<$2.CreateServiceDetailsResponse> createServiceDetails(
      $grpc.ServiceCall call, $2.CreateServiceDetailsRequest request);
  $async.Future<$2.ReadServiceDetailsResponse> readServiceDetails(
      $grpc.ServiceCall call, $2.ReadServiceDetailsRequest request);
  $async.Future<$2.UpdateServiceDetailsResponse> updateServiceDetails(
      $grpc.ServiceCall call, $2.UpdateServiceDetailsRequest request);
  $async.Future<$2.DeleteServiceDetailsResponse> deleteServiceDetails(
      $grpc.ServiceCall call, $2.DeleteServiceDetailsRequest request);
  $async.Future<$2.ListServiceApplicationResponse> listServiceApplication(
      $grpc.ServiceCall call, $2.ListServiceApplicationRequest request);
  $async.Future<$2.CreateServiceApplicationResponse> createServiceApplication(
      $grpc.ServiceCall call, $2.CreateServiceApplicationRequest request);
  $async.Future<$2.ReadServiceApplicationResponse> readServiceApplication(
      $grpc.ServiceCall call, $2.ReadServiceApplicationRequest request);
  $async.Future<$2.UpdateServiceApplicationResponse> updateServiceApplication(
      $grpc.ServiceCall call, $2.UpdateServiceApplicationRequest request);
  $async.Future<$2.DeleteServiceApplicationResponse> deleteServiceApplication(
      $grpc.ServiceCall call, $2.DeleteServiceApplicationRequest request);
  $async.Future<$2.ListServiceProviderResponse> listServiceProvider(
      $grpc.ServiceCall call, $2.ListServiceProviderRequest request);
  $async.Future<$2.CreateServiceProviderResponse> createServiceProvider(
      $grpc.ServiceCall call, $2.CreateServiceProviderRequest request);
  $async.Future<$2.ReadServiceProviderResponse> readServiceProvider(
      $grpc.ServiceCall call, $2.ReadServiceProviderRequest request);
  $async.Future<$2.UpdateServiceProviderResponse> updateServiceProvider(
      $grpc.ServiceCall call, $2.UpdateServiceProviderRequest request);
  $async.Future<$2.DeleteServiceProviderResponse> deleteServiceProvider(
      $grpc.ServiceCall call, $2.DeleteServiceProviderRequest request);
}

class ServiceSessionStreamClient extends $grpc.Client {
  static final _$biDi = $grpc.ClientMethod<$2.StreamSessionInputEvent,
          $2.StreamSessionOutputEvent>(
      '/model.ServiceSessionStream/BiDi',
      ($2.StreamSessionInputEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.StreamSessionOutputEvent.fromBuffer(value));

  ServiceSessionStreamClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$2.StreamSessionOutputEvent> biDi(
      $async.Stream<$2.StreamSessionInputEvent> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$biDi, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ServiceSessionStreamServiceBase extends $grpc.Service {
  $core.String get $name => 'model.ServiceSessionStream';

  ServiceSessionStreamServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.StreamSessionInputEvent,
            $2.StreamSessionOutputEvent>(
        'BiDi',
        biDi,
        true,
        true,
        ($core.List<$core.int> value) =>
            $2.StreamSessionInputEvent.fromBuffer(value),
        ($2.StreamSessionOutputEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$2.StreamSessionOutputEvent> biDi($grpc.ServiceCall call,
      $async.Stream<$2.StreamSessionInputEvent> request);
}
