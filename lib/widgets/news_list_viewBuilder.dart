import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news/widgets/custom_text.dart';
import 'package:news/widgets/news_list_view.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    final spinkit = Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.7,
      child: const SpinKitWaveSpinner(
        color: Colors.blue,
        waveColor: Colors.blue,
        size: 75.0,
      ),
    );
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const CustomText("There is an error"); //isEmpty --> No data
        } else {
          return spinkit;
        }
      },
    );
  }
}
