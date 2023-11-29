import 'package:flutter/material.dart';
import 'package:untitled2/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: HomeScreen(),
    );
  }
}
