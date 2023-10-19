import 'package:flutter/material.dart';
import 'package:flutter_tele_medicine/screens/home_screen.dart';
import 'package:flutter_tele_medicine/screens/login_screen.dart';
import 'package:flutter_tele_medicine/screens/setting_screen.dart';
import 'package:flutter_tele_medicine/widgets/components/bottom_nav_bar_item.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const MaterialColor primaryAppColor =
      MaterialColor(0xfff6f8fa, <int, Color>{
    50: Color(0xffbcbcbc), //10%
    100: Color(0xffa7a7a7), //20%
    200: Color(0xff929292), //30%
    300: Color(0xff7d7d7d), //40%
    400: Color(0xff686868), //50%
    500: Color(0xff535353), //60%
    600: Color(0xff3e3e3e), //70%
    700: Color(0xff292929), //80%
    800: Color(0xff141414), //90%
    900: Color(0xff000000), //100%
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TeleMedicine',
        home: const LoginScreen(),
        theme: ThemeData(
          primarySwatch: primaryAppColor,
          scaffoldBackgroundColor: primaryAppColor,
        ));
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

final List<IconData> bottomNavIcons = [
  Icons.home,
  Icons.view_list_outlined,
  Icons.message_outlined,
  Icons.settings,
];
int navBarIndex = 0;

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: navBarIndex,
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 32),
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // function to iterate the list with icons
          items:
              bottomNavIcons.map((icon) => bottomNavItem(icon: icon)).toList(),
          onTap: (index) {
            setState(() {
              navBarIndex = index;
            });
          },
        ),

        body: getSelectedWidget(index: navBarIndex));
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (navBarIndex) {
      case 0:
        widget = const HomeScreen();
        break;
      case 1:
        widget = const SettingsScreen();
        break;
      case 2:
        widget = const SettingsScreen();
        break;
      default:
        widget = const SettingsScreen();
        break;
    }
    return widget;
  }
}
