import 'package:flutter/material.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/splach.dart';
import 'package:islami/thems.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        Splash.routeName: (context) => const Splash(),
        Home.routeName: (context) => Home(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
