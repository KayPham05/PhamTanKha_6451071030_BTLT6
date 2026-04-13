import 'package:flutter/material.dart';
import '../view/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bai 5',
      home: HomeScreen(),
    );
  }
}
