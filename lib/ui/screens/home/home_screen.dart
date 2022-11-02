import 'package:flutter/material.dart';
import 'package:project_setup/core/state_managers/a.screen_managers.dart';
import 'package:project_setup/ui/base_provider.dart';
import 'package:project_setup/ui/constants/app_theme.dart';

import '../../components/a.components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BaseScreen<AppStateManager>(
      builder: (context, model, child) => Scaffold(
        key: scaffoldKey,
        backgroundColor: customBlue,
        drawer: const AppDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The Blue Header
            AppHeader(
              title: "DASHBOARD",
              iconRight: Icons.notifications_active_outlined,
              isMenu: true,
              onClickIcon: () => scaffoldKey.currentState!.openDrawer(),
            ),

            // Container holds the main content
            MainContentContainer(
              contentWidget: mainContent(),
            ),
          ],
        ),
      ),
    );
  }

// This ListView Holds all the main content of this page
  ListView mainContent() {
    return ListView(
      children: const [
        Text("data"),
        Text("dataqq"),
      ],
    );
  }
}
