// ignore_for_file: unused_label, unnecessary_string_interpolations, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:newapp/compstwo/variables/variables.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});
  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  // List<String> story = [
  //   'Wynk Rises.png',
  //   'Wynk Ride.png',
  //   'Wynk Lifestyle 1.png',
  //   'Wynk Payments.png',
  //   'logo.png',
  //   'kali.png',
  //   'kali2.jpg'
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              stories.length,
              (index) {
                growable:
                true;
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Container(
                        width: 68.0,
                        height: 68.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                  color: Color.fromARGB(255, 234, 234, 234),
                                ),
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                // image: AssetImage(('${(stories[index]['images'])}')),
                                image: AssetImage('./assets/kali2.jpg'),
                                // image: AssetImage('./assets' + stories[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('${(names[index].trim())}'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
