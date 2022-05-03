import 'package:flutter/material.dart';
import 'package:static_analysis/screens/home_screen2.dart';
import 'package:static_analysis/screens/stream_screen.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "static_analysis",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamScreen(),
    );
  }
}
