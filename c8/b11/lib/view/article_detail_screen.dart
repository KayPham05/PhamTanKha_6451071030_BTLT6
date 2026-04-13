import 'package:flutter/material.dart';
import '../utils/news_article.dart';

class ArticleDetailScreen extends StatelessWidget {
  final NewsArticle article;

  const ArticleDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chi tiết tin tức')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('Chuyên mục: ${article.category}'),
            const SizedBox(height: 10),
            Text('Nhãn: ${article.tag}'),
            const SizedBox(height: 20),
            const Text(
              'Nội dung tin tức giả lập. Đây là phần mô tả chi tiết của bài viết được chọn từ danh sách. Flutter giúp xây dựng giao diện nhanh chóng và mượt mà.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
