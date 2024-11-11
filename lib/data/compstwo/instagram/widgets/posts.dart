import 'package:flutter/material.dart';

import '../../variables/variables.dart';
// import 'package:newapp/compstwo/variables/variables.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});
  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: story.length,
      itemBuilder: (BuildContext context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                debugPrint('hello');
              },
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('./assets/${story[index]}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text('fudrattechnologies'),
              subtitle: const Text('Sponsored.'),
              trailing: IconButton(
                onPressed: () {
                  debugPrint('');
                },
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./assets/${story[index]}'),
                    fit: BoxFit.cover),
              ),
              child: const Text(''),
            ),
            ListTile(
              onTap: () {},
              leading: const Wrap(
                spacing: 10.0,
                children: [
                  Icon(Icons.favorite_outline, size: 35.0),
                  Icon(Icons.chat_bubble_outline, size: 35.0),
                  Icon(Icons.send, size: 35.0),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border, size: 35.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2000likes',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text('Hey guys kindly subscribe to my channel'),
                ],
              ),
            ),
            const SizedBox(height: 20.0)
          ],
        );
      },
    );
  }
}
