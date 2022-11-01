import 'dart:async';

import 'package:project_setup/core/state_managers/a.screen_managers.dart';

class AppStateManager extends BaseScreenProvider {
  // variables ....Fields
  bool _initialized = false;
  bool _loggedIn = false;
  bool _darkMode = false;
  // is left nav collapsed?
  bool _isCollapsed = false;

  // Getter Methods
  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get darkMode => _darkMode;
  bool get isCollapsed => _isCollapsed;

  // initializeApp Method
  void initializeApp() {
    Timer(const Duration(milliseconds: 2000), () {
      _initialized = true;
      // TODO: to be changed
      _loggedIn = true;
      notifyListeners();
    });
  }

  // Setting dark / light mode [theme] Method
  void set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  // Login Method
  void login(String username, String password) {
    // Add Auth to an API [gmail/linkedin - firebase]
    _loggedIn = true;

    notifyListeners();
  }

  // logout Method
  void logout() {
    _loggedIn = false;
    _initialized = false;

    initializeApp();

    notifyListeners();
  }

  void toggleIsCollapsed() {
    _isCollapsed = !isCollapsed;

    notifyListeners();
  }
}
