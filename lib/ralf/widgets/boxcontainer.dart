import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boxcontainer extends StatelessWidget {
  const Boxcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(10.0),
      constraints: const BoxConstraints(maxHeight: double.infinity),
      width: 200.0,
      height: 200.0,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
        border: Border.all(
          width: 5,
          color: const Color.fromARGB(255, 255, 119, 109),
          style: BorderStyle.solid,
        ),
        image: const DecorationImage(
          image: AssetImage('./images/windows.png'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: const FittedBox(
        child: Text(
          'Container',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
          selectionColor: Colors.amber,
        ),
      ),
    );
  }
}
