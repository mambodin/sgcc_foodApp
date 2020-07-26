import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'categories_meals_screen.dart';
import 'meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SGCC Food App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange[600],
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                headline3: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(color: Colors.black, fontSize: 15),
              ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: CategoriesScreen(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen()
        });
  }
}
