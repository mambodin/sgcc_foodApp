import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Category Title'),
        ),
        body: Center(child: Text('MEALS SCREEN!')));
  }
}
