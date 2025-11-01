import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_state.dart';

class ChatViewModel extends Cubit<ChatState> {
  ChatViewModel() : super(const ChatState.initial());
}
