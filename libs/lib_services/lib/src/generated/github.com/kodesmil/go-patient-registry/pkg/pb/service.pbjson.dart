///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/go-patient-registry/pkg/pb/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const JournalSubject$json = const {
  '1': 'JournalSubject',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.service.JournalSubject.Type',
      '10': 'type'
    },
  ],
  '4': const [JournalSubject_Type$json],
  '7': const {},
};

const JournalSubject_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'ACTIVITY', '2': 0},
    const {'1': 'SYMPTOM', '2': 1},
  ],
};

const JournalEntry$json = const {
  '1': 'JournalEntry',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {
      '1': 'severity',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.service.JournalEntry.Severity',
      '10': 'severity'
    },
    const {'1': 'note', '3': 3, '4': 1, '5': 9, '10': 'note'},
    const {
      '1': 'created_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    const {
      '1': 'journal_subject_id',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'journalSubjectId'
    },
  ],
  '4': const [JournalEntry_Severity$json],
  '7': const {},
};

const JournalEntry_Severity$json = const {
  '1': 'Severity',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LOW', '2': 1},
    const {'1': 'MID', '2': 2},
    const {'1': 'HIGH', '2': 3},
  ],
};

const CreateJournalEntryRequest$json = const {
  '1': 'CreateJournalEntryRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'payload'
    },
  ],
};

const CreateJournalEntryResponse$json = const {
  '1': 'CreateJournalEntryResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'result'
    },
  ],
};

const ReadJournalEntryRequest$json = const {
  '1': 'ReadJournalEntryRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const ReadJournalEntryResponse$json = const {
  '1': 'ReadJournalEntryResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'result'
    },
  ],
};

const UpdateJournalEntryRequest$json = const {
  '1': 'UpdateJournalEntryRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'payload'
    },
  ],
};

const UpdateJournalEntryResponse$json = const {
  '1': 'UpdateJournalEntryResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'result'
    },
  ],
};

const DeleteJournalEntryRequest$json = const {
  '1': 'DeleteJournalEntryRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const DeleteJournalEntryResponse$json = const {
  '1': 'DeleteJournalEntryResponse',
};

const ListJournalEntryRequest$json = const {
  '1': 'ListJournalEntryRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListJournalEntryResponse$json = const {
  '1': 'ListJournalEntryResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.JournalEntry',
      '10': 'results'
    },
  ],
};

const ListJournalSubjectRequest$json = const {
  '1': 'ListJournalSubjectRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListJournalSubjectResponse$json = const {
  '1': 'ListJournalSubjectResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.JournalSubject',
      '10': 'results'
    },
  ],
};

const FeedTag$json = const {
  '1': 'FeedTag',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'key'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'feed_articles',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.service.FeedArticle',
      '8': const {},
      '10': 'feedArticles'
    },
  ],
  '7': const {},
};

const FeedAuthor$json = const {
  '1': 'FeedAuthor',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'profile_photo_url',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'profilePhotoUrl'
    },
    const {'1': 'bio', '3': 4, '4': 1, '5': 9, '10': 'bio'},
    const {
      '1': 'feed_articles',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.service.FeedArticle',
      '10': 'feedArticles'
    },
  ],
  '7': const {},
};

const FeedArticleDetail$json = const {
  '1': 'FeedArticleDetail',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {
      '1': 'feed_article',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.service.FeedArticle',
      '8': const {},
      '10': 'feedArticle'
    },
  ],
  '7': const {},
};

const ReadFeedArticleDetailsRequest$json = const {
  '1': 'ReadFeedArticleDetailsRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const ReadFeedArticleDetailsResponse$json = const {
  '1': 'ReadFeedArticleDetailsResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.FeedArticleDetail',
      '10': 'result'
    },
  ],
};

const FeedArticle$json = const {
  '1': 'FeedArticle',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'subtitle', '3': 4, '4': 1, '5': 9, '10': 'subtitle'},
    const {
      '1': 'cover_picture_url',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'coverPictureUrl'
    },
    const {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    const {
      '1': 'feed_tags',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.service.FeedTag',
      '8': const {},
      '10': 'feedTags'
    },
    const {
      '1': 'feed_author',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.service.FeedAuthor',
      '8': const {},
      '10': 'feedAuthor'
    },
  ],
  '7': const {},
};

const ListFeedArticleRequest$json = const {
  '1': 'ListFeedArticleRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListFeedArticleResponse$json = const {
  '1': 'ListFeedArticleResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.FeedArticle',
      '10': 'results'
    },
  ],
};

const NotificationSetting$json = const {
  '1': 'NotificationSetting',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    const {
      '1': 'updated_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    const {
      '1': 'enable_notifications',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'enableNotifications'
    },
    const {
      '1': 'enable_journal_reminder',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'enableJournalReminder'
    },
    const {
      '1': 'cron_journal_reminder',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'cronJournalReminder'
    },
  ],
  '7': const {},
};

const CreateNotificationSettingRequest$json = const {
  '1': 'CreateNotificationSettingRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'payload'
    },
  ],
};

const CreateNotificationSettingResponse$json = const {
  '1': 'CreateNotificationSettingResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'result'
    },
  ],
};

const ReadNotificationSettingRequest$json = const {
  '1': 'ReadNotificationSettingRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const ReadNotificationSettingResponse$json = const {
  '1': 'ReadNotificationSettingResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'result'
    },
  ],
};

const UpdateNotificationSettingRequest$json = const {
  '1': 'UpdateNotificationSettingRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'payload'
    },
  ],
};

const UpdateNotificationSettingResponse$json = const {
  '1': 'UpdateNotificationSettingResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'result'
    },
  ],
};

const DeleteNotificationSettingRequest$json = const {
  '1': 'DeleteNotificationSettingRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const DeleteNotificationSettingResponse$json = const {
  '1': 'DeleteNotificationSettingResponse',
};

const ListNotificationSettingRequest$json = const {
  '1': 'ListNotificationSettingRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListNotificationSettingResponse$json = const {
  '1': 'ListNotificationSettingResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.NotificationSetting',
      '10': 'results'
    },
  ],
};

const NotificationDevice$json = const {
  '1': 'NotificationDevice',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    const {
      '1': 'updated_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    const {
      '1': 'device_token',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'deviceToken'
    },
  ],
  '7': const {},
};

const CreateNotificationDeviceRequest$json = const {
  '1': 'CreateNotificationDeviceRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationDevice',
      '10': 'payload'
    },
  ],
};

const CreateNotificationDeviceResponse$json = const {
  '1': 'CreateNotificationDeviceResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.NotificationDevice',
      '10': 'result'
    },
  ],
};

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'first_name', '3': 3, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    const {
      '1': 'primary_email',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'primaryEmail'
    },
    const {
      '1': 'groups',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.service.Group',
      '10': 'groups'
    },
  ],
  '7': const {},
};

const CreateProfileRequest$json = const {
  '1': 'CreateProfileRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Profile',
      '10': 'payload'
    },
  ],
};

const CreateProfileResponse$json = const {
  '1': 'CreateProfileResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Profile',
      '10': 'result'
    },
  ],
};

const ReadProfileRequest$json = const {
  '1': 'ReadProfileRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const ReadProfileResponse$json = const {
  '1': 'ReadProfileResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Profile',
      '10': 'result'
    },
  ],
};

const UpdateProfileRequest$json = const {
  '1': 'UpdateProfileRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Profile',
      '10': 'payload'
    },
  ],
};

const UpdateProfileResponse$json = const {
  '1': 'UpdateProfileResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Profile',
      '10': 'result'
    },
  ],
};

const DeleteProfileRequest$json = const {
  '1': 'DeleteProfileRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const DeleteProfileResponse$json = const {
  '1': 'DeleteProfileResponse',
};

const ListProfileRequest$json = const {
  '1': 'ListProfileRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListProfileResponse$json = const {
  '1': 'ListProfileResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.Profile',
      '10': 'results'
    },
  ],
};

const Group$json = const {
  '1': 'Group',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '8': const {},
      '10': 'id'
    },
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    const {
      '1': 'profile_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'profileId'
    },
  ],
  '7': const {},
};

const CreateGroupRequest$json = const {
  '1': 'CreateGroupRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Group',
      '10': 'payload'
    },
  ],
};

const CreateGroupResponse$json = const {
  '1': 'CreateGroupResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Group',
      '10': 'result'
    },
  ],
};

const ReadGroupRequest$json = const {
  '1': 'ReadGroupRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const ReadGroupResponse$json = const {
  '1': 'ReadGroupResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Group',
      '10': 'result'
    },
  ],
};

const UpdateGroupRequest$json = const {
  '1': 'UpdateGroupRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Group',
      '10': 'payload'
    },
  ],
};

const UpdateGroupResponse$json = const {
  '1': 'UpdateGroupResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Group',
      '10': 'result'
    },
  ],
};

const DeleteGroupRequest$json = const {
  '1': 'DeleteGroupRequest',
  '2': const [
    const {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'id'
    },
  ],
};

const DeleteGroupResponse$json = const {
  '1': 'DeleteGroupResponse',
};

const ListGroupRequest$json = const {
  '1': 'ListGroupRequest',
  '2': const [
    const {
      '1': 'filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Filtering',
      '10': 'filter'
    },
    const {
      '1': 'order_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Sorting',
      '10': 'orderBy'
    },
    const {
      '1': 'fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.FieldSelection',
      '10': 'fields'
    },
    const {
      '1': 'paging',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Pagination',
      '10': 'paging'
    },
  ],
};

const ListGroupResponse$json = const {
  '1': 'ListGroupResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.Group',
      '10': 'results'
    },
  ],
};
