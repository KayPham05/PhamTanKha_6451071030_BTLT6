import 'package:flutter/material.dart';
import '../view/home_screen.dart';
import '../view/page1_screen.dart';
import '../view/page2_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 21',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/page1': (context) => const Page1Screen(),
        '/page2': (context) => const Page2Screen(),
      },
    );
  }
}
