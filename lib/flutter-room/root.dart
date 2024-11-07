import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flexify/flexify.dart';
import 'package:newapp/components/Loader.dart';
import 'package:newapp/components/SplashScreen.dart';
import 'package:newapp/compsone/pages/BlogPage.dart';
import 'package:newapp/compsone/pages/HomePage.dart';
import 'package:newapp/compsone/pages/RegistrationPage.dart';
import 'package:newapp/compstwo/pages/home.dart';
import 'package:newapp/compstwo/screens/listings.dart';
import 'package:newapp/submitform/inputform.dart';
import 'package:newapp/compstwo/screens/root_page.dart';

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
