import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color.fromARGB(66, 244, 244, 244),
      elevation: 0.0,
      height: 70.0,
      surfaceTintColor: Colors.red,
      shadowColor: Colors.red,
      indicatorColor: const Color.fromARGB(0, 255, 255, 255),
      destinations: const <Widget>[
        NavigationDestination(icon: Icon(Icons.home, size: 35.0), label: ''),
        NavigationDestination(icon: Icon(Icons.search, size: 35.0), label: ''),
        NavigationDestination(
            icon: Icon(Icons.add_box_outlined, size: 35.0), label: ''),
        NavigationDestination(
            icon: Icon(Icons.play_circle_outlined, size: 35.0), label: ''),
        NavigationDestination(
            icon: CircleAvatar(
                backgroundImage: AssetImage('./assets/Wynk Ride.png')),
            label: ''),
      ],
      onDestinationSelected: (index) => {},
      selectedIndex: 0,
    );
  }
}

// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget {
//   const NavBar({super.key});

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: BottomAppBar(
//         // width: double.maxFinite,
//         height: 100.0,
//         notchMargin: 5.0,
//         elevation: 0.0,
//         child: BottomNavigationBar(
//           backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//           selectedItemColor: const Color.fromARGB(255, 46, 46, 46),
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           elevation: 0.0,
//           iconSize: 40,
//           type: BottomNavigationBarType.fixed,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.add_box_outlined), label: ''),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.play_circle_outline_outlined), label: ''),
//             BottomNavigationBarItem(
//                 icon: CircleAvatar(
//                     backgroundImage: AssetImage('./assets/WynkLogo.png')),
//                 label: ''),
//           ],
//         ),
//       ),
//     );
//   }
// }
