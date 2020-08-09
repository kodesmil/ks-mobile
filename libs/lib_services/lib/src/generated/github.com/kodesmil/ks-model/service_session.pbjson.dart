///
//  Generated code. Do not modify.
//  source: github.com/kodesmil/ks-model/service_session.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const StreamSessionInputEvent$json = const {
  '1': 'StreamSessionInputEvent',
  '2': const [
    const {'1': 'request_session', '3': 1, '4': 1, '5': 11, '6': '.model.EventRequestSession', '9': 0, '10': 'requestSession'},
    const {'1': 'join_session', '3': 2, '4': 1, '5': 11, '6': '.model.EventJoinSession', '9': 0, '10': 'joinSession'},
    const {'1': 'leave_session', '3': 3, '4': 1, '5': 11, '6': '.model.EventLeaveSession', '9': 0, '10': 'leaveSession'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

const EventRequestSession$json = const {
  '1': 'EventRequestSession',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const EventJoinSession$json = const {
  '1': 'EventJoinSession',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const EventLeaveSession$json = const {
  '1': 'EventLeaveSession',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const StreamSessionOutputEvent$json = const {
  '1': 'StreamSessionOutputEvent',
  '2': const [
    const {'1': 'session_requested', '3': 1, '4': 1, '5': 11, '6': '.model.EventSessionRequested', '9': 0, '10': 'sessionRequested'},
    const {'1': 'session_started', '3': 2, '4': 1, '5': 11, '6': '.model.EventSessionStarted', '9': 0, '10': 'sessionStarted'},
    const {'1': 'session_timeout', '3': 3, '4': 1, '5': 11, '6': '.model.EventSessionTimeout', '9': 0, '10': 'sessionTimeout'},
    const {'1': 'session_finished', '3': 4, '4': 1, '5': 11, '6': '.model.EventSessionFinished', '9': 0, '10': 'sessionFinished'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

const EventSessionRequested$json = const {
  '1': 'EventSessionRequested',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const EventSessionStarted$json = const {
  '1': 'EventSessionStarted',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const EventSessionTimeout$json = const {
  '1': 'EventSessionTimeout',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

const EventSessionFinished$json = const {
  '1': 'EventSessionFinished',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.model.ServiceSession', '10': 'session'},
  ],
};

