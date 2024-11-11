import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

// const w = MediaQuery.of(context).size.width;

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wynk',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 7, 55),
        toolbarHeight: 100.0,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back, color: Colors.white, size: 25.0),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint('welcome');
            },
            icon: const Icon(
              Icons.card_travel,
              size: 32.0,
              color: Colors.white,
            ),
          ),
          const Text(
            'Cart',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 10.0),
          Container(
              decoration: const BoxDecoration(),
              width: 25.0,
              height: 25.0,
              child: const CircularProgressIndicator(
                backgroundColor: Colors.blue,
              )),
          const SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 20.0),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(),
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset(
                          './assets/kali2.jpg',
                          // width: 200.0,
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'LifeStyle',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 0, 39, 70),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                decoration: const BoxDecoration(),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.asset('./assets/Wynk Rises.png'),
                              const SizedBox(height: 15.0),
                              const Text(
                                'Rides',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 0, 39, 70),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.asset('./assets/Wynk Payments 1.png'),
                              const SizedBox(height: 15.0),
                              const Text(
                                'Payments',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 0, 39, 70),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset('./assets/Lifestyle-1.png'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20.0),
                            backgroundColor:
                                const Color.fromARGB(255, 0, 7, 55)),
                        onPressed: () {
                          debugPrint('elevated button..');
                        },
                        child: const Icon(Icons.hdr_plus,
                            size: 60.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.notifications), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.alarm), label: 'Alarm')
        ],
        onDestinationSelected: (i) {
          setState(() {});
        },
        selectedIndex: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 7, 55),
        onPressed: () {},
        child: const Icon(Icons.add_a_photo, color: Colors.white, size: 30.0),
      ),
    );
  }
}
