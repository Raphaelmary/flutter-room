import 'package:flutter/material.dart';

import '../classes/blog_item.dart';

class BlogItem extends StatefulWidget {
  const BlogItem({
    super.key,
    required this.bloginfo,
  });
  final Item bloginfo;

  @override
  State<BlogItem> createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bloginfo.title),
      ),
    );
  }
}
