import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 34, 62),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: const BoxDecoration(),
            width: 50,
            height: 50,
            child: const CircularProgressIndicator(
              color: Color.fromARGB(255, 34, 0, 127),
              backgroundColor: Color.fromARGB(255, 235, 235, 235),
              strokeWidth: 8.0,
            ),
          ),
        ),
      ),
    );
  }
}
