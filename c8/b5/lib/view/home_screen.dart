import 'package:flutter/material.dart';
import 'pick_color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _currentColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: _currentColor,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final selectedColor = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PickColorScreen()),
                );
                if (selectedColor != null && selectedColor is Color) {
                  setState(() {
                    _currentColor = selectedColor;
                  });
                }
              },
              child: const Text('Pick Color'),
            ),
          ],
        ),
      ),
    );
  }
}
