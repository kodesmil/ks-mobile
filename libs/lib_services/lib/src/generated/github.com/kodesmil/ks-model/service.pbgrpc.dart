///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $6;
export 'service.pb.dart';

class ServicesClient extends $grpc.Client {
  static final _$listService =
      $grpc.ClientMethod<$6.ListServiceRequest, $6.ListServiceResponse>(
          '/model.Services/ListService',
          ($6.ListServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ListServiceResponse.fromBuffer(value));
  static final _$createService =
      $grpc.ClientMethod<$6.CreateServiceRequest, $6.CreateServiceResponse>(
          '/model.Services/CreateService',
          ($6.CreateServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.CreateServiceResponse.fromBuffer(value));
  static final _$readService =
      $grpc.ClientMethod<$6.ReadServiceRequest, $6.ReadServiceResponse>(
          '/model.Services/ReadService',
          ($6.ReadServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ReadServiceResponse.fromBuffer(value));
  static final _$updateService =
      $grpc.ClientMethod<$6.UpdateServiceRequest, $6.UpdateServiceResponse>(
          '/model.Services/UpdateService',
          ($6.UpdateServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UpdateServiceResponse.fromBuffer(value));
  static final _$deleteService =
      $grpc.ClientMethod<$6.DeleteServiceRequest, $6.DeleteServiceResponse>(
          '/model.Services/DeleteService',
          ($6.DeleteServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.DeleteServiceResponse.fromBuffer(value));
  static final _$listServiceSession = $grpc.ClientMethod<
          $6.ListServiceSessionRequest, $6.ListServiceSessionResponse>(
      '/model.Services/ListServiceSession',
      ($6.ListServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceSessionResponse.fromBuffer(value));
  static final _$createServiceSession = $grpc.ClientMethod<
          $6.CreateServiceSessionRequest, $6.CreateServiceSessionResponse>(
      '/model.Services/CreateServiceSession',
      ($6.CreateServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceSessionResponse.fromBuffer(value));
  static final _$readServiceSession = $grpc.ClientMethod<
          $6.ReadServiceSessionRequest, $6.ReadServiceSessionResponse>(
      '/model.Services/ReadServiceSession',
      ($6.ReadServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceSessionResponse.fromBuffer(value));
  static final _$updateServiceSession = $grpc.ClientMethod<
          $6.UpdateServiceSessionRequest, $6.UpdateServiceSessionResponse>(
      '/model.Services/UpdateServiceSession',
      ($6.UpdateServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceSessionResponse.fromBuffer(value));
  static final _$deleteServiceSession = $grpc.ClientMethod<
          $6.DeleteServiceSessionRequest, $6.DeleteServiceSessionResponse>(
      '/model.Services/DeleteServiceSession',
      ($6.DeleteServiceSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceSessionResponse.fromBuffer(value));
  static final _$listServiceTag =
      $grpc.ClientMethod<$6.ListServiceTagRequest, $6.ListServiceTagResponse>(
          '/model.Services/ListServiceTag',
          ($6.ListServiceTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ListServiceTagResponse.fromBuffer(value));
  static final _$createServiceTag = $grpc.ClientMethod<
          $6.CreateServiceTagRequest, $6.CreateServiceTagResponse>(
      '/model.Services/CreateServiceTag',
      ($6.CreateServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceTagResponse.fromBuffer(value));
  static final _$readServiceTag =
      $grpc.ClientMethod<$6.ReadServiceTagRequest, $6.ReadServiceTagResponse>(
          '/model.Services/ReadServiceTag',
          ($6.ReadServiceTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ReadServiceTagResponse.fromBuffer(value));
  static final _$updateServiceTag = $grpc.ClientMethod<
          $6.UpdateServiceTagRequest, $6.UpdateServiceTagResponse>(
      '/model.Services/UpdateServiceTag',
      ($6.UpdateServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceTagResponse.fromBuffer(value));
  static final _$deleteServiceTag = $grpc.ClientMethod<
          $6.DeleteServiceTagRequest, $6.DeleteServiceTagResponse>(
      '/model.Services/DeleteServiceTag',
      ($6.DeleteServiceTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceTagResponse.fromBuffer(value));
  static final _$listServiceInPerson = $grpc.ClientMethod<
          $6.ListServiceInPersonRequest, $6.ListServiceInPersonResponse>(
      '/model.Services/ListServiceInPerson',
      ($6.ListServiceInPersonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceInPersonResponse.fromBuffer(value));
  static final _$createServiceInPerson = $grpc.ClientMethod<
          $6.CreateServiceInPersonRequest, $6.CreateServiceInPersonResponse>(
      '/model.Services/CreateServiceInPerson',
      ($6.CreateServiceInPersonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceInPersonResponse.fromBuffer(value));
  static final _$readServiceInPerson = $grpc.ClientMethod<
          $6.ReadServiceInPersonRequest, $6.ReadServiceInPersonResponse>(
      '/model.Services/ReadServiceInPerson',
      ($6.ReadServiceInPersonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceInPersonResponse.fromBuffer(value));
  static final _$updateServiceInPerson = $grpc.ClientMethod<
          $6.UpdateServiceInPersonRequest, $6.UpdateServiceInPersonResponse>(
      '/model.Services/UpdateServiceInPerson',
      ($6.UpdateServiceInPersonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceInPersonResponse.fromBuffer(value));
  static final _$deleteServiceInPerson = $grpc.ClientMethod<
          $6.DeleteServiceInPersonRequest, $6.DeleteServiceInPersonResponse>(
      '/model.Services/DeleteServiceInPerson',
      ($6.DeleteServiceInPersonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceInPersonResponse.fromBuffer(value));
  static final _$listServiceOffer = $grpc.ClientMethod<
          $6.ListServiceOfferRequest, $6.ListServiceOfferResponse>(
      '/model.Services/ListServiceOffer',
      ($6.ListServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceOfferResponse.fromBuffer(value));
  static final _$createServiceOffer = $grpc.ClientMethod<
          $6.CreateServiceOfferRequest, $6.CreateServiceOfferResponse>(
      '/model.Services/CreateServiceOffer',
      ($6.CreateServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceOfferResponse.fromBuffer(value));
  static final _$readServiceOffer = $grpc.ClientMethod<
          $6.ReadServiceOfferRequest, $6.ReadServiceOfferResponse>(
      '/model.Services/ReadServiceOffer',
      ($6.ReadServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceOfferResponse.fromBuffer(value));
  static final _$updateServiceOffer = $grpc.ClientMethod<
          $6.UpdateServiceOfferRequest, $6.UpdateServiceOfferResponse>(
      '/model.Services/UpdateServiceOffer',
      ($6.UpdateServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceOfferResponse.fromBuffer(value));
  static final _$deleteServiceOffer = $grpc.ClientMethod<
          $6.DeleteServiceOfferRequest, $6.DeleteServiceOfferResponse>(
      '/model.Services/DeleteServiceOffer',
      ($6.DeleteServiceOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceOfferResponse.fromBuffer(value));
  static final _$listServiceApplicationFile = $grpc.ClientMethod<
          $6.ListServiceApplicationFileRequest,
          $6.ListServiceApplicationFileResponse>(
      '/model.Services/ListServiceApplicationFile',
      ($6.ListServiceApplicationFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceApplicationFileResponse.fromBuffer(value));
  static final _$createServiceApplicationFile = $grpc.ClientMethod<
          $6.CreateServiceApplicationFileRequest,
          $6.CreateServiceApplicationFileResponse>(
      '/model.Services/CreateServiceApplicationFile',
      ($6.CreateServiceApplicationFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceApplicationFileResponse.fromBuffer(value));
  static final _$readServiceApplicationFile = $grpc.ClientMethod<
          $6.ReadServiceApplicationFileRequest,
          $6.ReadServiceApplicationFileResponse>(
      '/model.Services/ReadServiceApplicationFile',
      ($6.ReadServiceApplicationFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceApplicationFileResponse.fromBuffer(value));
  static final _$updateServiceApplicationFile = $grpc.ClientMethod<
          $6.UpdateServiceApplicationFileRequest,
          $6.UpdateServiceApplicationFileResponse>(
      '/model.Services/UpdateServiceApplicationFile',
      ($6.UpdateServiceApplicationFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceApplicationFileResponse.fromBuffer(value));
  static final _$deleteServiceApplicationFile = $grpc.ClientMethod<
          $6.DeleteServiceApplicationFileRequest,
          $6.DeleteServiceApplicationFileResponse>(
      '/model.Services/DeleteServiceApplicationFile',
      ($6.DeleteServiceApplicationFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceApplicationFileResponse.fromBuffer(value));
  static final _$listServiceApplication = $grpc.ClientMethod<
          $6.ListServiceApplicationRequest, $6.ListServiceApplicationResponse>(
      '/model.Services/ListServiceApplication',
      ($6.ListServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceApplicationResponse.fromBuffer(value));
  static final _$createServiceApplication = $grpc.ClientMethod<
          $6.CreateServiceApplicationRequest,
          $6.CreateServiceApplicationResponse>(
      '/model.Services/CreateServiceApplication',
      ($6.CreateServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceApplicationResponse.fromBuffer(value));
  static final _$readServiceApplication = $grpc.ClientMethod<
          $6.ReadServiceApplicationRequest, $6.ReadServiceApplicationResponse>(
      '/model.Services/ReadServiceApplication',
      ($6.ReadServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceApplicationResponse.fromBuffer(value));
  static final _$updateServiceApplication = $grpc.ClientMethod<
          $6.UpdateServiceApplicationRequest,
          $6.UpdateServiceApplicationResponse>(
      '/model.Services/UpdateServiceApplication',
      ($6.UpdateServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceApplicationResponse.fromBuffer(value));
  static final _$deleteServiceApplication = $grpc.ClientMethod<
          $6.DeleteServiceApplicationRequest,
          $6.DeleteServiceApplicationResponse>(
      '/model.Services/DeleteServiceApplication',
      ($6.DeleteServiceApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceApplicationResponse.fromBuffer(value));
  static final _$listServiceProvider = $grpc.ClientMethod<
          $6.ListServiceProviderRequest, $6.ListServiceProviderResponse>(
      '/model.Services/ListServiceProvider',
      ($6.ListServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListServiceProviderResponse.fromBuffer(value));
  static final _$createServiceProvider = $grpc.ClientMethod<
          $6.CreateServiceProviderRequest, $6.CreateServiceProviderResponse>(
      '/model.Services/CreateServiceProvider',
      ($6.CreateServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateServiceProviderResponse.fromBuffer(value));
  static final _$readServiceProvider = $grpc.ClientMethod<
          $6.ReadServiceProviderRequest, $6.ReadServiceProviderResponse>(
      '/model.Services/ReadServiceProvider',
      ($6.ReadServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ReadServiceProviderResponse.fromBuffer(value));
  static final _$updateServiceProvider = $grpc.ClientMethod<
          $6.UpdateServiceProviderRequest, $6.UpdateServiceProviderResponse>(
      '/model.Services/UpdateServiceProvider',
      ($6.UpdateServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateServiceProviderResponse.fromBuffer(value));
  static final _$deleteServiceProvider = $grpc.ClientMethod<
          $6.DeleteServiceProviderRequest, $6.DeleteServiceProviderResponse>(
      '/model.Services/DeleteServiceProvider',
      ($6.DeleteServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteServiceProviderResponse.fromBuffer(value));

  ServicesClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.ListServiceResponse> listService(
      $6.ListServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceResponse> createService(
      $6.CreateServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceResponse> readService(
      $6.ReadServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceResponse> updateService(
      $6.UpdateServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceResponse> deleteService(
      $6.DeleteServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceSessionResponse> listServiceSession(
      $6.ListServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceSessionResponse> createServiceSession(
      $6.CreateServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceSessionResponse> readServiceSession(
      $6.ReadServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceSessionResponse> updateServiceSession(
      $6.UpdateServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceSessionResponse> deleteServiceSession(
      $6.DeleteServiceSessionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceSession, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceTagResponse> listServiceTag(
      $6.ListServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceTagResponse> createServiceTag(
      $6.CreateServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceTagResponse> readServiceTag(
      $6.ReadServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceTagResponse> updateServiceTag(
      $6.UpdateServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceTagResponse> deleteServiceTag(
      $6.DeleteServiceTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceTag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceInPersonResponse> listServiceInPerson(
      $6.ListServiceInPersonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceInPerson, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceInPersonResponse> createServiceInPerson(
      $6.CreateServiceInPersonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceInPerson, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceInPersonResponse> readServiceInPerson(
      $6.ReadServiceInPersonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceInPerson, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceInPersonResponse> updateServiceInPerson(
      $6.UpdateServiceInPersonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceInPerson, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceInPersonResponse> deleteServiceInPerson(
      $6.DeleteServiceInPersonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceInPerson, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceOfferResponse> listServiceOffer(
      $6.ListServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceOfferResponse> createServiceOffer(
      $6.CreateServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceOfferResponse> readServiceOffer(
      $6.ReadServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceOfferResponse> updateServiceOffer(
      $6.UpdateServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceOfferResponse> deleteServiceOffer(
      $6.DeleteServiceOfferRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceOffer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceApplicationFileResponse>
      listServiceApplicationFile($6.ListServiceApplicationFileRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceApplicationFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceApplicationFileResponse>
      createServiceApplicationFile(
          $6.CreateServiceApplicationFileRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceApplicationFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceApplicationFileResponse>
      readServiceApplicationFile($6.ReadServiceApplicationFileRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceApplicationFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceApplicationFileResponse>
      updateServiceApplicationFile(
          $6.UpdateServiceApplicationFileRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceApplicationFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceApplicationFileResponse>
      deleteServiceApplicationFile(
          $6.DeleteServiceApplicationFileRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceApplicationFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceApplicationResponse>
      listServiceApplication($6.ListServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceApplicationResponse>
      createServiceApplication($6.CreateServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceApplicationResponse>
      readServiceApplication($6.ReadServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceApplicationResponse>
      updateServiceApplication($6.UpdateServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceApplicationResponse>
      deleteServiceApplication($6.DeleteServiceApplicationRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteServiceApplication, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ListServiceProviderResponse> listServiceProvider(
      $6.ListServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.CreateServiceProviderResponse> createServiceProvider(
      $6.CreateServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.ReadServiceProviderResponse> readServiceProvider(
      $6.ReadServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.UpdateServiceProviderResponse> updateServiceProvider(
      $6.UpdateServiceProviderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateServiceProvider, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.DeleteServiceProviderResponse> deleteServiceProvider(
      $6.DeleteServiceProviderRequest request,
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
        $grpc.ServiceMethod<$6.ListServiceRequest, $6.ListServiceResponse>(
            'ListService',
            listService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.ListServiceRequest.fromBuffer(value),
            ($6.ListServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.CreateServiceRequest, $6.CreateServiceResponse>(
            'CreateService',
            createService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.CreateServiceRequest.fromBuffer(value),
            ($6.CreateServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.ReadServiceRequest, $6.ReadServiceResponse>(
            'ReadService',
            readService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.ReadServiceRequest.fromBuffer(value),
            ($6.ReadServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.UpdateServiceRequest, $6.UpdateServiceResponse>(
            'UpdateService',
            updateService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.UpdateServiceRequest.fromBuffer(value),
            ($6.UpdateServiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.DeleteServiceRequest, $6.DeleteServiceResponse>(
            'DeleteService',
            deleteService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.DeleteServiceRequest.fromBuffer(value),
            ($6.DeleteServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceSessionRequest,
            $6.ListServiceSessionResponse>(
        'ListServiceSession',
        listServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceSessionRequest.fromBuffer(value),
        ($6.ListServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceSessionRequest,
            $6.CreateServiceSessionResponse>(
        'CreateServiceSession',
        createServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceSessionRequest.fromBuffer(value),
        ($6.CreateServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceSessionRequest,
            $6.ReadServiceSessionResponse>(
        'ReadServiceSession',
        readServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceSessionRequest.fromBuffer(value),
        ($6.ReadServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceSessionRequest,
            $6.UpdateServiceSessionResponse>(
        'UpdateServiceSession',
        updateServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceSessionRequest.fromBuffer(value),
        ($6.UpdateServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceSessionRequest,
            $6.DeleteServiceSessionResponse>(
        'DeleteServiceSession',
        deleteServiceSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceSessionRequest.fromBuffer(value),
        ($6.DeleteServiceSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceTagRequest,
            $6.ListServiceTagResponse>(
        'ListServiceTag',
        listServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceTagRequest.fromBuffer(value),
        ($6.ListServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceTagRequest,
            $6.CreateServiceTagResponse>(
        'CreateServiceTag',
        createServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceTagRequest.fromBuffer(value),
        ($6.CreateServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceTagRequest,
            $6.ReadServiceTagResponse>(
        'ReadServiceTag',
        readServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceTagRequest.fromBuffer(value),
        ($6.ReadServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceTagRequest,
            $6.UpdateServiceTagResponse>(
        'UpdateServiceTag',
        updateServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceTagRequest.fromBuffer(value),
        ($6.UpdateServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceTagRequest,
            $6.DeleteServiceTagResponse>(
        'DeleteServiceTag',
        deleteServiceTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceTagRequest.fromBuffer(value),
        ($6.DeleteServiceTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceInPersonRequest,
            $6.ListServiceInPersonResponse>(
        'ListServiceInPerson',
        listServiceInPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceInPersonRequest.fromBuffer(value),
        ($6.ListServiceInPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceInPersonRequest,
            $6.CreateServiceInPersonResponse>(
        'CreateServiceInPerson',
        createServiceInPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceInPersonRequest.fromBuffer(value),
        ($6.CreateServiceInPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceInPersonRequest,
            $6.ReadServiceInPersonResponse>(
        'ReadServiceInPerson',
        readServiceInPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceInPersonRequest.fromBuffer(value),
        ($6.ReadServiceInPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceInPersonRequest,
            $6.UpdateServiceInPersonResponse>(
        'UpdateServiceInPerson',
        updateServiceInPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceInPersonRequest.fromBuffer(value),
        ($6.UpdateServiceInPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceInPersonRequest,
            $6.DeleteServiceInPersonResponse>(
        'DeleteServiceInPerson',
        deleteServiceInPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceInPersonRequest.fromBuffer(value),
        ($6.DeleteServiceInPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceOfferRequest,
            $6.ListServiceOfferResponse>(
        'ListServiceOffer',
        listServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceOfferRequest.fromBuffer(value),
        ($6.ListServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceOfferRequest,
            $6.CreateServiceOfferResponse>(
        'CreateServiceOffer',
        createServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceOfferRequest.fromBuffer(value),
        ($6.CreateServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceOfferRequest,
            $6.ReadServiceOfferResponse>(
        'ReadServiceOffer',
        readServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceOfferRequest.fromBuffer(value),
        ($6.ReadServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceOfferRequest,
            $6.UpdateServiceOfferResponse>(
        'UpdateServiceOffer',
        updateServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceOfferRequest.fromBuffer(value),
        ($6.UpdateServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceOfferRequest,
            $6.DeleteServiceOfferResponse>(
        'DeleteServiceOffer',
        deleteServiceOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceOfferRequest.fromBuffer(value),
        ($6.DeleteServiceOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceApplicationFileRequest,
            $6.ListServiceApplicationFileResponse>(
        'ListServiceApplicationFile',
        listServiceApplicationFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceApplicationFileRequest.fromBuffer(value),
        ($6.ListServiceApplicationFileResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceApplicationFileRequest,
            $6.CreateServiceApplicationFileResponse>(
        'CreateServiceApplicationFile',
        createServiceApplicationFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceApplicationFileRequest.fromBuffer(value),
        ($6.CreateServiceApplicationFileResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceApplicationFileRequest,
            $6.ReadServiceApplicationFileResponse>(
        'ReadServiceApplicationFile',
        readServiceApplicationFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceApplicationFileRequest.fromBuffer(value),
        ($6.ReadServiceApplicationFileResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceApplicationFileRequest,
            $6.UpdateServiceApplicationFileResponse>(
        'UpdateServiceApplicationFile',
        updateServiceApplicationFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceApplicationFileRequest.fromBuffer(value),
        ($6.UpdateServiceApplicationFileResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceApplicationFileRequest,
            $6.DeleteServiceApplicationFileResponse>(
        'DeleteServiceApplicationFile',
        deleteServiceApplicationFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceApplicationFileRequest.fromBuffer(value),
        ($6.DeleteServiceApplicationFileResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceApplicationRequest,
            $6.ListServiceApplicationResponse>(
        'ListServiceApplication',
        listServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceApplicationRequest.fromBuffer(value),
        ($6.ListServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceApplicationRequest,
            $6.CreateServiceApplicationResponse>(
        'CreateServiceApplication',
        createServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceApplicationRequest.fromBuffer(value),
        ($6.CreateServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceApplicationRequest,
            $6.ReadServiceApplicationResponse>(
        'ReadServiceApplication',
        readServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceApplicationRequest.fromBuffer(value),
        ($6.ReadServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceApplicationRequest,
            $6.UpdateServiceApplicationResponse>(
        'UpdateServiceApplication',
        updateServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceApplicationRequest.fromBuffer(value),
        ($6.UpdateServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceApplicationRequest,
            $6.DeleteServiceApplicationResponse>(
        'DeleteServiceApplication',
        deleteServiceApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceApplicationRequest.fromBuffer(value),
        ($6.DeleteServiceApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListServiceProviderRequest,
            $6.ListServiceProviderResponse>(
        'ListServiceProvider',
        listServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListServiceProviderRequest.fromBuffer(value),
        ($6.ListServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceProviderRequest,
            $6.CreateServiceProviderResponse>(
        'CreateServiceProvider',
        createServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateServiceProviderRequest.fromBuffer(value),
        ($6.CreateServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadServiceProviderRequest,
            $6.ReadServiceProviderResponse>(
        'ReadServiceProvider',
        readServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ReadServiceProviderRequest.fromBuffer(value),
        ($6.ReadServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceProviderRequest,
            $6.UpdateServiceProviderResponse>(
        'UpdateServiceProvider',
        updateServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateServiceProviderRequest.fromBuffer(value),
        ($6.UpdateServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteServiceProviderRequest,
            $6.DeleteServiceProviderResponse>(
        'DeleteServiceProvider',
        deleteServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteServiceProviderRequest.fromBuffer(value),
        ($6.DeleteServiceProviderResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.ListServiceResponse> listService_Pre($grpc.ServiceCall call,
      $async.Future<$6.ListServiceRequest> request) async {
    return listService(call, await request);
  }

  $async.Future<$6.CreateServiceResponse> createService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceRequest> request) async {
    return createService(call, await request);
  }

  $async.Future<$6.ReadServiceResponse> readService_Pre($grpc.ServiceCall call,
      $async.Future<$6.ReadServiceRequest> request) async {
    return readService(call, await request);
  }

  $async.Future<$6.UpdateServiceResponse> updateService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceRequest> request) async {
    return updateService(call, await request);
  }

  $async.Future<$6.DeleteServiceResponse> deleteService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceRequest> request) async {
    return deleteService(call, await request);
  }

  $async.Future<$6.ListServiceSessionResponse> listServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceSessionRequest> request) async {
    return listServiceSession(call, await request);
  }

  $async.Future<$6.CreateServiceSessionResponse> createServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceSessionRequest> request) async {
    return createServiceSession(call, await request);
  }

  $async.Future<$6.ReadServiceSessionResponse> readServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceSessionRequest> request) async {
    return readServiceSession(call, await request);
  }

  $async.Future<$6.UpdateServiceSessionResponse> updateServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceSessionRequest> request) async {
    return updateServiceSession(call, await request);
  }

  $async.Future<$6.DeleteServiceSessionResponse> deleteServiceSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceSessionRequest> request) async {
    return deleteServiceSession(call, await request);
  }

  $async.Future<$6.ListServiceTagResponse> listServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceTagRequest> request) async {
    return listServiceTag(call, await request);
  }

  $async.Future<$6.CreateServiceTagResponse> createServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceTagRequest> request) async {
    return createServiceTag(call, await request);
  }

  $async.Future<$6.ReadServiceTagResponse> readServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceTagRequest> request) async {
    return readServiceTag(call, await request);
  }

  $async.Future<$6.UpdateServiceTagResponse> updateServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceTagRequest> request) async {
    return updateServiceTag(call, await request);
  }

  $async.Future<$6.DeleteServiceTagResponse> deleteServiceTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceTagRequest> request) async {
    return deleteServiceTag(call, await request);
  }

  $async.Future<$6.ListServiceInPersonResponse> listServiceInPerson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceInPersonRequest> request) async {
    return listServiceInPerson(call, await request);
  }

  $async.Future<$6.CreateServiceInPersonResponse> createServiceInPerson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceInPersonRequest> request) async {
    return createServiceInPerson(call, await request);
  }

  $async.Future<$6.ReadServiceInPersonResponse> readServiceInPerson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceInPersonRequest> request) async {
    return readServiceInPerson(call, await request);
  }

  $async.Future<$6.UpdateServiceInPersonResponse> updateServiceInPerson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceInPersonRequest> request) async {
    return updateServiceInPerson(call, await request);
  }

  $async.Future<$6.DeleteServiceInPersonResponse> deleteServiceInPerson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceInPersonRequest> request) async {
    return deleteServiceInPerson(call, await request);
  }

  $async.Future<$6.ListServiceOfferResponse> listServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceOfferRequest> request) async {
    return listServiceOffer(call, await request);
  }

  $async.Future<$6.CreateServiceOfferResponse> createServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceOfferRequest> request) async {
    return createServiceOffer(call, await request);
  }

  $async.Future<$6.ReadServiceOfferResponse> readServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceOfferRequest> request) async {
    return readServiceOffer(call, await request);
  }

  $async.Future<$6.UpdateServiceOfferResponse> updateServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceOfferRequest> request) async {
    return updateServiceOffer(call, await request);
  }

  $async.Future<$6.DeleteServiceOfferResponse> deleteServiceOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceOfferRequest> request) async {
    return deleteServiceOffer(call, await request);
  }

  $async.Future<$6.ListServiceApplicationFileResponse>
      listServiceApplicationFile_Pre($grpc.ServiceCall call,
          $async.Future<$6.ListServiceApplicationFileRequest> request) async {
    return listServiceApplicationFile(call, await request);
  }

  $async.Future<$6.CreateServiceApplicationFileResponse>
      createServiceApplicationFile_Pre($grpc.ServiceCall call,
          $async.Future<$6.CreateServiceApplicationFileRequest> request) async {
    return createServiceApplicationFile(call, await request);
  }

  $async.Future<$6.ReadServiceApplicationFileResponse>
      readServiceApplicationFile_Pre($grpc.ServiceCall call,
          $async.Future<$6.ReadServiceApplicationFileRequest> request) async {
    return readServiceApplicationFile(call, await request);
  }

  $async.Future<$6.UpdateServiceApplicationFileResponse>
      updateServiceApplicationFile_Pre($grpc.ServiceCall call,
          $async.Future<$6.UpdateServiceApplicationFileRequest> request) async {
    return updateServiceApplicationFile(call, await request);
  }

  $async.Future<$6.DeleteServiceApplicationFileResponse>
      deleteServiceApplicationFile_Pre($grpc.ServiceCall call,
          $async.Future<$6.DeleteServiceApplicationFileRequest> request) async {
    return deleteServiceApplicationFile(call, await request);
  }

  $async.Future<$6.ListServiceApplicationResponse> listServiceApplication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceApplicationRequest> request) async {
    return listServiceApplication(call, await request);
  }

  $async.Future<$6.CreateServiceApplicationResponse>
      createServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$6.CreateServiceApplicationRequest> request) async {
    return createServiceApplication(call, await request);
  }

  $async.Future<$6.ReadServiceApplicationResponse> readServiceApplication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceApplicationRequest> request) async {
    return readServiceApplication(call, await request);
  }

  $async.Future<$6.UpdateServiceApplicationResponse>
      updateServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$6.UpdateServiceApplicationRequest> request) async {
    return updateServiceApplication(call, await request);
  }

  $async.Future<$6.DeleteServiceApplicationResponse>
      deleteServiceApplication_Pre($grpc.ServiceCall call,
          $async.Future<$6.DeleteServiceApplicationRequest> request) async {
    return deleteServiceApplication(call, await request);
  }

  $async.Future<$6.ListServiceProviderResponse> listServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListServiceProviderRequest> request) async {
    return listServiceProvider(call, await request);
  }

  $async.Future<$6.CreateServiceProviderResponse> createServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateServiceProviderRequest> request) async {
    return createServiceProvider(call, await request);
  }

  $async.Future<$6.ReadServiceProviderResponse> readServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ReadServiceProviderRequest> request) async {
    return readServiceProvider(call, await request);
  }

  $async.Future<$6.UpdateServiceProviderResponse> updateServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateServiceProviderRequest> request) async {
    return updateServiceProvider(call, await request);
  }

  $async.Future<$6.DeleteServiceProviderResponse> deleteServiceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteServiceProviderRequest> request) async {
    return deleteServiceProvider(call, await request);
  }

  $async.Future<$6.ListServiceResponse> listService(
      $grpc.ServiceCall call, $6.ListServiceRequest request);
  $async.Future<$6.CreateServiceResponse> createService(
      $grpc.ServiceCall call, $6.CreateServiceRequest request);
  $async.Future<$6.ReadServiceResponse> readService(
      $grpc.ServiceCall call, $6.ReadServiceRequest request);
  $async.Future<$6.UpdateServiceResponse> updateService(
      $grpc.ServiceCall call, $6.UpdateServiceRequest request);
  $async.Future<$6.DeleteServiceResponse> deleteService(
      $grpc.ServiceCall call, $6.DeleteServiceRequest request);
  $async.Future<$6.ListServiceSessionResponse> listServiceSession(
      $grpc.ServiceCall call, $6.ListServiceSessionRequest request);
  $async.Future<$6.CreateServiceSessionResponse> createServiceSession(
      $grpc.ServiceCall call, $6.CreateServiceSessionRequest request);
  $async.Future<$6.ReadServiceSessionResponse> readServiceSession(
      $grpc.ServiceCall call, $6.ReadServiceSessionRequest request);
  $async.Future<$6.UpdateServiceSessionResponse> updateServiceSession(
      $grpc.ServiceCall call, $6.UpdateServiceSessionRequest request);
  $async.Future<$6.DeleteServiceSessionResponse> deleteServiceSession(
      $grpc.ServiceCall call, $6.DeleteServiceSessionRequest request);
  $async.Future<$6.ListServiceTagResponse> listServiceTag(
      $grpc.ServiceCall call, $6.ListServiceTagRequest request);
  $async.Future<$6.CreateServiceTagResponse> createServiceTag(
      $grpc.ServiceCall call, $6.CreateServiceTagRequest request);
  $async.Future<$6.ReadServiceTagResponse> readServiceTag(
      $grpc.ServiceCall call, $6.ReadServiceTagRequest request);
  $async.Future<$6.UpdateServiceTagResponse> updateServiceTag(
      $grpc.ServiceCall call, $6.UpdateServiceTagRequest request);
  $async.Future<$6.DeleteServiceTagResponse> deleteServiceTag(
      $grpc.ServiceCall call, $6.DeleteServiceTagRequest request);
  $async.Future<$6.ListServiceInPersonResponse> listServiceInPerson(
      $grpc.ServiceCall call, $6.ListServiceInPersonRequest request);
  $async.Future<$6.CreateServiceInPersonResponse> createServiceInPerson(
      $grpc.ServiceCall call, $6.CreateServiceInPersonRequest request);
  $async.Future<$6.ReadServiceInPersonResponse> readServiceInPerson(
      $grpc.ServiceCall call, $6.ReadServiceInPersonRequest request);
  $async.Future<$6.UpdateServiceInPersonResponse> updateServiceInPerson(
      $grpc.ServiceCall call, $6.UpdateServiceInPersonRequest request);
  $async.Future<$6.DeleteServiceInPersonResponse> deleteServiceInPerson(
      $grpc.ServiceCall call, $6.DeleteServiceInPersonRequest request);
  $async.Future<$6.ListServiceOfferResponse> listServiceOffer(
      $grpc.ServiceCall call, $6.ListServiceOfferRequest request);
  $async.Future<$6.CreateServiceOfferResponse> createServiceOffer(
      $grpc.ServiceCall call, $6.CreateServiceOfferRequest request);
  $async.Future<$6.ReadServiceOfferResponse> readServiceOffer(
      $grpc.ServiceCall call, $6.ReadServiceOfferRequest request);
  $async.Future<$6.UpdateServiceOfferResponse> updateServiceOffer(
      $grpc.ServiceCall call, $6.UpdateServiceOfferRequest request);
  $async.Future<$6.DeleteServiceOfferResponse> deleteServiceOffer(
      $grpc.ServiceCall call, $6.DeleteServiceOfferRequest request);
  $async.Future<$6.ListServiceApplicationFileResponse>
      listServiceApplicationFile(
          $grpc.ServiceCall call, $6.ListServiceApplicationFileRequest request);
  $async.Future<$6.CreateServiceApplicationFileResponse>
      createServiceApplicationFile($grpc.ServiceCall call,
          $6.CreateServiceApplicationFileRequest request);
  $async.Future<$6.ReadServiceApplicationFileResponse>
      readServiceApplicationFile(
          $grpc.ServiceCall call, $6.ReadServiceApplicationFileRequest request);
  $async.Future<$6.UpdateServiceApplicationFileResponse>
      updateServiceApplicationFile($grpc.ServiceCall call,
          $6.UpdateServiceApplicationFileRequest request);
  $async.Future<$6.DeleteServiceApplicationFileResponse>
      deleteServiceApplicationFile($grpc.ServiceCall call,
          $6.DeleteServiceApplicationFileRequest request);
  $async.Future<$6.ListServiceApplicationResponse> listServiceApplication(
      $grpc.ServiceCall call, $6.ListServiceApplicationRequest request);
  $async.Future<$6.CreateServiceApplicationResponse> createServiceApplication(
      $grpc.ServiceCall call, $6.CreateServiceApplicationRequest request);
  $async.Future<$6.ReadServiceApplicationResponse> readServiceApplication(
      $grpc.ServiceCall call, $6.ReadServiceApplicationRequest request);
  $async.Future<$6.UpdateServiceApplicationResponse> updateServiceApplication(
      $grpc.ServiceCall call, $6.UpdateServiceApplicationRequest request);
  $async.Future<$6.DeleteServiceApplicationResponse> deleteServiceApplication(
      $grpc.ServiceCall call, $6.DeleteServiceApplicationRequest request);
  $async.Future<$6.ListServiceProviderResponse> listServiceProvider(
      $grpc.ServiceCall call, $6.ListServiceProviderRequest request);
  $async.Future<$6.CreateServiceProviderResponse> createServiceProvider(
      $grpc.ServiceCall call, $6.CreateServiceProviderRequest request);
  $async.Future<$6.ReadServiceProviderResponse> readServiceProvider(
      $grpc.ServiceCall call, $6.ReadServiceProviderRequest request);
  $async.Future<$6.UpdateServiceProviderResponse> updateServiceProvider(
      $grpc.ServiceCall call, $6.UpdateServiceProviderRequest request);
  $async.Future<$6.DeleteServiceProviderResponse> deleteServiceProvider(
      $grpc.ServiceCall call, $6.DeleteServiceProviderRequest request);
}
