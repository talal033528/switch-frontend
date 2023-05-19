import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/community/community.dart';
import 'package:swish_basketball/view/home/homescreen.dart';
import 'package:swish_basketball/view/setting/setting.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          navbaritem(LucideIcons.layoutDashboard),
          navbaritem(LucideIcons.users),
          navbaritem(LucideIcons.youtube),
          navbaritem(LucideIcons.pieChart),
          navbaritem(LucideIcons.settings),
        ],
      ),
      body: _currentIndex == 0
          ? const HomeScreen()
          : _currentIndex == 1
              ? const CommunityScreen()
              : _currentIndex == 4
                  ? const SettingScreen()
                  : Container(),
    );
  }
}

navbaritem(icon) {
  return BottomNavigationBarItem(
    icon: Icon(icon, color: const Color(0xffFF4A31)),
    label: '',
    tooltip: 'home',
    activeIcon: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFF4A31),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(15),
        child: Icon(
          icon,
          color: Colors.white,
        )),
  );
}
