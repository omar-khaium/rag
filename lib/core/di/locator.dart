import 'package:get_it/get_it.dart';

import '../../features/chat/presentation/viewmodels/chat_view_model.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  if (getIt.isRegistered<ChatViewModel>()) {
    return;
  }

  getIt.registerFactory<ChatViewModel>(ChatViewModel.new);
}
