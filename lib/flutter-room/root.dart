import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flexify/flexify.dart';
import 'package:newapp/submitform/inputform.dart';

import '../data/compstwo/screens/listings.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Listings(),
    );
  }
}
