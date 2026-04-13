import 'package:flutter/material.dart';
import '../utils/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product: ${product.name}', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text('Price: \$${product.price}', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
