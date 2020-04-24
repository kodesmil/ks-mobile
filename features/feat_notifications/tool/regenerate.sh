#!/usr/bin/env bash

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to your clone of google/protobuf."
  exit 1
fi

if [ ! -d "$GOOGLEAPIS" ]; then
  echo "Please set the GOOGLEAPIS environment variable to your clone of googleapis/googleapis."
  exit 1
fi

if [ ! -d "$N_APIS" ]; then
  echo "Please set the $N_APIS environment variable to your clone of go_notifications"
  exit 1
fi

PROTOC="protoc --dart_out=grpc:lib/src/generated -I$PROTOBUF/src -I$GOOGLEAPIS -I$GO_GATEWAY_API -I$INFO_BLOCKS_API -I$S_APIS -I$N_APIS"

$PROTOC $GOOGLEAPIS/google/logging/v2/logging.proto
$PROTOC $GOOGLEAPIS/google/logging/v2/log_entry.proto
$PROTOC $GOOGLEAPIS/google/logging/type/log_severity.proto
$PROTOC $GOOGLEAPIS/google/logging/type/http_request.proto

$PROTOC $GOOGLEAPIS/google/api/monitored_resource.proto
$PROTOC $GOOGLEAPIS/google/api/label.proto
$PROTOC $GOOGLEAPIS/google/api/launch_stage.proto
$PROTOC $GOOGLEAPIS/google/api/annotations.proto

$PROTOC $GOOGLEAPIS/google/rpc/status.proto

$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/descriptor.proto
$PROTOC $PROTOBUF/src/google/protobuf/duration.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/struct.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto
$PROTOC $PROTOBUF/src/google/protobuf/field_mask.proto

$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/openapiv2.proto
$PROTOC $GO_GATEWAY_API/protoc-gen-swagger/options/annotations.proto

$PROTOC $INFO_BLOCKS_API/protoc-gen-gorm/options/gorm.proto
$PROTOC $INFO_BLOCKS_API/protoc-gen-gorm/types/types.proto
$PROTOC $INFO_BLOCKS_API/atlas-app-toolkit/query/collection_operators.proto
$PROTOC $INFO_BLOCKS_API/atlas-app-toolkit/rpc/resource/resource.proto

$PROTOC $S_APIS/service.proto
$PROTOC $N_APIS/notification.proto

dartfmt -w lib/src/generated