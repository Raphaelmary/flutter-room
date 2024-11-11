import 'package:flutter/material.dart';
import 'package:newapp/data/compstwo/instagram/widgets/navbar.dart';
import 'package:newapp/data/compstwo/instagram/widgets/posts.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.camera_alt_outlined, size: 40.0),
        titleSpacing: 3.0,
        title: const Text('Instagram',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
        toolbarHeight: 80.0,
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_rounded, size: 35)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined, size: 35))
        ],
      ),

      bottomNavigationBar: const NavBar(),
      body: const Posts(),
      // body: const Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Stories(),
      //     Divider(
      //       color: Color.fromARGB(30, 158, 158, 158),
      //       height: 10.0,
      //       thickness: 1.0,
      //       indent: 10,
      //       endIndent: 10,
      //     ),
      //     // Posts(),
      //   ],
      // ),
    );
  }
}
