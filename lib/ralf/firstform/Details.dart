import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        title: const Text('Details'),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: true,
      ),
      body: const Center(
        child: Text('Details'),
      ),
    );
  }
}
