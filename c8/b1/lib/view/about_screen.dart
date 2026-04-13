import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: const Center(
        child: Text(
          'About our company', // Nội dung hiển thị đúng theo yêu cầu
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
