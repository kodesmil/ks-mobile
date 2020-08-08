///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/health.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const HealthMenstruationPersonalInfo$json = const {
  '1': 'HealthMenstruationPersonalInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'period_length_in_days', '3': 4, '4': 1, '5': 5, '10': 'periodLengthInDays'},
    const {'1': 'cycle_length_in_days', '3': 5, '4': 1, '5': 5, '10': 'cycleLengthInDays'},
  ],
  '7': const {},
};

const HealthMenstruationDailyEntry$json = const {
  '1': 'HealthMenstruationDailyEntry',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'day', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'day'},
    const {'1': 'intensity_percentage', '3': 5, '4': 1, '5': 5, '10': 'intensityPercentage'},
    const {'1': 'type', '3': 6, '4': 1, '5': 14, '6': '.model.HealthMenstruationDailyEntry.Type', '10': 'type'},
    const {'1': 'manual', '3': 7, '4': 1, '5': 8, '10': 'manual'},
    const {'1': 'based_on_prediction', '3': 8, '4': 1, '5': 8, '10': 'basedOnPrediction'},
  ],
  '4': const [HealthMenstruationDailyEntry_Type$json],
  '7': const {},
};

const HealthMenstruationDailyEntry_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'PERIOD', '2': 0},
    const {'1': 'OVULATION', '2': 1},
  ],
};

const CreateHealthMenstruationDailyEntryRequest$json = const {
  '1': 'CreateHealthMenstruationDailyEntryRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'payload'},
  ],
};

const CreateHealthMenstruationDailyEntryResponse$json = const {
  '1': 'CreateHealthMenstruationDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'result'},
  ],
};

const ReadHealthMenstruationDailyEntryRequest$json = const {
  '1': 'ReadHealthMenstruationDailyEntryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const ReadHealthMenstruationDailyEntryResponse$json = const {
  '1': 'ReadHealthMenstruationDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'result'},
  ],
};

const UpdateHealthMenstruationDailyEntryRequest$json = const {
  '1': 'UpdateHealthMenstruationDailyEntryRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'payload'},
  ],
};

const UpdateHealthMenstruationDailyEntryResponse$json = const {
  '1': 'UpdateHealthMenstruationDailyEntryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'result'},
  ],
};

const DeleteHealthMenstruationDailyEntryRequest$json = const {
  '1': 'DeleteHealthMenstruationDailyEntryRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const DeleteHealthMenstruationDailyEntryResponse$json = const {
  '1': 'DeleteHealthMenstruationDailyEntryResponse',
};

const ListHealthMenstruationDailyEntryRequest$json = const {
  '1': 'ListHealthMenstruationDailyEntryRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListHealthMenstruationDailyEntryResponse$json = const {
  '1': 'ListHealthMenstruationDailyEntryResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.HealthMenstruationDailyEntry', '10': 'results'},
  ],
};

const CreateHealthMenstruationPersonalInfoRequest$json = const {
  '1': 'CreateHealthMenstruationPersonalInfoRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'payload'},
  ],
};

const CreateHealthMenstruationPersonalInfoResponse$json = const {
  '1': 'CreateHealthMenstruationPersonalInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'result'},
  ],
};

const ReadHealthMenstruationPersonalInfoRequest$json = const {
  '1': 'ReadHealthMenstruationPersonalInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const ReadHealthMenstruationPersonalInfoResponse$json = const {
  '1': 'ReadHealthMenstruationPersonalInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'result'},
  ],
};

const UpdateHealthMenstruationPersonalInfoRequest$json = const {
  '1': 'UpdateHealthMenstruationPersonalInfoRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'payload'},
  ],
};

const UpdateHealthMenstruationPersonalInfoResponse$json = const {
  '1': 'UpdateHealthMenstruationPersonalInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'result'},
  ],
};

const DeleteHealthMenstruationPersonalInfoRequest$json = const {
  '1': 'DeleteHealthMenstruationPersonalInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const DeleteHealthMenstruationPersonalInfoResponse$json = const {
  '1': 'DeleteHealthMenstruationPersonalInfoResponse',
};

const ListHealthMenstruationPersonalInfoRequest$json = const {
  '1': 'ListHealthMenstruationPersonalInfoRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListHealthMenstruationPersonalInfoResponse$json = const {
  '1': 'ListHealthMenstruationPersonalInfoResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.HealthMenstruationPersonalInfo', '10': 'results'},
  ],
};

