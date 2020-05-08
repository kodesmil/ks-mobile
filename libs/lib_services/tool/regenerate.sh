#!/usr/bin/env bash

GOHOME=/home/murbanski-personal/go/src

export GOOGLEAPIS=/home/murbanski-personal/KodeSmil/googleapis
export S_APIS=/home/murbanski-personal/go/src/github.com/kodesmil/go-patient-registry/pkg/pb
export N_APIS=/home/murbanski-personal/KodeSmil/universe/go_notifications/proto
export GO_GATEWAY_API=/home/murbanski-personal/go/src/github.com/grpc-ecosystem/grpc-gateway/
export INFO_BLOCKS_API=/home/murbanski-personal/go/proto

PROTOC="protoc --dart_out=grpc:lib/src/generated  -I$GOOGLEAPIS -I$GO_GATEWAY_API -I$GOHOME -I$INFO_BLOCKS_API -I$S_APIS -I$N_APIS"

$PROTOC $GOOGLEAPIS/google/logging/v2/logging.proto
$PROTOC $GOOGLEAPIS/google/logging/v2/log_entry.proto
$PROTOC $GOOGLEAPIS/google/logging/type/log_severity.proto
$PROTOC $GOOGLEAPIS/google/logging/type/http_request.proto

$PROTOC $GOOGLEAPIS/google/api/monitored_resource.proto
$PROTOC $GOOGLEAPIS/google/api/label.proto
$PROTOC $GOOGLEAPIS/google/api/launch_stage.proto
$PROTOC $GOOGLEAPIS/google/api/annotations.proto
$PROTOC $GOOGLEAPIS/google/type/date.proto

$PROTOC $GOOGLEAPIS/google/rpc/status.proto

$PROTOC $INFO_BLOCKS_API/google/protobuf/any.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/descriptor.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/duration.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/empty.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/struct.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/timestamp.proto
$PROTOC $INFO_BLOCKS_API/google/protobuf/field_mask.proto

$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/openapiv2.proto
$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/annotations.proto

$PROTOC $INFO_BLOCKS_API/infobloxopen/protoc-gen-gorm/options/gorm.proto
$PROTOC $INFO_BLOCKS_API/infobloxopen/protoc-gen-gorm/types/types.proto
$PROTOC $INFO_BLOCKS_API/infobloxopen/atlas-app-toolkit/query/collection_operators.proto
$PROTOC $INFO_BLOCKS_API/infobloxopen/atlas-app-toolkit/rpc/resource/resource.proto

$PROTOC $S_APIS/service.proto
$PROTOC $N_APIS/notification.proto

dartfmt -w lib/src/generated