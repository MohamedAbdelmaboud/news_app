import 'package:flutter/material.dart';
import 'package:news/widgets/categories_list_view.dart';
import 'package:news/widgets/custom_text.dart';
import 'package:news/widgets/news_list_viewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                'News',
                color: Colors.black,
              ),
              CustomText(
                'Cloud',
                color: Colors.blue,
              ),
            ],
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                CategoriesListView(),
                const SizedBox(
                  height: 32,
                ),
                const NewsListViewBuilder(
                  categoryName: 'sports',
                )
              ],
            ),
          ),
        ));
  }
}
