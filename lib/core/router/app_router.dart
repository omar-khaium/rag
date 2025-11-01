import 'package:go_router/go_router.dart';

import '../../features/chat/presentation/views/chat_page.dart';

class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: ChatPage.routeName,
        path: ChatPage.routePath,
        builder: (context, state) => const ChatPage(),
      ),
    ],
  );
}
