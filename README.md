# RAG

This repository hosts the Flutter "Hello" branch of a lightweight AI chat
application scaffold. The project follows an MVVM architecture with BLoC for
state management, GoRouter for navigation, and GetIt for dependency injection.

All non-feature specific building blocks—such as theming, routing, error
handling, and service registration—live inside the `lib/core` directory to keep
the feature modules lean and focused on presentation, view models, and domain
logic.
