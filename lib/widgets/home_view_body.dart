
import 'package:flutter/material.dart';
import 'package:news_app/widgets/articles_list_view_builder.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/logo.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Logo(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            ArticlesListViewBuilder()
          ],
        ));
  }
}
