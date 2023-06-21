import 'package:e_market/config/theme.dart';
import 'package:e_market/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-market',
      theme: theme(),
      home: const HomeScreen(),
    );
  }
}
