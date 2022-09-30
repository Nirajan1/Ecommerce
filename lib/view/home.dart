import 'package:ecommerce/screen/chart_screen.dart';
import 'package:ecommerce/screen/home_screen.dart';
import 'package:ecommerce/screen/profile_screen.dart';
import 'package:ecommerce/screen/setting_screen.dart';
import 'package:flutter/material.dart';
import '../widget/customedrawe.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text("ecommerce"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
        drawer: const MyDrawerCustome(),
        backgroundColor: Colors.grey[100],
        body: selectedIndex == 0
            ? const HomeScreen()
            : selectedIndex == 1
                ? const SettingScreen()
                : selectedIndex == 2
                    ? const ProfileScreen()
                    : const ChartScreen(),
      ),
    );
  }
}
