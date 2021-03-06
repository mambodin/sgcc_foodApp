import 'package:flutter/material.dart';

import './category_item.dart';

import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SGCC FOODIE!'),
        ),
        body: GridView(
          children: DUMMY_CATEGORIES
              .map((cat) => CategoryItem(cat.id, cat.title, cat.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
