import 'package:flutter/material.dart';
// import 'package:fudrat/variables/variables.dart';
// import 'package:fudrat/screens/listings.dart';

// import '../variables/variables.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Portfolio',
            style: TextStyle(
              color: Color.fromARGB(255, 238, 238, 239),
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.black.withOpacity(0.8),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return const Listings();
                //     },
                //   ),
                // );
              },
              icon: const Icon(
                Icons.add_shopping_cart_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            './assets/kali2.jpg',
            fit: BoxFit.cover,
            color: Colors.redAccent.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            width: 20.0,
            height: 20.0,
            decoration: const BoxDecoration(),
            child: const CircleAvatar(
              backgroundImage: AssetImage('./assets/kali.png'),
              // radius: 20,
              child: Text(
                'Joseph',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
