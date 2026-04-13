import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function(ThemeMode) onThemeChanged;

  const HomeScreen({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final selectedTheme = await Navigator.pushNamed(context, '/settings');
            if (selectedTheme != null && selectedTheme is ThemeMode) {
              onThemeChanged(selectedTheme);
            }
          },
          child: const Text('Change Theme'),
        ),
      ),
    );
  }
}
