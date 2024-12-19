import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> fetchNews(String category) async {
    String baseUrl = 'https://newsapi.org/v2';
    String ApiKey = '3c88955c487e4d9db668f011dd85e737';
    try {
      var result = await dio.get(
          '$baseUrl/top-headlines?country=us&apiKey=$ApiKey&category=$category');
      Map<String, dynamic> data = result.data;
      List<dynamic> articles = data['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        articleList.add(ArticleModel.fromJson(article));
      }
      return articleList;
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
