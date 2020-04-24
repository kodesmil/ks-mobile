///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    const {
      '1': 'contacts',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.service.Contact',
      '10': 'contacts'
    },
    const {
      '1': 'groups',
      '3': 5,
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

const ListProfilesResponse$json = const {
  '1': 'ListProfilesResponse',
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
    const {
      '1': 'contacts',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.service.Contact',
      '8': const {},
      '10': 'contacts'
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

const ListGroupsResponse$json = const {
  '1': 'ListGroupsResponse',
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

const Contact$json = const {
  '1': 'Contact',
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
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'middle_name', '3': 3, '4': 1, '5': 9, '10': 'middleName'},
    const {'1': 'last_name', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    const {
      '1': 'primary_email',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'primaryEmail'
    },
    const {'1': 'notes', '3': 6, '4': 1, '5': 9, '10': 'notes'},
    const {
      '1': 'emails',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.service.Email',
      '10': 'emails'
    },
    const {
      '1': 'home_address',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.service.Address',
      '10': 'homeAddress'
    },
    const {
      '1': 'work_address',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.service.Address',
      '10': 'workAddress'
    },
    const {
      '1': 'profile_id',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.atlas.rpc.Identifier',
      '10': 'profileId'
    },
    const {
      '1': 'groups',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.service.Group',
      '8': const {},
      '10': 'groups'
    },
    const {
      '1': 'nicknames',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.gorm.types.JSONValue',
      '10': 'nicknames'
    },
  ],
  '7': const {},
};

const Email$json = const {
  '1': 'Email',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {
      '1': 'address',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'address'
    },
  ],
  '7': const {},
};

const Address$json = const {
  '1': 'Address',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'zip', '3': 4, '4': 1, '5': 9, '10': 'zip'},
    const {'1': 'country', '3': 5, '4': 1, '5': 9, '10': 'country'},
  ],
  '7': const {},
};

const CreateContactRequest$json = const {
  '1': 'CreateContactRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Contact',
      '10': 'payload'
    },
  ],
};

const CreateContactResponse$json = const {
  '1': 'CreateContactResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Contact',
      '10': 'result'
    },
  ],
};

const ReadContactRequest$json = const {
  '1': 'ReadContactRequest',
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

const ReadContactResponse$json = const {
  '1': 'ReadContactResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Contact',
      '10': 'result'
    },
  ],
};

const UpdateContactRequest$json = const {
  '1': 'UpdateContactRequest',
  '2': const [
    const {
      '1': 'payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Contact',
      '10': 'payload'
    },
    const {
      '1': 'fields',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '10': 'fields'
    },
  ],
};

const UpdateContactResponse$json = const {
  '1': 'UpdateContactResponse',
  '2': const [
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.service.Contact',
      '10': 'result'
    },
  ],
};

const DeleteContactRequest$json = const {
  '1': 'DeleteContactRequest',
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

const DeleteContactResponse$json = const {
  '1': 'DeleteContactResponse',
};

const ListContactsResponse$json = const {
  '1': 'ListContactsResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.service.Contact',
      '10': 'results'
    },
  ],
};

const SMSRequest$json = const {
  '1': 'SMSRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const SMSResponse$json = const {
  '1': 'SMSResponse',
};

const ListContactRequest$json = const {
  '1': 'ListContactRequest',
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
