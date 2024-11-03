import 'package:flutter/material.dart';
import 'package:newapp/compstwo/pages/home.dart';
import 'package:newapp/compstwo/pages/loader.dart';
import 'package:newapp/compstwo/pages/login_page.dart';
import 'package:newapp/compstwo/pages/porfolio_page.dart';
import 'package:newapp/compstwo/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> pages = [
    const Home(),
    const PortfolioPage(),
    const ShopPage(),
    const Loader(),
    const LoginPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          debugPrint('floating action button...');
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: NavigationBar(
        height: 70,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(Icons.home, color: Colors.cyan, size: 30),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person, color: Colors.cyan, size: 30),
              label: 'Profile'),
          NavigationDestination(
              icon: Icon(Icons.notifications, color: Colors.cyan, size: 30),
              label: 'Bank'),
          NavigationDestination(
              icon: Icon(Icons.bolt_outlined, size: 30, color: Colors.cyan),
              label: 'Loader'),
          NavigationDestination(
            icon: Icon(Icons.near_me, color: Colors.cyan, size: 30),
            label: 'Login',
          )
        ],
        onDestinationSelected: (index) => {
          setState(() {
            currentPage = index;
          })
        },
        selectedIndex: currentPage,
      ),
      body: pages[currentPage],
    );
  }
}
