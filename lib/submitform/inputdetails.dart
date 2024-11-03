import 'package:flutter/material.dart';

class InputDetails extends StatefulWidget {
  InputDetails({
    super.key,
    required this.productname,
    required this.description,
    // required this.clicked,
  });

  String productname;
  String description;
  // bool clicked;

  @override
  State<InputDetails> createState() => _InputDetailsState();
}

class _InputDetailsState extends State<InputDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products Added',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.ac_unit_outlined),
                title: Text(
                  widget.productname,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(widget.description),
                // trailing: Text(widget.clicked.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
