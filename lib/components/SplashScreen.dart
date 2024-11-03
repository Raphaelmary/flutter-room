import 'package:flexify/flexify.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newapp/pages/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int nextNumber() {
    dynamic value = Random().nextInt(5);
    return value;
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        nextNumber();
      });
    });
  }

  //create a function that returns random number
  int randomNumber() {
    Random random = Random();
    dynamic value = random.nextInt(100);
    return value;
  }

  bool liked = false;
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 0, 0),
        toolbarHeight: 100.0,
        title: Text(
          'stuxnet'.toUpperCase(),
          style: const TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(
              Icons.info_outline,
              size: 30.0,
              color: Colors.white60,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 245, 225),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Container(
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Image(
                  width: 40.0,
                  image: AssetImage(
                    'images/i.png',
                  ),
                ),
                const SizedBox(height: 15.0),
                const Text(
                  'StuxNet is a virus created by the Israeli Intelligence and the CIA, however it has being denied by them.',
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 15.rh),
                const Text.rich(
                  TextSpan(
                    text: 'Rich Text Demo \n',
                    children: [
                      TextSpan(text: 'Welcome \n'),
                      TextSpan(
                        text: 'Oluebube',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                //elevated button with random number function
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        randomNumber();
                      },
                    );
                  },
                  child: Text(
                    'Random Number: ${randomNumber()}',
                  ),
                ),
                Text(
                  'Random Number: ${nextNumber()}',
                ),
                ListView(
                  itemExtent: 100.0,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderOnForeground: true,
                      elevation: 0,
                      child: ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('Fudrat Technologies'),
                        subtitle:
                            const Text('Innovation Driver | Cybersecurity.'),
                        trailing: const Icon(Icons.add),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderOnForeground: true,
                      elevation: 0,
                      child: ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('Fudrat Technologies'),
                        subtitle:
                            const Text('Innovation Driver | Cybersecurity.'),
                        trailing: const Icon(Icons.add),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderOnForeground: true,
                      elevation: 0,
                      child: ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('Fudrat Technologies'),
                        subtitle:
                            const Text('Innovation Driver | Cybersecurity.'),
                        trailing: const Icon(Icons.add),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderOnForeground: true,
                      elevation: 0,
                      child: ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('Fudrat Technologies'),
                        subtitle:
                            const Text('Innovation Driver | Cybersecurity.'),
                        trailing: const Icon(Icons.add),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Card(
                  child: ListTile(
                      onTap: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      leading: const Icon(Icons.person),
                      title: like
                          ? const Text('You Liked this')
                          : const Text('Click to Like'),
                      subtitle: const Text('Trump will win the 2024 election'),
                      trailing: IconButton(
                        icon: liked
                            ? (const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ))
                            : (const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.green,
                              )),
                        onPressed: () {
                          setState(
                            () {
                              liked = !liked;
                              like = !like;
                            },
                          );
                        },
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
