///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ChatMessage$json = const {
  '1': 'ChatMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.gorm.types.UUIDValue', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'author', '3': 5, '4': 1, '5': 11, '6': '.model.ChatRoomParticipant', '8': const {}, '10': 'author'},
    const {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.model.ChatMessage.Status', '8': const {}, '10': 'status'},
  ],
  '4': const [ChatMessage_Status$json],
  '7': const {},
};

const ChatMessage_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'DELIVERED', '2': 0},
    const {'1': 'NOT_DELIVERED', '2': 1},
  ],
};

const ChatRoom$json = const {
  '1': 'ChatRoom',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.gorm.types.UUIDValue', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'participants', '3': 4, '4': 3, '5': 11, '6': '.model.ChatRoomParticipant', '10': 'participants'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': const {},
};

const ChatRoomParticipant$json = const {
  '1': 'ChatRoomParticipant',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.gorm.types.UUIDValue', '8': const {}, '10': 'id'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'last_seen_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastSeenAt'},
    const {'1': 'profile', '3': 5, '4': 1, '5': 11, '6': '.model.Profile', '8': const {}, '10': 'profile'},
    const {'1': 'chat_room', '3': 6, '4': 1, '5': 11, '6': '.model.ChatRoom', '8': const {}, '10': 'chatRoom'},
  ],
  '7': const {},
};

const StreamChatEvent$json = const {
  '1': 'StreamChatEvent',
  '2': const [
    const {'1': 'none', '3': 1, '4': 1, '5': 11, '6': '.model.EventNone', '9': 0, '10': 'none'},
    const {'1': 'load_room', '3': 2, '4': 1, '5': 11, '6': '.model.EventLoadRoom', '9': 0, '10': 'loadRoom'},
    const {'1': 'load_rooms', '3': 3, '4': 1, '5': 11, '6': '.model.EventLoadRooms', '9': 0, '10': 'loadRooms'},
    const {'1': 'leave_room', '3': 4, '4': 1, '5': 11, '6': '.model.EventLeaveRoom', '9': 0, '10': 'leaveRoom'},
    const {'1': 'leave_rooms', '3': 5, '4': 1, '5': 11, '6': '.model.EventLeaveRooms', '9': 0, '10': 'leaveRooms'},
    const {'1': 'send_rooms', '3': 6, '4': 1, '5': 11, '6': '.model.EventSendRooms', '9': 0, '10': 'sendRooms'},
    const {'1': 'send_message', '3': 7, '4': 1, '5': 11, '6': '.model.EventSendMessage', '9': 0, '10': 'sendMessage'},
    const {'1': 'send_messages', '3': 8, '4': 1, '5': 11, '6': '.model.EventSendMessages', '9': 0, '10': 'sendMessages'},
    const {'1': 'force_close', '3': 9, '4': 1, '5': 11, '6': '.model.EventForceClose', '9': 0, '10': 'forceClose'},
    const {'1': 'invite_profile', '3': 10, '4': 1, '5': 11, '6': '.model.EventInviteProfile', '9': 0, '10': 'inviteProfile'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

const EventNone$json = const {
  '1': 'EventNone',
};

const EventLoadRoom$json = const {
  '1': 'EventLoadRoom',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.model.ChatRoom', '10': 'room'},
    const {'1': 'me', '3': 2, '4': 1, '5': 11, '6': '.model.ChatRoomParticipant', '10': 'me'},
  ],
};

const EventLoadRooms$json = const {
  '1': 'EventLoadRooms',
};

const EventLeaveRoom$json = const {
  '1': 'EventLeaveRoom',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.model.ChatRoom', '10': 'room'},
  ],
};

const EventLeaveRooms$json = const {
  '1': 'EventLeaveRooms',
};

const EventSendMessage$json = const {
  '1': 'EventSendMessage',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.model.ChatMessage', '10': 'message'},
  ],
};

const EventSendMessages$json = const {
  '1': 'EventSendMessages',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.model.ChatMessage', '10': 'messages'},
  ],
};

const EventSendRooms$json = const {
  '1': 'EventSendRooms',
  '2': const [
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.model.ChatRoom', '10': 'rooms'},
  ],
};

const EventInviteProfile$json = const {
  '1': 'EventInviteProfile',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.model.Profile', '10': 'user'},
  ],
};

const EventForceClose$json = const {
  '1': 'EventForceClose',
};

const ListChatMessageRequest$json = const {
  '1': 'ListChatMessageRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListChatMessageResponse$json = const {
  '1': 'ListChatMessageResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ChatMessage', '10': 'results'},
  ],
};

const ListChatRoomRequest$json = const {
  '1': 'ListChatRoomRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const ListChatRoomResponse$json = const {
  '1': 'ListChatRoomResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.model.ChatRoom', '10': 'results'},
  ],
};

