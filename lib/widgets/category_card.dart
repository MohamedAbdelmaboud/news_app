import 'package:flutter/material.dart';
import 'package:news/screens/category_view.dart';
import 'package:news/widgets/custom_text.dart';
import 'package:news/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CategoryView(categoryName: categoryModel.categoryName),
              ));
        },
        child: Container(
          alignment: Alignment.center,
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(categoryModel.imagePath),
                  fit: BoxFit.fill)),
          child: CustomText(
            categoryModel.categoryName,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
