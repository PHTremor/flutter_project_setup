import 'package:flutter/material.dart';
import 'package:project_setup/ui/base_provider.dart';
import 'package:project_setup/ui/constants/a.constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'core/state_managers/a.screen_managers.dart';
import 'locator.dart';
import 'ui/navigation/app_router.dart';

/// Function to initialise all the pre-app things
globalInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  // await Firebase.initializeApp();
}

void main() async {
  await globalInitializer();
  runApp(const SetupApp());
}

class SetupApp extends StatefulWidget {
  const SetupApp({Key? key}) : super(key: key);

  @override
  State<SetupApp> createState() => _SetupAppState();
}

class _SetupAppState extends State<SetupApp> {
  // Hold all the state managers here ...
  final _appStateManager = locator<AppStateManager>();

  // appRouter here Nav2.0
  late AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter(appStateManager: _appStateManager);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final router = _appRouter.router;
    return BaseScreen<AppStateManager>(
      builder: (context, model, child) {
        // Setting the app's theme [light/dark]
        ThemeData theme;
        if (model.darkMode) {
          theme = KaizenTheme.dark();
        } else {
          theme = KaizenTheme.light();
        }

        return MaterialApp.router(
          theme: theme,
          builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: kaizenWhite),
          ),
          debugShowCheckedModeBanner: false,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    );
  }
}
