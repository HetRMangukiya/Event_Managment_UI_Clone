import 'package:event_mangment/view/screens/SplashScreen.dart';
import 'package:get/get.dart';

import '../screens/HomePage.dart';

class AppRoutes {
  static const SPLASH = '/';
  static const HOME = '/home';

  static final routes = [
    GetPage(
      name: SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
    ),
  ];
}