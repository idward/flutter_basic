import 'package:flutter/material.dart';

import 'models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({this.category});

  void _navigateToCategoryMeals(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals', arguments: {
      'categoryId': category.id,
      'categoryTitle': category.title
    });
    // Navigator.of(ctx).push(MaterialPageRoute(
    //   builder: (_) {
    //     return CategoryMealsScreen(
    //       categoryId: category.id,
    //       categoryTitle: category.title,
    //     );
    //   },
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToCategoryMeals(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.7), category.color]),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
