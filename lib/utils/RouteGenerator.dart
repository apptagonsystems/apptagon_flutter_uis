import 'package:apptagon_flutter_uis/screens/MainScreen.dart';
import 'package:apptagon_flutter_uis/screens/general/SplashScreen.dart';
import 'package:apptagon_flutter_uis/screens/general/WelcomeScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateMaterialRoutes(RouteSettings settings) {
    // final UserModel? _user = settings.arguments as UserModel?;

    switch (settings.name) {
      case AppRoutes.splashPageRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case AppRoutes.welcomePageRoute:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());

      case AppRoutes.mainPageRoute:
        return MaterialPageRoute(builder: (context) => const MainScreen());
    }
    return MaterialPageRoute(builder: (context) => const MainScreen());
  }

  static Route<dynamic> generateCupertinoRoutes(RouteSettings settings) {
    // final UserModel? _user = settings.arguments as UserModel?;
    switch (settings.name) {
      case AppRoutes.splashPageRoute:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());

      case AppRoutes.welcomePageRoute:
        return CupertinoPageRoute(builder: (context) => const WelcomeScreen());

      case AppRoutes.mainPageRoute:
        return CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        );
    }
    return CupertinoPageRoute(builder: (context) => const MainScreen());
  }
}
