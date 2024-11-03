import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/components/SplashScreen.dart';
import 'package:newapp/pages/HomePage.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const SplashScreen()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      drawer: Drawer(
        elevation: 30.0,
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              curve: Curves.bounceInOut,
              child: Container(
                color: Colors.blue,
                child: const Text('Drawer'),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 238, 238, 238),
              borderOnForeground: true,
              elevation: 0,
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Fudrat Technologies'),
                subtitle: const Text('Innovation Driver | Cybersecurity.'),
                trailing: const Icon(Icons.add),
                onTap: () {},
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 238, 238, 238),
              borderOnForeground: true,
              elevation: 0,
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Fudrat Technologies'),
                subtitle: const Text('Innovation Driver | Cybersecurity.'),
                trailing: const Icon(Icons.add),
                onTap: () {},
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 238, 238, 238),
              borderOnForeground: true,
              elevation: 0,
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Fudrat Technologies'),
                subtitle: const Text('Innovation Driver | Cybersecurity.'),
                trailing: const Icon(Icons.add),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(),
        child: const Center(
          child: Text(
            'Loading....',
            style: TextStyle(
              color: Color.fromARGB(255, 248, 136, 85),
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        isExtended: false,
        onPressed: () {},
        elevation: 0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Color.fromARGB(255, 0, 2, 92),
          ),
        ),
        child: const Icon(Icons.add, size: 20.0),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 2, 0, 66),
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.home,
                color: Colors.amber,
                size: 40.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.person,
                color: Colors.amber,
                size: 40.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.notification_add,
                color: Colors.amber,
                size: 40.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.settings,
                color: Colors.amber,
                size: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
