import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_view_body.dart';
import 'package:news_app/widgets/custom_app_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: CustomAppBar(
              title:categoryName ,
            )),
        body: CategoryViewBody(categoryName:categoryName ,),
      ),
    );
  }
}
