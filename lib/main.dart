import 'package:flutter/material.dart';
import 'package:static_analysis/home_screen2.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "static_analysis",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
