import 'package:equatable/equatable.dart';

import 'message_entity.dart';

class ChatEntity with EquatableMixin {
  ChatEntity({
    required this.partner,
    required this.lastMessage,
    required this.hasUnreadMessage,
  });

  final String partner;
  final MessageEntity lastMessage;
  final bool hasUnreadMessage;

  @override
  List<Object> get props => [partner, lastMessage, hasUnreadMessage];
}
