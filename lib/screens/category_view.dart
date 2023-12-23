import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_viewBuilder.dart';

import '../widgets/custom_text.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: CustomText(
            categoryName,
            color: Colors.blue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                NewsListViewBuilder(
                  categoryName: categoryName,
                ),
              ],
            ),
          ),
        ));
  }
}
