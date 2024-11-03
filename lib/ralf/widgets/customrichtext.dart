import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customrichtext extends StatelessWidget {
  const Customrichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'Rich ',
        children: [
          TextSpan(
            text: 'Text\n',
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(text: 'Another text'),
        ],
      ),
    );
  }
}
