import 'package:flutter/material.dart';
import '../utils/article.dart';
import 'article_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Article> articles = const [
    Article('Flutter 3.19 Released', 'Google announced the release of Flutter 3.19...'),
    Article('Dart 3.3 is here', 'Dart 3.3 brings new features like Extension Types...'),
    Article('AI in Flutter', 'Integrating AI models into Flutter apps is easier than ever...'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Articles')),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final a = articles[index];
          return Card(
            child: ListTile(
              title: Text(a.title),
              subtitle: Text(a.content, maxLines: 1, overflow: TextOverflow.ellipsis),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ArticleScreen(article: a)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
