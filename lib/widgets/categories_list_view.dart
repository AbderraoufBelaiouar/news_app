import 'package:flutter/material.dart';
import 'package:news_app/helper/assets.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      imagePath: Assets.assetsBusiness,
      name: 'Business',
    ),
    CategoryModel(
      imagePath: Assets.assetsEntertaiment,
      name: 'Entertainment',
    ),
    CategoryModel(
      imagePath: Assets.assetsHealth,
      name: 'Health',
    ),
    CategoryModel(
      imagePath: Assets.assetsScience,
      name: 'Science',
    ),
    CategoryModel(
      imagePath: Assets.assetsTechnology,
      name: 'Technology',
    ),
    CategoryModel(
      imagePath: Assets.assetsSport,
      name: 'Sports',
    ),
    CategoryModel(
      imagePath: Assets.assetsGeneral,
      name: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: CategoryItem(
            categoryModel: categories[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryView(categoryName: categories[index].name),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
