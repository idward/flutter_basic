import 'package:flutter/material.dart';
import 'category_item.dart';
import './data/dummy_category.dart';
import 'models/category.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((Category category) {
          return CategoryItem(category: category);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2));
  }
}
