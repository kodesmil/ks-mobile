#!/usr/bin/env bash

GOHOME=/home/murbanski/go/src

export S_APIS=/home/murbanski/go/src/github.com/kodesmil/go-patient-registry/pkg/pb
export GO_GATEWAY_API=/home/murbanski/go/src/github.com/grpc-ecosystem/grpc-gateway/
export PROTOS_API=/home/murbanski/go/proto

PROTOC="protoc --dart_out=grpc:lib/src/generated -I$GO_GATEWAY_API -I$GOHOME -I$PROTOS_API -I$PROTOS_API/googleapis -I$S_APIS"

$PROTOC $PROTOS_API/googleapis/google/logging/v2/logging.proto
$PROTOC $PROTOS_API/googleapis/google/logging/v2/log_entry.proto
$PROTOC $PROTOS_API/googleapis/google/logging/type/log_severity.proto
$PROTOC $PROTOS_API/googleapis/google/logging/type/http_request.proto

$PROTOC $PROTOS_API/googleapis/google/api/monitored_resource.proto
$PROTOC $PROTOS_API/googleapis/google/api/label.proto
$PROTOC $PROTOS_API/googleapis/google/api/launch_stage.proto
$PROTOC $PROTOS_API/googleapis/google/api/annotations.proto
$PROTOC $PROTOS_API/googleapis/google/type/date.proto

$PROTOC $PROTOS_API/googleapis/google/rpc/status.proto

$PROTOC $PROTOS_API/google/protobuf/any.proto
$PROTOC $PROTOS_API/google/protobuf/descriptor.proto
$PROTOC $PROTOS_API/google/protobuf/duration.proto
$PROTOC $PROTOS_API/google/protobuf/empty.proto
$PROTOC $PROTOS_API/google/protobuf/struct.proto
$PROTOC $PROTOS_API/google/protobuf/timestamp.proto
$PROTOC $PROTOS_API/google/protobuf/field_mask.proto

$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/openapiv2.proto
$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/annotations.proto

$PROTOC $PROTOS_API/infobloxopen/protoc-gen-gorm/options/gorm.proto
$PROTOC $PROTOS_API/infobloxopen/protoc-gen-gorm/types/types.proto
$PROTOC $PROTOS_API/infobloxopen/atlas-app-toolkit/query/collection_operators.proto
$PROTOC $PROTOS_API/infobloxopen/atlas-app-toolkit/rpc/resource/resource.proto

$PROTOC $S_APIS/service.proto

dartfmt -w lib/src/generated