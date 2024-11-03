import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:newapp/ralf/widgets/boxcontainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //get random number using math method
  int getNumber() {
    Random random = Random();
    dynamic randnum = random.nextInt(60);
    return randnum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(245, 255, 231, 73),
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        actions: const <Widget>[
          CircleAvatar(
            child: Icon(
              Icons.ac_unit,
            ),
          ),
          SizedBox(width: 10.0)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${getNumber()}'),
              const Image(
                  image: AssetImage(
                    './images/i.png',
                  ),
                  width: 30.0),
              const SizedBox(height: 10.0),
              Image.asset(
                './images/i.png',
                width: 40,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(
          Icons.mail,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
