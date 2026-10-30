import 'package:flutter/material.dart';

import 'routes.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
      ),
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const MyHomePage(title: 'Home Page'),
        Routes.second: (context) => const SecondPage(),
      },
    );
  }
}
