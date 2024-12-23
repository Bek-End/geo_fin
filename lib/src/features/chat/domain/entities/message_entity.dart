import 'package:equatable/equatable.dart';

class MessageEntity with EquatableMixin {
  MessageEntity({
    required this.author,
    required this.message,
    required this.time,
  });

  final String author;
  final String message;
  final DateTime time;

  @override
  List<Object> get props => [author, message, time];
}
