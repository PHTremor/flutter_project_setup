import 'package:flutter/material.dart';

import '../../core/models/drawer_item.dart';

final itemsFirst = [
  const DrawerItem(title: 'Dashboard', icon: Icons.dashboard),
  const DrawerItem(title: 'Tasks', icon: Icons.sort),
  const DrawerItem(title: 'Annoucements', icon: Icons.chat),
  const DrawerItem(title: 'Team Members', icon: Icons.groups),
  const DrawerItem(title: 'Goals', icon: Icons.today),
  const DrawerItem(title: 'Requisitions', icon: Icons.text_snippet),
  const DrawerItem(title: 'Reports', icon: Icons.insights),
];

final itemsSecond = [
  const DrawerItem(title: 'Profile', icon: Icons.person),
  const DrawerItem(title: 'Logout', icon: Icons.logout),
];
