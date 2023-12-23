import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  String apiKey = '52085c880cb64e8993ed3388fa02aceb';
  String baseUrl = 'https://newsapi.org/v2/top-headlines';
  String country = 'us';
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(baseUrl, queryParameters: {
        'apiKey': apiKey,
        'country': country,
        'category': category,
      });
      dynamic jsonData = response.data;
      // which data i need from JsonData --->
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleModels = List.generate(
          articles.length, (index) => ArticleModel.fromJson(articles[index]));
      return articleModels;
    } catch (e) {
      return [];
    }
  }
}
