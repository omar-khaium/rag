import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'router/app_router.dart';
import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = AppRouter.router;

    return BlocObserverProvider(
      child: MaterialApp.router(
        title: 'AI Chat',
        theme: AppTheme.light,
        routerConfig: router,
      ),
    );
  }
}

class BlocObserverProvider extends StatefulWidget {
  const BlocObserverProvider({required this.child, super.key});

  final Widget child;

  @override
  State<BlocObserverProvider> createState() => _BlocObserverProviderState();
}

class _BlocObserverProviderState extends State<BlocObserverProvider> {
  late final BlocObserver _observer;

  @override
  void initState() {
    super.initState();
    _observer = _AppBlocObserver();
    Bloc.observer = _observer;
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    if (identical(Bloc.observer, _observer)) {
      Bloc.observer = const BlocObserver();
    }
    super.dispose();
  }
}

class _AppBlocObserver extends BlocObserver {
  const _AppBlocObserver();
}
