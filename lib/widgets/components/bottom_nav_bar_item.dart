import 'package:flutter/Material.dart';

BottomNavigationBarItem bottomNavItem({required IconData icon}) {
  return BottomNavigationBarItem(
    label: 'No Label',
    activeIcon: CircleAvatar(
      radius: 28,
      backgroundColor: const Color(0xff2c41ff),
      child: Icon(
        size: 28,
        icon,
        color: Colors.white,
      ),
    ),
    icon: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 28,
      child: Icon(
        size: 28,
        icon,
        color: Colors.grey,
      ),
    ),
  );
}
