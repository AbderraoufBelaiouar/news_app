
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/article_item.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({super.key,required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ArticleItem(
                  articleModel: articles[index],
                ),
              ),
            ),
          );
      
  }
}
