import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      {'name': 'Red', 'color': Colors.red},
      {'name': 'Blue', 'color': Colors.blue},
      {'name': 'Green', 'color': Colors.green},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Pick Color')),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final c = colors[index];
          return ListTile(
            leading: Icon(Icons.circle, color: c['color'] as Color),
            title: Text(c['name'] as String),
            onTap: () {
              Navigator.pop(context, c['color']);
            },
          );
        },
      ),
    );
  }
}
