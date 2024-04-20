import 'package:apptagon_flutter_uis/screens/MainScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppThemes.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:apptagon_flutter_uis/utils/AppConstants.dart';
import 'package:flutter/material.dart';
import 'package:apptagon_flutter_uis/utils/RouteGenerator.dart';

class RootScreen extends StatefulWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The navigator key is necessary to allow to navigate through static methods
      navigatorKey: RootScreen.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: AppConstants.kAppName,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Montserrat",
        appBarTheme: AppThemes().appTheme,
        backgroundColor: Colors.white,
        textTheme: const TextTheme(),
        inputDecorationTheme: AppThemes().inputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
        colorScheme: AppThemes().colorScheme,
      ),
      home: const MainScreen(),
      onGenerateRoute: RouteGenerator.generateMaterialRoutes,
    );
    // );
  }
}
