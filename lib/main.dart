import 'package:flutter/material.dart';
import 'package:kaizen_lite/ui/base_provider.dart';
import 'package:kaizen_lite/ui/constants/kaizen_theme.dart';
import 'package:kaizen_lite/ui/navigation/app_router.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'core/state_managers/a.screen_managers.dart';
import 'locator.dart';

/// Function to initialise all the pre-app things
globalInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  // await Firebase.initializeApp();
}

void main() async {
  await globalInitializer();
  runApp(const KaizenApp());
}

class KaizenApp extends StatefulWidget {
  const KaizenApp({Key? key}) : super(key: key);

  @override
  State<KaizenApp> createState() => _KaizenAppState();
}

class _KaizenAppState extends State<KaizenApp> {
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
    return BaseScreen<AppStateManager>(
      builder: (context, model, child) {
        // Setting the app's theme [light/dark]
        ThemeData _theme;
        if (model.darkMode) {
          _theme = KaizenTheme.dark();
        } else {
          _theme = KaizenTheme.light();
        }

        return MaterialApp(
          theme: _theme,
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
          home: Router(
            routerDelegate: _appRouter,
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
