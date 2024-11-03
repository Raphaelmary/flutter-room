import 'package:flutter/material.dart';

class Dataform extends StatefulWidget {
  Dataform({
    super.key,
    required this.product,
  });

  String product;

  @override
  State<Dataform> createState() => _DataformState();
}

class _DataformState extends State<Dataform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Text(widget.product),
        ),
      ),
    );
  }
}
