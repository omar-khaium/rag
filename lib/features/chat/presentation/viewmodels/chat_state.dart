import 'package:equatable/equatable.dart';

class ChatState extends Equatable {
  const ChatState({required this.message});

  const ChatState.initial() : this(message: 'Hello, world!');

  final String message;

  ChatState copyWith({String? message}) {
    return ChatState(message: message ?? this.message);
  }

  @override
  List<Object?> get props => <Object?>[message];
}
