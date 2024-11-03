import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: 0,
      animationDuration: const Duration(
        milliseconds: 200,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 68),
      indicatorColor: Colors.transparent,
      surfaceTintColor: Colors.amberAccent,
      height: 90,
      destinations: const [
        NavigationDestination(
            icon: Icon(Icons.home, color: Colors.amber, size: 30),
            label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.person, color: Colors.amber, size: 30),
            label: 'Profile'),
        NavigationDestination(
            icon: Icon(Icons.search, color: Colors.amber, size: 30),
            label: 'Search'),
        NavigationDestination(
            icon: Icon(Icons.notification_important,
                color: Colors.amber, size: 30),
            label: 'Notification'),
        NavigationDestination(
            icon: Icon(Icons.settings, color: Colors.amber, size: 30),
            label: 'Settings'),
      ],
      onDestinationSelected: (val) {},
    );
  }
}
