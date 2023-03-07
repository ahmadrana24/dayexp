import 'package:dayexp/res/app_colors.dart';
import 'package:dayexp/screens/tab%20view/home/home_screen.dart';
import 'package:dayexp/screens/tab%20view/settings/settings_screen.dart';
import 'package:dayexp/screens/tab%20view/stats/stats_screen.dart';
import 'package:flutter/material.dart';

class TabViewScreen extends StatefulWidget {
  const TabViewScreen({Key? key}) : super(key: key);

  @override
  State<TabViewScreen> createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const StatScreen(),
    const SettingsScreen(),
  ];
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryColor,
        fixedColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.secondaryColor,
        onTap: (val) {
          selectedScreen = val;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph,
            ),
            label: 'Stat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
