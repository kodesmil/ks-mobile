///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const NotificationSetting$json = const {
  '1': 'NotificationSetting',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'profile_id', '3': 4, '4': 1, '5': 9, '10': 'profileId'},
    const {'1': 'enable_notifications', '3': 5, '4': 1, '5': 8, '10': 'enableNotifications'},
    const {'1': 'enable_journal_reminder', '3': 6, '4': 1, '5': 8, '10': 'enableJournalReminder'},
    const {'1': 'cron_journal_reminder', '3': 7, '4': 1, '5': 9, '10': 'cronJournalReminder'},
  ],
  '7': const {},
};

const CreateNotificationSettingRequest$json = const {
  '1': 'CreateNotificationSettingRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationSetting', '10': 'payload'},
  ],
};

const CreateNotificationSettingResponse$json = const {
  '1': 'CreateNotificationSettingResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationSetting', '10': 'result'},
  ],
};

const ReadNotificationSettingRequest$json = const {
  '1': 'ReadNotificationSettingRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const ReadNotificationSettingResponse$json = const {
  '1': 'ReadNotificationSettingResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationSetting', '10': 'result'},
  ],
};

const UpdateNotificationSettingRequest$json = const {
  '1': 'UpdateNotificationSettingRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationSetting', '10': 'payload'},
  ],
};

const UpdateNotificationSettingResponse$json = const {
  '1': 'UpdateNotificationSettingResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationSetting', '10': 'result'},
  ],
};

const DeleteNotificationSettingRequest$json = const {
  '1': 'DeleteNotificationSettingRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

const DeleteNotificationSettingResponse$json = const {
  '1': 'DeleteNotificationSettingResponse',
};

const ListNotificationSettingRequest$json = const {
  '1': 'ListNotificationSettingRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListNotificationSettingResponse$json = const {
  '1': 'ListNotificationSettingResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.NotificationSetting', '10': 'results'},
  ],
};

const NotificationDevice$json = const {
  '1': 'NotificationDevice',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'profile_id', '3': 4, '4': 1, '5': 9, '10': 'profileId'},
    const {'1': 'device_token', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'deviceToken'},
  ],
  '7': const {},
};

const CreateNotificationDeviceRequest$json = const {
  '1': 'CreateNotificationDeviceRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationDevice', '10': 'payload'},
  ],
};

const CreateNotificationDeviceResponse$json = const {
  '1': 'CreateNotificationDeviceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.NotificationDevice', '10': 'result'},
  ],
};

