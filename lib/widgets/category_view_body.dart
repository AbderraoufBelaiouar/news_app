import 'package:flutter/material.dart';
import 'package:news_app/widgets/articles_list_view_builder.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.categoryName});
  final  String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: CustomScrollView(
        slivers: [ArticlesListViewBuilder(category: categoryName,)],
      ),
    );
  }
}
