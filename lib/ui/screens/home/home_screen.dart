// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kaizen_lite/core/state_managers/a.screen_managers.dart';
import 'package:kaizen_lite/ui/base_provider.dart';
import 'package:kaizen_lite/ui/constants/kaizen_theme.dart';
import 'package:kaizen_lite/ui/navigation/kaizen_pages.dart';

import '../../components/a.components.dart';

class HomeScreen extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: KaizenPages.homePath,
        key: ValueKey(KaizenPages.homePath),
        child: const HomeScreen());
  }

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
        backgroundColor: kaizenBlue,
        drawer: KaizenDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The Blue Header
            KaizenHeader(
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
