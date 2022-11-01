import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/state_managers/a.screen_managers.dart';
import '../screens/a.screens.dart';

class AppRouter {
  // Screen Managers
  final AppStateManager appStateManager;

  AppRouter({
// initialize all the screen managers
    required this.appStateManager,
  });

  late final router = GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: appStateManager,
    initialLocation: "/splash_screen",
    routes: [
      GoRoute(
        path: "/splash_screen",
        name: "splash_screen",
        builder: (context, state) => SplashScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: "/home",
        name: "home",
        builder: (context, state) => HomeScreen(
          key: state.pageKey,
        ),
      ),
    ],
    // Error Handler
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      );
    },
    // Riderect handelr
    redirect: (context, state) {
      // redirect to splash screen
      final isInitialized = appStateManager.isInitialized;
      final isAtSplashScreen = state.subloc == "/splash_screen";
      if (!isInitialized) return isAtSplashScreen ? null : "/splash_screen";

      // redirect to home
      final isLoggedIn = appStateManager.isLoggedIn;
      final isAtHomeScreen = state.subloc == "/home";
      if (isInitialized && isLoggedIn) return isAtHomeScreen ? null : "/home";

      // return null to stop redirecting
      return null;
    },
  );
}
