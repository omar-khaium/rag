import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/locator.dart';
import '../../presentation/viewmodels/chat_view_model.dart';
import '../../presentation/viewmodels/chat_state.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static const String routeName = 'chat';
  static const String routePath = '/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatViewModel>(
      create: (_) => getIt<ChatViewModel>(),
      child: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Chat'),
      ),
      body: const Center(
        child: _GreetingMessage(),
      ),
    );
  }
}

class _GreetingMessage extends StatelessWidget {
  const _GreetingMessage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatViewModel, ChatState>(
      builder: (context, state) {
        return Text(
          state.message,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
