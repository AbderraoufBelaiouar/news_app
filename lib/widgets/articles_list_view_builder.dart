import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/articles_list_view.dart';

class ArticlesListViewBuilder extends StatefulWidget {
  const ArticlesListViewBuilder({super.key,this.category='general'});
final String category;
  @override
  State<ArticlesListViewBuilder> createState() =>
      _ArticlesListViewBuilderState();
}

class _ArticlesListViewBuilderState extends State<ArticlesListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).fetchNews(widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(
              child: Text('Error fetching data'),
            );
          } else if (snapshot.hasData) {
            return ArticlesListView(articles: snapshot.data ?? []);
          } else {
            return SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
