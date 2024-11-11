import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/ralf/Home.dart';
import 'package:newapp/submitform/inputForm.dart';
import 'package:newapp/submitform/inputdetails.dart';
import 'package:newapp/ralf/variables/overview.dart';
import 'flutter-room/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexify(
      designHeight: 393,
      designWidth: 851,
      app: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Trap',
        ),
        themeMode: ThemeMode.system,
        home: const Home(),
      ),
    );
  }
}
