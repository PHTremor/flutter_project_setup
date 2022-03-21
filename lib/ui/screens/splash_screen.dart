import 'package:flutter/material.dart';

import '../../core/state_managers/a.screen_managers.dart';
import '../../locator.dart';
import '../navigation/kaizen_pages.dart';

class SplashScreen extends StatefulWidget {
  // SplashScreen MaterialPage Helper
  static MaterialPage page() {
    return MaterialPage(
      name: KaizenPages.splashPath,
      key: ValueKey(KaizenPages.splashPath),
      child: const SplashScreen(),
    );
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize App
    locator<AppStateManager>().initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              height: 200,
              image: AssetImage('assets/images/Kaizen-Logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
