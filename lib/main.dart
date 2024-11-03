import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/components/Loader.dart';
import 'package:newapp/components/SplashScreen.dart';
import 'package:newapp/formproject/submitform.dart';
import 'package:newapp/pages/HomePage.dart';
import 'package:newapp/firstform/DetailsForm.dart';
import 'package:newapp/ralf/Home.dart';
import 'package:newapp/submitform/inputForm.dart';
import 'package:newapp/submitform/inputdetails.dart';

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
        ),
        themeMode: ThemeMode.system,
        home: const Home(),
      ),
    );
  }
}
