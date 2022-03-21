import 'package:flutter/material.dart';
import 'package:kaizen_lite/core/state_managers/a.screen_managers.dart';
import 'package:kaizen_lite/ui/screens/a.screens.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  // navigatorKey
  final GlobalKey<NavigatorState> navigatorKey;

  // Screen Managers
  final AppStateManager appStateManager;

  AppRouter({
    // initialize all the screen managers
    required this.appStateManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    // add Listerners for all the state managers
    appStateManager.addListener(notifyListeners);
  }

  // Dipose all managers after use
  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [
        // A list of Pages & their Conditions
        if (!appStateManager.isInitialized) SplashScreen.page(),
        if (appStateManager.isInitialized) HomeScreen.page(),
      ],
    );
  }

  bool _handlePopPage(Route route, result) {
    // Checks if the current route’s pop succeeded
    // If it failed, return false; ELSE checks the different routes and
    // triggers the appropriate state changes
    if (!route.didPop(result)) {
      return false;
    }

    // Handle States when user closes a screen
    return true;
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}

