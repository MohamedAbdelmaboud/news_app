import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news/widgets/custom_text.dart';
import 'package:news/widgets/web_view.dart';
import 'package:news/constants/assets.dart';
import 'package:news/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CustomWebWidget(url: articleModel.url),
                    ));
              },
              child: CachedNetworkImage(
                imageUrl: articleModel.imageUrl ?? 'https://www.pizzahut.ae/assets/imgs/default/default.png',
                placeholder: (context, url) => const SpinKitSpinningLines(
                  color: Colors.blue,
                  size: 50,
                ),
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomText(
            articleModel.title,
            fontSize: 18,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            articleModel.subTitle ?? '',
            color: Colors.grey,
            fontSize: 14,
          )
        ],
      ),
    );
  }
}
