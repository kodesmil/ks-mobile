import 'package:lib_services/lib_services.dart';

extension ExChatRoom on ChatRoom {
  String get tileTitle {
    return name ?? participants.map((e) => e.profile.firstName).join(', ');
  }

  String get tileCaption {
    return '${participants.length} participant/s';
  }
}

extension ExChatMessages on List<ChatMessage> {}

class ChatMessageInfo {
  final bool isFirstMessageOfDay;
  final ChatMessagePlace place;
  final bool delivered;
  final List<ChatRoomParticipant> seenBy;

  ChatMessageInfo({
    this.isFirstMessageOfDay,
    this.place,
    this.delivered,
    this.seenBy,
  });
}

enum ChatMessagePlace {
  FIRST,
  MIDDLE,
  LAST,
  LAST_SINGLE,
}

extension ExChatMessage on ChatMessage {
  String get caption {
    return author.profile.firstName;
  }
}
