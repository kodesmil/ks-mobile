///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/period.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PeriodInfo$json = const {
  '1': 'PeriodInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'period_length_in_days', '3': 4, '4': 1, '5': 5, '10': 'periodLengthInDays'},
    const {'1': 'cycle_length_in_days', '3': 5, '4': 1, '5': 5, '10': 'cycleLengthInDays'},
  ],
  '7': const {},
};

const PeriodDailyEntry$json = const {
  '1': 'PeriodDailyEntry',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'day', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'day'},
    const {'1': 'severity', '3': 5, '4': 1, '5': 14, '6': '.model.PeriodDailyEntry.Severity', '10': 'severity'},
  ],
  '4': const [PeriodDailyEntry_Severity$json],
  '7': const {},
};

const PeriodDailyEntry_Severity$json = const {
  '1': 'Severity',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LOW', '2': 1},
    const {'1': 'MID', '2': 2},
    const {'1': 'HIGH', '2': 3},
  ],
};

const CreatePeriodDailyEntryRequest$json = const {
  '1': 'CreatePeriodDailyEntryRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'payload'},
  ],
};

const CreatePeriodDailyEntryResponse$json = const {
  '1': 'CreatePeriodDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'result'},
  ],
};

const ReadPeriodDailyEntryRequest$json = const {
  '1': 'ReadPeriodDailyEntryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadPeriodDailyEntryResponse$json = const {
  '1': 'ReadPeriodDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'result'},
  ],
};

const UpdatePeriodDailyEntryRequest$json = const {
  '1': 'UpdatePeriodDailyEntryRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'payload'},
  ],
};

const UpdatePeriodDailyEntryResponse$json = const {
  '1': 'UpdatePeriodDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'result'},
  ],
};

const DeletePeriodDailyEntryRequest$json = const {
  '1': 'DeletePeriodDailyEntryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeletePeriodDailyEntryResponse$json = const {
  '1': 'DeletePeriodDailyEntryResponse',
};

const ListPeriodDailyEntryRequest$json = const {
  '1': 'ListPeriodDailyEntryRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListPeriodDailyEntryResponse$json = const {
  '1': 'ListPeriodDailyEntryResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.PeriodDailyEntry', '10': 'results'},
  ],
};

const CreatePeriodInfoRequest$json = const {
  '1': 'CreatePeriodInfoRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodInfo', '10': 'payload'},
  ],
};

const CreatePeriodInfoResponse$json = const {
  '1': 'CreatePeriodInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodInfo', '10': 'result'},
  ],
};

const ReadPeriodInfoRequest$json = const {
  '1': 'ReadPeriodInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const ReadPeriodInfoResponse$json = const {
  '1': 'ReadPeriodInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodInfo', '10': 'result'},
  ],
};

const UpdatePeriodInfoRequest$json = const {
  '1': 'UpdatePeriodInfoRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodInfo', '10': 'payload'},
  ],
};

const UpdatePeriodInfoResponse$json = const {
  '1': 'UpdatePeriodInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.PeriodInfo', '10': 'result'},
  ],
};

const DeletePeriodInfoRequest$json = const {
  '1': 'DeletePeriodInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.atlas.rpc.Identifier', '10': 'id'},
  ],
};

const DeletePeriodInfoResponse$json = const {
  '1': 'DeletePeriodInfoResponse',
};

const ListPeriodInfoRequest$json = const {
  '1': 'ListPeriodInfoRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListPeriodInfoResponse$json = const {
  '1': 'ListPeriodInfoResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.PeriodInfo', '10': 'results'},
  ],
};

