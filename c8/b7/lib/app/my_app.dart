import 'package:flutter/material.dart';
import '../view/home_screen.dart';
import '../view/order_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 22',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/order': (context) => const OrderScreen(),
      },
    );
  }
}
