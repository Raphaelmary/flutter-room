import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration( color: Colors.white),
          child: const CircularProgressIndicator(
            backgroundColor: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
