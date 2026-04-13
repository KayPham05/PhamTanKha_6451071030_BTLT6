import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'), // Tiêu đề theo yêu cầu
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Chuyển sang About bằng Named Route và pushNamed để giữ HomeScreen trên stack
            Navigator.pushNamed(context, '/about');
          },
          child: const Text('Go to About'),
        ),
      ),
    );
  }
}
