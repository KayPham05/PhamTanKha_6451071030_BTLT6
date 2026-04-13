import 'package:flutter/material.dart';
import '../utils/news_article.dart';
import 'article_detail_screen.dart';

class CategoryTabView extends StatelessWidget {
  final String category;
  final String tag;

  const CategoryTabView({super.key, required this.category, required this.tag});

  List<NewsArticle> _getArticles() {
    return List.generate(
      10,
      (index) => NewsArticle(
        '$tag $category bài số ${index + 1}',
        category,
        tag,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final articles = _getArticles();

    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final a = articles[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(a.title),
            subtitle: Text('Category: ${a.category} | $tag'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ArticleDetailScreen(article: a)),
              );
            },
          ),
        );
      },
    );
  }
}
