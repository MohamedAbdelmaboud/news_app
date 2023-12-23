class ArticleModel {
  final String? imageUrl;
  final String title;
  final String? subTitle;
  final String url;
  ArticleModel(
      {required this.url,
      required this.imageUrl,
      required this.title,
      required this.subTitle});
// factory ctor --> return object from ArticleModel
  factory ArticleModel.fromJson(dynamic json) {
    return ArticleModel(
        url: json['url'],
        imageUrl: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
