import 'package:get_it/get_it.dart';
import 'package:kaizen_lite/core/state_managers/a.screen_managers.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  // Register Services here (API/AuthService/...)

  // Register screen/model Providers here
  locator.registerLazySingleton(() => AppStateManager());
  
}
