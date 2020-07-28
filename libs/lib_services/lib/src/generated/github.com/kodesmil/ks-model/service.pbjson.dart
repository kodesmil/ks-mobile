///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ServiceTag$json = const {
  '1': 'ServiceTag',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'key'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'services', '3': 4, '4': 3, '5': 11, '6': '.model.Service', '8': const {}, '10': 'services'},
  ],
  '7': const {},
};

const Service$json = const {
  '1': 'Service',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.model.Service.Type', '10': 'type'},
    const {'1': 'tags', '3': 6, '4': 3, '5': 11, '6': '.model.ServiceTag', '10': 'tags'},
  ],
  '4': const [Service_Type$json],
  '7': const {},
};

const Service_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'MEDICAL', '2': 0},
    const {'1': 'FITNESS', '2': 1},
  ],
};

const ServiceOffer$json = const {
  '1': 'ServiceOffer',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'price', '3': 4, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'service', '3': 6, '4': 1, '5': 11, '6': '.model.Service', '10': 'service'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'provider', '3': 8, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'provider'},
  ],
  '7': const {},
};

const ServiceInPerson$json = const {
  '1': 'ServiceInPerson',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'first_name', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
  ],
  '7': const {},
};

const ServiceApplication$json = const {
  '1': 'ServiceApplication',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'provider', '3': 4, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'provider'},
    const {'1': 'files', '3': 5, '4': 3, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'files'},
    const {'1': 'applied_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'appliedAt'},
    const {'1': 'approved_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'approvedAt'},
    const {'1': 'approved_by', '3': 8, '4': 1, '5': 11, '6': '.model.Profile', '10': 'approvedBy'},
  ],
  '7': const {},
};

const ServiceApplicationFile$json = const {
  '1': 'ServiceApplicationFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
  ],
  '7': const {},
};

const ServiceProvider$json = const {
  '1': 'ServiceProvider',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'offers', '3': 4, '4': 3, '5': 11, '6': '.model.ServiceOffer', '10': 'offers'},
    const {'1': 'service_in_person', '3': 5, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'serviceInPerson'},
  ],
  '7': const {},
};

const ServiceSession$json = const {
  '1': 'ServiceSession',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'scheduled_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'scheduledAt'},
    const {'1': 'finished_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'finishedAt'},
    const {'1': 'client', '3': 6, '4': 1, '5': 11, '6': '.model.Profile', '10': 'client'},
    const {'1': 'offer', '3': 7, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'offer'},
  ],
  '7': const {},
};

const CreateServiceSessionRequest$json = const {
  '1': 'CreateServiceSessionRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'payload'},
  ],
};

const CreateServiceSessionResponse$json = const {
  '1': 'CreateServiceSessionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'result'},
  ],
};

const ReadServiceSessionRequest$json = const {
  '1': 'ReadServiceSessionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceSessionResponse$json = const {
  '1': 'ReadServiceSessionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'result'},
  ],
};

const UpdateServiceSessionRequest$json = const {
  '1': 'UpdateServiceSessionRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'payload'},
  ],
};

const UpdateServiceSessionResponse$json = const {
  '1': 'UpdateServiceSessionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'result'},
  ],
};

const DeleteServiceSessionRequest$json = const {
  '1': 'DeleteServiceSessionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceSessionResponse$json = const {
  '1': 'DeleteServiceSessionResponse',
};

const ListServiceSessionRequest$json = const {
  '1': 'ListServiceSessionRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceSessionResponse$json = const {
  '1': 'ListServiceSessionResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceSession', '10': 'results'},
  ],
};

const CreateServiceProviderRequest$json = const {
  '1': 'CreateServiceProviderRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'payload'},
  ],
};

const CreateServiceProviderResponse$json = const {
  '1': 'CreateServiceProviderResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'result'},
  ],
};

const ReadServiceProviderRequest$json = const {
  '1': 'ReadServiceProviderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceProviderResponse$json = const {
  '1': 'ReadServiceProviderResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'result'},
  ],
};

const UpdateServiceProviderRequest$json = const {
  '1': 'UpdateServiceProviderRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'payload'},
  ],
};

const UpdateServiceProviderResponse$json = const {
  '1': 'UpdateServiceProviderResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceProvider', '10': 'result'},
  ],
};

const DeleteServiceProviderRequest$json = const {
  '1': 'DeleteServiceProviderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceProviderResponse$json = const {
  '1': 'DeleteServiceProviderResponse',
};

const ListServiceProviderRequest$json = const {
  '1': 'ListServiceProviderRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceProviderResponse$json = const {
  '1': 'ListServiceProviderResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceProvider', '10': 'results'},
  ],
};

const CreateServiceApplicationRequest$json = const {
  '1': 'CreateServiceApplicationRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplication', '10': 'payload'},
  ],
};

const CreateServiceApplicationResponse$json = const {
  '1': 'CreateServiceApplicationResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplication', '10': 'result'},
  ],
};

const ReadServiceApplicationRequest$json = const {
  '1': 'ReadServiceApplicationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceApplicationResponse$json = const {
  '1': 'ReadServiceApplicationResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplication', '10': 'result'},
  ],
};

const UpdateServiceApplicationRequest$json = const {
  '1': 'UpdateServiceApplicationRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplication', '10': 'payload'},
  ],
};

const UpdateServiceApplicationResponse$json = const {
  '1': 'UpdateServiceApplicationResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplication', '10': 'result'},
  ],
};

const DeleteServiceApplicationRequest$json = const {
  '1': 'DeleteServiceApplicationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceApplicationResponse$json = const {
  '1': 'DeleteServiceApplicationResponse',
};

const ListServiceApplicationRequest$json = const {
  '1': 'ListServiceApplicationRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceApplicationResponse$json = const {
  '1': 'ListServiceApplicationResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceApplication', '10': 'results'},
  ],
};

const CreateServiceTagRequest$json = const {
  '1': 'CreateServiceTagRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceTag', '10': 'payload'},
  ],
};

const CreateServiceTagResponse$json = const {
  '1': 'CreateServiceTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceTag', '10': 'result'},
  ],
};

const ReadServiceTagRequest$json = const {
  '1': 'ReadServiceTagRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceTagResponse$json = const {
  '1': 'ReadServiceTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceTag', '10': 'result'},
  ],
};

const UpdateServiceTagRequest$json = const {
  '1': 'UpdateServiceTagRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceTag', '10': 'payload'},
  ],
};

const UpdateServiceTagResponse$json = const {
  '1': 'UpdateServiceTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceTag', '10': 'result'},
  ],
};

const DeleteServiceTagRequest$json = const {
  '1': 'DeleteServiceTagRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceTagResponse$json = const {
  '1': 'DeleteServiceTagResponse',
};

const ListServiceTagRequest$json = const {
  '1': 'ListServiceTagRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceTagResponse$json = const {
  '1': 'ListServiceTagResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceTag', '10': 'results'},
  ],
};

const CreateServiceApplicationFileRequest$json = const {
  '1': 'CreateServiceApplicationFileRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'payload'},
  ],
};

const CreateServiceApplicationFileResponse$json = const {
  '1': 'CreateServiceApplicationFileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'result'},
  ],
};

const ReadServiceApplicationFileRequest$json = const {
  '1': 'ReadServiceApplicationFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceApplicationFileResponse$json = const {
  '1': 'ReadServiceApplicationFileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'result'},
  ],
};

const UpdateServiceApplicationFileRequest$json = const {
  '1': 'UpdateServiceApplicationFileRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'payload'},
  ],
};

const UpdateServiceApplicationFileResponse$json = const {
  '1': 'UpdateServiceApplicationFileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'result'},
  ],
};

const DeleteServiceApplicationFileRequest$json = const {
  '1': 'DeleteServiceApplicationFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceApplicationFileResponse$json = const {
  '1': 'DeleteServiceApplicationFileResponse',
};

const ListServiceApplicationFileRequest$json = const {
  '1': 'ListServiceApplicationFileRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceApplicationFileResponse$json = const {
  '1': 'ListServiceApplicationFileResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceApplicationFile', '10': 'results'},
  ],
};

const CreateServiceOfferRequest$json = const {
  '1': 'CreateServiceOfferRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'payload'},
  ],
};

const CreateServiceOfferResponse$json = const {
  '1': 'CreateServiceOfferResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'result'},
  ],
};

const ReadServiceOfferRequest$json = const {
  '1': 'ReadServiceOfferRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceOfferResponse$json = const {
  '1': 'ReadServiceOfferResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'result'},
  ],
};

const UpdateServiceOfferRequest$json = const {
  '1': 'UpdateServiceOfferRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'payload'},
  ],
};

const UpdateServiceOfferResponse$json = const {
  '1': 'UpdateServiceOfferResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceOffer', '10': 'result'},
  ],
};

const DeleteServiceOfferRequest$json = const {
  '1': 'DeleteServiceOfferRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceOfferResponse$json = const {
  '1': 'DeleteServiceOfferResponse',
};

const ListServiceOfferRequest$json = const {
  '1': 'ListServiceOfferRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceOfferResponse$json = const {
  '1': 'ListServiceOfferResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceOffer', '10': 'results'},
  ],
};

const CreateServiceInPersonRequest$json = const {
  '1': 'CreateServiceInPersonRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'payload'},
  ],
};

const CreateServiceInPersonResponse$json = const {
  '1': 'CreateServiceInPersonResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'result'},
  ],
};

const ReadServiceInPersonRequest$json = const {
  '1': 'ReadServiceInPersonRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceInPersonResponse$json = const {
  '1': 'ReadServiceInPersonResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'result'},
  ],
};

const UpdateServiceInPersonRequest$json = const {
  '1': 'UpdateServiceInPersonRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'payload'},
  ],
};

const UpdateServiceInPersonResponse$json = const {
  '1': 'UpdateServiceInPersonResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceInPerson', '10': 'result'},
  ],
};

const DeleteServiceInPersonRequest$json = const {
  '1': 'DeleteServiceInPersonRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceInPersonResponse$json = const {
  '1': 'DeleteServiceInPersonResponse',
};

const ListServiceInPersonRequest$json = const {
  '1': 'ListServiceInPersonRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceInPersonResponse$json = const {
  '1': 'ListServiceInPersonResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ServiceInPerson', '10': 'results'},
  ],
};

const CreateServiceRequest$json = const {
  '1': 'CreateServiceRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.Service', '10': 'payload'},
  ],
};

const CreateServiceResponse$json = const {
  '1': 'CreateServiceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Service', '10': 'result'},
  ],
};

const ReadServiceRequest$json = const {
  '1': 'ReadServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadServiceResponse$json = const {
  '1': 'ReadServiceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Service', '10': 'result'},
  ],
};

const UpdateServiceRequest$json = const {
  '1': 'UpdateServiceRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.Service', '10': 'payload'},
  ],
};

const UpdateServiceResponse$json = const {
  '1': 'UpdateServiceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Service', '10': 'result'},
  ],
};

const DeleteServiceRequest$json = const {
  '1': 'DeleteServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeleteServiceResponse$json = const {
  '1': 'DeleteServiceResponse',
};

const ListServiceRequest$json = const {
  '1': 'ListServiceRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListServiceResponse$json = const {
  '1': 'ListServiceResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.Service', '10': 'results'},
  ],
};

