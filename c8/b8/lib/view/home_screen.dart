import 'package:flutter/material.dart';
import 'confirm_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ConfirmScreen()),
            );

            if (context.mounted) {
              final message = result == true ? 'Item Deleted' : 'Action Cancelled';
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            }
          },
          child: const Text('Delete Item'),
        ),
      ),
    );
  }
}
