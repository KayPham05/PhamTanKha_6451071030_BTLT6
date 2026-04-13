import 'package:flutter/material.dart';
import '../utils/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Product> products = const [
    Product('Laptop', 1200.0),
    Product('Smartphone', 800.0),
    Product('Headphones', 150.0),
    Product('Mouse', 50.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            child: ListTile(
              title: Text(p.name),
              subtitle: Text('\$${p.price}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DetailScreen(product: p)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
