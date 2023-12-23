import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/';
class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        return NewsTile(article: articles[index]);
      },
    );
  }
}
