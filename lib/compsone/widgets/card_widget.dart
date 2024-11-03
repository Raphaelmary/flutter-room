import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    //passing data flutter
    required this.title,
    required this.url,
  });
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(k20),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(18, 255, 169, 163),
        ),
        child: Image.asset(
          fit: BoxFit.cover,
          url,
          width: 200.0,
        ),
      ),
    );
  }
}
