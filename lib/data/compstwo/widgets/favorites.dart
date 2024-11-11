import 'package:flutter/material.dart';
import 'package:newapp/data/compstwo/variables/variables.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

bool clicked = false;

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        color: Color.fromARGB(255, 11, 1, 47),
      ),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: favorites.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('${(index)} clicked');
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Text(
                favorites[index],
                // 'Favorites',
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
