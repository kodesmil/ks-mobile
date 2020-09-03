///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/profile.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'notes', '3': 4, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'first_name', '3': 5, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 6, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'primary_email', '3': 7, '4': 1, '5': 9, '8': const {}, '10': 'primaryEmail'},
    const {'1': 'groups', '3': 8, '4': 3, '5': 11, '6': '.model.Group', '10': 'groups'},
    const {'1': 'profile_picture_url', '3': 9, '4': 1, '5': 9, '10': 'profilePictureUrl'},
  ],
  '7': const {},
};

const CreateProfileRequest$json = const {
  '1': 'CreateProfileRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'payload'},
  ],
};

const CreateProfileResponse$json = const {
  '1': 'CreateProfileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'result'},
  ],
};

const ReadProfileRequest$json = const {
  '1': 'ReadProfileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const ReadProfileResponse$json = const {
  '1': 'ReadProfileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'result'},
  ],
};

const UpdateProfileRequest$json = const {
  '1': 'UpdateProfileRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'payload'},
  ],
};

const UpdateProfileResponse$json = const {
  '1': 'UpdateProfileResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'result'},
  ],
};

const DeleteProfileRequest$json = const {
  '1': 'DeleteProfileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const DeleteProfileResponse$json = const {
  '1': 'DeleteProfileResponse',
};

const ListProfileRequest$json = const {
  '1': 'ListProfileRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListProfileResponse$json = const {
  '1': 'ListProfileResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.Profile', '10': 'results'},
  ],
};

