import 'package:flutter/material.dart';
import 'package:newapp/data/compstwo/pages/porfolio_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TopShop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
            fontSize: 18,
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                debugPrint('icon button...');
              },
              icon: const Icon(Icons.food_bank, size: 45, color: Colors.cyan)),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 15,
              left: 40,
              bottom: 15,
              right: 40,
            ),
            backgroundColor: Colors.cyan,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const PortfolioPage();
                },
              ),
            );
          },
          child: const Text(
            'Portfolio',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
