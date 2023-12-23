import 'package:flutter/material.dart';
import 'package:news/widgets/category_card.dart';
import 'package:news/constants/assets.dart';
import 'package:news/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> models = [
    CategoryModel(imagePath: Assets.imagesBusiness, categoryName: 'Business'),
    CategoryModel(
        imagePath: Assets.imagesEntertainment, categoryName: 'Entertainment'),
    CategoryModel(imagePath: Assets.imagesHealth, categoryName: 'Health'),
    CategoryModel(imagePath: Assets.imagesScience, categoryName: 'Science'),
    CategoryModel(imagePath: Assets.imagesSports, categoryName: 'Sports'),
    CategoryModel(
        imagePath: Assets.imagesTechnology, categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        // item by item
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: models.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(categoryModel: models[index]);
        },
      ),
    );
  }
}
