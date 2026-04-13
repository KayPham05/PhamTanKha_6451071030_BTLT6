import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final orderId = args?['id'] ?? 'N/A';
    final customerName = args?['name'] ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(title: const Text('Order Details')),
      body: Center(
        child: Text(
          'Order #$orderId for $customerName',
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
