import 'package:animations/animations.dart';
import 'package:apptagon_flutter_uis/screens/apps/AppsScreen.dart';
import 'package:apptagon_flutter_uis/screens/categories/CategoriesScreen.dart';
import 'package:apptagon_flutter_uis/screens/widgets/WidgetsScreen.dart';
import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kCustomWhiteColor,
        currentIndex: _bottomSelectedIndex,
        selectedFontSize: 16,
        selectedItemColor: AppColors.kPrimaryColor,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        showUnselectedLabels: true,
        selectedLabelStyle:
            TextStyle(fontSize: 12, color: AppColors.kPrimaryColor),
        items: buildBottomNavBarItems(),
        onTap: (index) {
          bottomTapped(index);
        },
      ),
    );
  }

  _body() {
    return PageTransitionSwitcher(
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
      child: getPage(index: _bottomSelectedIndex),
    );
  }

  Widget getPage({required int index}) {
    return IndexedStack(
      index: index,
      children: const [
        CategoriesScreen(),
        AppsScreen(),
        WidgetsScreen(),
      ],
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home_outlined, color: Colors.grey),
        activeIcon: Icon(Icons.home_filled, color: AppColors.kPrimaryColor),
        label: "Categories",
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.explore_outlined, color: Colors.grey),
        activeIcon: Icon(Icons.explore, color: AppColors.kPrimaryColor),
        label: 'Apps',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.store_outlined, color: Colors.grey),
        activeIcon: Icon(Icons.store, color: AppColors.kPrimaryColor),
        label: 'Widgets',
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void bottomTapped(int index) {
    setState(() {
      _bottomSelectedIndex = index;
    });
  }
}
