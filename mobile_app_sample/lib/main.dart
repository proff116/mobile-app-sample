import 'package:flutter/material.dart';
import 'package:mobile_app_sample/app/locator.dart';
import 'package:mobile_app_sample/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobileAppSample',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
      onGenerateRoute: router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
