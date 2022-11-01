import 'package:flutter/material.dart';
import 'package:project_setup/core/state_managers/a.screen_managers.dart';
import 'package:project_setup/locator.dart';

import '../constants/a.constants.dart';

class KaizenDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const KaizenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = "Frank Mwale";
    const email = "mwalefrankmwale@gmail.com";
    const urlImage =
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80";

    return Drawer(
      child: Container(
        color: kaizenBlue,
        child: Column(children: [
          // Header
          UserAccountsDrawerHeader(
            accountName: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: kaizenWhite),
            ),
            accountEmail: Text(
              email,
              style: Theme.of(context).textTheme.bodyText2!,
            ),
            currentAccountPicture: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
          // Menu Contents|List
          SingleChildScrollView(
            child: Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  // Search Task
                  buildSearchField(context: context),
                  // List Tiles
                  buildMenuItem(
                    text: "Contracts",
                    icon: Icons.gavel,
                    onClicked: () {},
                    context: context,
                  ),
                  buildMenuItem(
                    text: "Projects",
                    icon: Icons.view_stream,
                    onClicked: () {},
                    context: context,
                  ),
                  buildMenuItem(
                    text: "Tasks",
                    icon: Icons.fact_check,
                    onClicked: () {},
                    context: context,
                  ),
                  buildMenuItem(
                    text: "Tickets",
                    icon: Icons.support_agent,
                    onClicked: () {},
                    context: context,
                  ),
                  buildMenuItem(
                    text: "Notice Board",
                    icon: Icons.developer_board,
                    onClicked: () {},
                    context: context,
                  ),
                  buildMenuItem(
                    text: "Reports",
                    icon: Icons.insights,
                    onClicked: () {},
                    context: context,
                  ),
                  const SizedBox(height: 150),
                  Column(
                    children: [
                      const Divider(color: Colors.white70),
                      buildMenuItem(
                        text: "Log Out",
                        icon: Icons.logout,
                        onClicked: () {
                          locator<AppStateManager>().logout();
                        },
                        context: context,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

// The header inside the drawer ...user details
  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
    required context,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.bodyText1),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 180.0,
                    child: Text(
                      email,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );

  // Search Field
  Widget buildSearchField({required context}) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        hintText: "Search",
        hintStyle: Theme.of(context).textTheme.bodyText2,
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: kaizenWhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: kaizenBlue.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: kaizenWhite.withOpacity(0.7)),
        ),
      ),
    );
  }

  // List Item| Tile
  Widget buildMenuItem(
      {required String text,
      required IconData icon,
      VoidCallback? onClicked,
      required context}) {
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
