import 'package:flutter/material.dart';
import 'category_tab_view.dart';
import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  final String category;

  const HomeScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tin mới'),
              Tab(text: 'Tin hot'),
            ],
          ),
        ),
        drawer: const MainDrawer(),
        body: TabBarView(
          children: [
            CategoryTabView(category: category, tag: 'Tin mới'),
            CategoryTabView(category: category, tag: 'Tin hot'),
          ],
        ),
      ),
    );
  }
}
