import 'package:flutter/material.dart';
import 'package:newapp/data/compsone/widgets/card_widget.dart';

import '../constants/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String? name;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ralf.ng',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  // color: Color.fromARGB(255, 231, 231, 231),
                  ),
              child: const Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color.fromARGB(189, 0, 32, 135),
                ),
              ),
            ),
            const Expanded(
              child: CardWidget(
                title: 'fudrat',
                url: 'images/2308518.jpg',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(k20),
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'images/2308516.jpg',
                        width: 200.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'images/2308516.jpg',
                        width: 200.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    color: Color.fromARGB(15, 255, 186, 181),
                  ),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'images/pexels-designecologist-1779487.jpg',
                    width: 200.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30.0,
        backgroundColor: const Color.fromARGB(189, 0, 32, 135),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
