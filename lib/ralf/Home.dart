import 'package:flexify/flexify.dart';
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
      backgroundColor: const Color.fromARGB(248, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        // backgroundColor: Colors.transparent,
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          const CircleAvatar(
            child: Icon(
              Icons.ac_unit,
            ),
          ),
          SizedBox(width: 10.rw)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('${getNumber()}'),
                  const Image(
                      image: AssetImage(
                        './images/i.png',
                      ),
                      width: 40.0),
                  Image.asset(
                    './images/i.png',
                    width: 40,
                  ),
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white10,
                  side: const BorderSide(
                    color: Colors.red,
                    width: 4.0,
                  ),
                ),
                onPressed: () {},
                child: const Text('Click!'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(
            () {
              getNumber();
            },
          );
        },
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
