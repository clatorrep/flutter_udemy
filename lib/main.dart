import 'package:flutter/material.dart';

import 'package:fl_comp/router/app_routs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouts.initialroute,
      routes: AppRouts.getAppRouts(),
      onGenerateRoute: AppRouts.onGenerateRoute,
    );
  }
}
