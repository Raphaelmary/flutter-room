import 'package:flutter/material.dart';
// import 'package:fudrat/routes/login.dart';
// import 'package:fudrat/routes/welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> routes = [
    // const Welcome(),
    // const Login(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[currentPage],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.admin_panel_settings,
          size: 30,
          color: Colors.amber,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 80,
        backgroundColor: Colors.amber,
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.login, size: 30, color: Colors.white),
              label: 'Login'),
          NavigationDestination(
              icon: Icon(Icons.mail, size: 30, color: Colors.white),
              label: 'Sign Up'),
          NavigationDestination(
              icon: Icon(Icons.tungsten, size: 30, color: Colors.white),
              label: 'Splash'),
          NavigationDestination(
              icon: Icon(Icons.settings, size: 30, color: Colors.white),
              label: 'settings')
        ],
        onDestinationSelected: (index) {
          setState(
            () {
              currentPage = index;
            },
          );
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

// navigationBarThemeData:  NavigationBarThemeData(backgroundColor: Colors.red),