import 'package:daily_quotes/Features/Home/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF00162A)),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
