///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Notification$json = const {
  '1': 'Notification',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
    const {
      '1': 'time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'time'
    },
  ],
};

const NotificationCreateRequest$json = const {
  '1': 'NotificationCreateRequest',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};

const NotificationCreateResponse$json = const {
  '1': 'NotificationCreateResponse',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};

const NotificationReadRequest$json = const {
  '1': 'NotificationReadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const NotificationReadResponse$json = const {
  '1': 'NotificationReadResponse',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};

const NotificationUpdateRequest$json = const {
  '1': 'NotificationUpdateRequest',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};

const NotificationUpdateResponse$json = const {
  '1': 'NotificationUpdateResponse',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};

const NotificationDeleteRequest$json = const {
  '1': 'NotificationDeleteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const NotificationDeleteResponse$json = const {
  '1': 'NotificationDeleteResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

const NotificationsListRequest$json = const {
  '1': 'NotificationsListRequest',
};

const NotificationsListResponse$json = const {
  '1': 'NotificationsListResponse',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.notifications.Notification',
      '10': 'notification'
    },
  ],
};
