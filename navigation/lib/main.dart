import 'package:flutter/material.dart';
import 'package:navigation/pages/first_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/second_page.dart';
import 'package:navigation/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        //'/secondpage' : (context) => SecondPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage(),

      },
    );
  }
}
