import 'package:flutter/material.dart';

import 'package:fl_comp/models/models.dart';
import 'package:fl_comp/screen/screen.dart';

class AppRouts {
  static const String initialroute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home_filled,
      name: 'Home',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt_rounded,
      name: 'Listview 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_rounded,
      name: 'Listview 2',
      screen: const Listview2Screen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRouts() {
    Map<String, Widget Function(BuildContext)> appRouts = {};

    for (final option in menuOptions) {
      appRouts.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRouts;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
